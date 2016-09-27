
var fs = require('fs'),
	mysql      = require('mysql'),
	connection = mysql.createConnection({
		host     : 'localhost',
		port: '8889',
		database: 'sales',
		user     : 'root',
		password : 'root'
	});

connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
  console.log('connected as id ' + connection.threadId);
});

	// Code to generate the data and insert into database.
	var t = '',
		qry = '',
		sum = 0,
		products,
		months,
		state;

	months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
	products = ['Tea', 'Espresso', 'Latte', 'Green Tea'];
	state = ['New York', 'Washington', 'Texas', 'Ohio', 'New Mexico'];
	year = [2013, 2014, 2015];
	yearVal = [2000, 3000, 4000, 5000, 7000, 6000];



	function randomNum (min, max) {
		return Math.round(min + (Math.random() * (max - min)));
	}

	for (y = 0; y < year.length; y++) {
		for (s = 0; s < state.length; s++) {
			for (p = 0; p < products.length; p++) {
				qry +=  ' (';
				sum = 0;
			  	for (m = 0; m < months.length; m++) {
			  		val = randomNum((yearVal[y] * 0.5) + 8000, yearVal[y] + 15000);
			  		sum += val;
					qry +=  val + ', ';
					t +=  val + '\t';
			  	}
				qry +=  sum + ', ' + year[y] + ', "' + products[p] + '", "' + state[s] + '" ' + '),\n';
			  	// t += '\n';
			  	t += sum + '\t' + year[y] + '\t' + products[p] + '\t' + state[s] + '\n';
			}
		}
	}

	// qry = "INSERT INTO `monthly_sales` (`jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`, `sum`, `year`, `product`, `state`) VALUES " + qry;
	// qry = qry.replace(/\),\n$/, ')');
	// console.log(qry);
	// // Clear the table
	// connection.query('TRUNCATE TABLE `monthly_sales`');
	// // Insert new data in the table
	// connection.query(qry);


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
