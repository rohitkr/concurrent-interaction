
var fs = require('fs'),
	mysql      = require('mysql'),
	connection = mysql.createConnection({
		host     : 'localhost',
		port: '8889',
		database: 'sales',
		user     : 'root',
		password : 'root'
	});

// connection.connect(function(err) {
//   if (err) {
//     console.error('error connecting: ' + err.stack);
//     return;
//   }
//   console.log('connected as id ' + connection.threadId);
// });

	// Code to generate the data and insert into database.
	var t = '',
		qry = '',
		sum = 0,
		products,
		months,
		state,
		dataArr = [],
		proVal,
		stateVal;

	months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
	products = ['Tea', 'Espresso', 'Latte', 'Green Tea'];
	state = ['New York', 'Washington', 'Texas', 'Ohio', 'New Mexico'];
	year = [2013, 2014, 2015];
	yearVal = [2000, 3000, 4000, 5000, 7000, 6000];
	proVal = {
		'Tea': randomNum(500, 4000),
		'Espresso': randomNum(10000, 20000),
		'Latte': randomNum(5000, 10000),
		'Green Tea': randomNum(10000, 15000)
	};
	stateVal = {
		'New York': randomNum(2000, 5000),
		'Washington': randomNum(7000, 20000),
		'Texas': randomNum(500, 2000),
		'Ohio': randomNum(100, 500),
		'New Mexico': randomNum(2000, 8000)
	};



	function randomNum (min, max) {
		return Math.round(min + (Math.random() * (max - min)));
	}

	for (y = 0; y < year.length; y++) {
		for (s = 0; s < state.length; s++) {
			for (p = 0; p < products.length; p++) {
				sum = 0;
			  	for (m = 0; m < months.length; m++) {
			  		val = randomNum((yearVal[y]) + proVal[products[p]] + stateVal[state[s]] + 8000, yearVal[y] + stateVal[state[s]] + proVal[products[p]] + 15000);
			  		sum += val;
					qry +=  ' ( "' + year[y] + '", "' + products[p] + '", "' + state[s] + '", "' + months[m] + '", ' + val + '),\n';
					t +=  val + '\t';
					dataArr.push({
						year: year[y],
						product: products[p],
						state: state[s],
						month: months[m],
						sale: val
					});
			  	}
				// qry +=  sum + ', ' + year[y] + ', "' + products[p] + '", "' + state[s] + '", ' + val + '),\n';
			  	// t += '\n';
			  	t += sum + '\t' + year[y] + '\t' + products[p] + '\t' + state[s] + '\n';
			}
		}
	}

	// qry = "INSERT INTO `monthly_sales` (`year`, `product`, `state`, `month`, `sale`) VALUES " + qry;
	// qry = qry.replace(/\),\n$/, ')');
	// console.log(qry);
	// // Clear the table
	// connection.query('TRUNCATE TABLE `monthly_sales`');
	// // Insert new data in the table
	// connection.query(qry);

	fs.writeFileSync('data.js', 'yearRevenue = ' + JSON.stringify(dataArr, null, 4) + ';\n');


	// connection.query("SELECT * FROM `monthly_sales` WHERE 1", function(err, rows, fields) {
	//   	if (err) throw err;
	// 	for (var j in rows) {
	// 		// ds.data.push({value: rows[0][j]});
	// 		// console.log('Result: \n', JSON.stringify(rows, null, 4));
	// 		fs.writeFileSync('data.js', 'yearRevenue = ' + JSON.stringify(rows, null, 4) + '\n');
	// 		endConnection();
	// 	}
	// });

fn = [
	"",
	"function productRevenue () {",
	"    var i,",
	"        l,",
	"        data;",
	"        productObj = {},",
	"        chartData = {chart:{caption: 'Product Revenue', theme: 'fint'}, data:[]};",
	"",
	"    for (i = 0, l = yearRevenue.length; i < l; i++) {",
	"        data = yearRevenue[i];",
	"        !productObj[data.product] && (productObj[data.product] = 0);",
	"        productObj[data.product] += data.sale;",
	"    }",
	"",
	"    for (i in productObj) {",
	"        chartData.data.push({label: i, value: productObj[i]});",
	"    }",
	"    return chartData;",
	"}",
	"",
	"function productMonthlySale () {",
	"    var productObj = {},",
	"        chartData = {chart:{caption: 'Yearly Sale', theme: 'fint'}, categories: [{category: []}], dataset:[]},",
	"        prodDatasetMap = {},",
	"        c = 0,",
	"        i,",
	"        l,",
	"        data;",
	"",
	"    for (i = 0, l = yearRevenue.length; i < l; i++) {",
	"        data = yearRevenue[i];",
	"        if (!productObj[data.year]) {",
	"            chartData.categories[0].category.push({label: data.year});",
	"            (productObj[data.year] = {});",
	"        }",
	"        if (!productObj[data.year][data.product]) {",
	"            if (!prodDatasetMap[data.product]) {",
	"                prodDatasetMap[data.product] = ++c;",
	"            }",
	"            productObj[data.year][data.product] = {dataset: prodDatasetMap[data.product], value: 0};",
	"        }",
	"        productObj[data.year][data.product].value += data.sale;",
	"    }",
	"",
	"    for (i in productObj) {",
	"        for (j in productObj[i]) {",
	"            if (!chartData.dataset[productObj[i][j].dataset - 1]) {",
	"                chartData.dataset.push({seriesName: j, data: []});",
	"            }",
	"            dataset = chartData.dataset[productObj[i][j].dataset - 1];",
	"            dataset.data.push({value: productObj[i][j].value});",
	"        }",
	"    }",
	"    return chartData;",
	"}",
	"",
	"function salesByState () {",
	"    var productObj = {},",
	"        chartData = {chart:{caption: 'Sales by State', theme: 'fint'}, categories: [{category: []}], dataset:[]},",
	"        prodDatasetMap = {},",
	"        c = 0,",
	"        i,",
	"        l,",
	"        data;",
	"",
	"    for (i = 0, l = yearRevenue.length; i < l; i++) {",
	"        data = yearRevenue[i];",
	"        if (!productObj[data.state]) {",
	"            chartData.categories[0].category.push({label: data.state});",
	"            (productObj[data.state] = {});",
	"        }",
	"        if (!productObj[data.state][data.product]) {",
	"            if (!prodDatasetMap[data.product]) {",
	"                prodDatasetMap[data.product] = ++c;",
	"            }",
	"            productObj[data.state][data.product] = {dataset: prodDatasetMap[data.product], value: 0};",
	"        }",
	"        productObj[data.state][data.product].value += data.sale;",
	"    }",
	"",
	"",
	"    for (i in productObj) {",
	"        for (j in productObj[i]) {",
	"            if (!chartData.dataset[productObj[i][j].dataset - 1]) {",
	"                chartData.dataset.push({seriesName: j, data: []});",
	"            }",
	"            dataset = chartData.dataset[productObj[i][j].dataset - 1];",
	"            dataset.data.push({value: productObj[i][j].value});",
	"        }",
	"    }",
	"    return chartData;",
	"}",
	"",
	"function salesByMonths (year) {",
	"    var productObj = {},",
	"        chartData = {chart:{caption: 'Monthly product Revenue for year ' + year, theme: 'fint'}, categories: [{category: []}], dataset:[]},",
	"        prodDatasetMap = {},",
	"        c = 0,",
	"        i,",
	"        l,",
	"        data;",
	"",
	"    for (i = 0, l = yearRevenue.length; i < l; i++) {",
	"        data = yearRevenue[i];",
	"        if (data.year = year) {",
	"            if (!productObj[data.month]) {",
	"                chartData.categories[0].category.push({label: data.month});",
	"                (productObj[data.month] = {});",
	"            }",
	"            if (!productObj[data.month][data.product]) {",
	"                if (!prodDatasetMap[data.product]) {",
	"                    prodDatasetMap[data.product] = ++c;",
	"                }",
	"                productObj[data.month][data.product] = {dataset: prodDatasetMap[data.product], value: 0};",
	"            }",
	"            productObj[data.month][data.product].value += data.sale;",
	"        }",
	"    }",
	"",
	"    for (i in productObj) {",
	"        for (j in productObj[i]) {",
	"            if (!chartData.dataset[productObj[i][j].dataset - 1]) {",
	"                chartData.dataset.push({seriesName: j, data: []});",
	"            }",
	"            dataset = chartData.dataset[productObj[i][j].dataset - 1];",
	"            dataset.data.push({value: productObj[i][j].value});",
	"        }",
	"    }",
	"    return chartData;",
	"}",
	""
];

fs.appendFileSync('data.js', '\n' + fn.join('\n'));

return;

jsonData = {chart:{}, "categories": [{"category": []}], dataset:[]};
for (var i in months) {
  	jsonData.categories[0].category.push({label: months[i]});	
}
function queryRevenue (i) {
	connection.query("SELECT sum(`Jan`) as `Jan`, sum(`Feb`) as `Feb`, sum(`Mar`) as `Mar`, sum(`Apr`) as `Apr`, sum(`May`) as `May`, sum(`Jun`) as `Jun`, sum(`Jul`) as `Jul`, sum(`Aug`) as `Aug`, sum(`Sep`) as `Sep`, sum(`Oct`) as `Oct`, sum(`Nov`) as `Nov`, sum(`Dec`) as `Dec`  FROM `monthly_sales` WHERE year=" + year[i], function(err, rows, fields) {
	  	if (err) throw err;
	  	// jsonData.categories[0].category.push({label: year[i]});
		ds = {"seriesname": year[i] + '', data: []};

		// console.log(JSON.stringify(rows[0], null, 4));
		for (var j in rows[0]) {
			ds.data.push({value: rows[0][j]});
			// console.log('Result: ', j);
		}
		jsonData.dataset.push(ds);
		i++;
	  	if (i == year.length) {
			console.log("called...");
			fs.writeFileSync('data.js', 'yearRevenue = ' + JSON.stringify(jsonData, null, 4) + '\n');
			console.log(JSON.stringify(jsonData, null, 4));
			endConnection();
			return;
	  	}
	  	queryRevenue(i);
	});
	console.log(year[i]);
}
// queryRevenue(0);

function queryState (i) {
	val = products[i];
	st = {};
	connection.query("SELECT state,sum(`sum`) as sum from monthly_sales  where product = '" + val + "' group by state", function(err, rows, fields) {
	  	if (err) throw err;
		ds = {"seriesname": val, data: []};
		for (var j in rows) {
			console.log('\n\n', val, rows[j].state);
			!st[rows[j].state] && (st[rows[j].state] = 0);
			st[rows[j].state] += rows[j].sum;
			// ds.data.push({value: rows[0][j]});
			// console.log('Result: ', rows[0][j]);
		}
		jsonData.dataset.push(ds);
		i++;
	  	if (i == products.length) {
			// console.log("called...");
			console.log(JSON.stringify(st, null, 4));
			// console.log(JSON.stringify(jsonData, null, 4));
			// fs.appendFileSync('data.js', '\n\nstateSale = ' + JSON.stringify(jsonData, null, 4));
			endConnection();
			return;
	  	}
	  	queryState(i);
	});
	// console.log(year[i]);
}
queryState(0);




function endConnection () {
	connection.end(function(err) {
	  // The connection is terminated now
	});
}
