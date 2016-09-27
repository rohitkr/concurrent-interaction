-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Sep 26, 2016 at 03:54 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `monthly_sales`
--

CREATE TABLE `monthly_sales` (
  `product` text NOT NULL,
  `year` int(11) NOT NULL,
  `state` text NOT NULL,
  `month` text NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthly_sales`
--

INSERT INTO `monthly_sales` (`product`, `year`, `state`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`, `sum`) VALUES
('Tea', 2010, 'New York', 15730, 16869, 15998, 16684, 14704, 16225, 13635, 9204, 14278, 16899, 10232, 9512, 169970),
('Espresso', 2010, 'New York', 14817, 16427, 9437, 14479, 9716, 15741, 14875, 10719, 15669, 12011, 15421, 14893, 164205),
('Latte', 2010, 'New York', 15938, 14604, 16475, 14093, 14141, 12983, 13292, 10754, 10001, 11687, 9389, 10696, 154053),
('Green Tea', 2010, 'New York', 14701, 9635, 12713, 11708, 16081, 13919, 11711, 9645, 10087, 14832, 9056, 14181, 148269),
('Darjeeling Tea', 2010, 'New York', 9042, 11282, 13489, 15173, 15897, 9257, 9545, 11744, 16812, 14712, 13763, 10091, 150807),
('Tea', 2010, 'Washington', 15628, 10685, 15027, 10450, 16831, 12903, 12908, 9540, 9791, 10249, 9739, 16170, 149921),
('Espresso', 2010, 'Washington', 9590, 14974, 14667, 11781, 16672, 12350, 15452, 9149, 14237, 14483, 9232, 14806, 157393),
('Latte', 2010, 'Washington', 11603, 16019, 10527, 15807, 13314, 16704, 13357, 15748, 9057, 15270, 10079, 15844, 163329),
('Green Tea', 2010, 'Washington', 10840, 10608, 11857, 13755, 9637, 15953, 13255, 15437, 15485, 16224, 11026, 15109, 159186),
('Darjeeling Tea', 2010, 'Washington', 11620, 12723, 15190, 12103, 13012, 15700, 9894, 15505, 13180, 10633, 13931, 9477, 152968),
('Tea', 2010, 'Texas', 12793, 16762, 13821, 14269, 13756, 16030, 12729, 15360, 16519, 11703, 16177, 10874, 170793),
('Espresso', 2010, 'Texas', 12157, 15466, 16052, 16392, 10144, 13568, 14340, 13147, 15512, 14831, 16930, 16106, 174645),
('Latte', 2010, 'Texas', 9561, 9824, 15494, 10896, 15381, 15583, 16341, 11688, 13992, 14234, 15148, 16269, 164411),
('Green Tea', 2010, 'Texas', 9370, 14471, 10842, 13648, 15135, 12689, 12436, 9721, 13801, 14833, 15361, 13564, 155871),
('Darjeeling Tea', 2010, 'Texas', 9537, 10538, 13056, 10541, 16238, 13874, 13223, 12814, 16314, 10124, 10787, 12509, 149555),
('Tea', 2010, 'Ohio', 11435, 15687, 11126, 10801, 15746, 13531, 13945, 13069, 12402, 15851, 13444, 15112, 162149),
('Espresso', 2010, 'Ohio', 12110, 16568, 13120, 12068, 10805, 12919, 12893, 15221, 15790, 11316, 13879, 13603, 160292),
('Latte', 2010, 'Ohio', 15388, 12978, 11488, 9186, 13418, 12508, 11855, 10394, 12639, 16571, 12081, 12443, 150949),
('Green Tea', 2010, 'Ohio', 11576, 13832, 14559, 16731, 9716, 10531, 10180, 11926, 12170, 14560, 15196, 12462, 153439),
('Darjeeling Tea', 2010, 'Ohio', 10375, 15489, 15960, 15144, 11333, 15348, 13511, 11409, 13054, 11134, 12604, 11621, 156982),
('Tea', 2010, 'New Mexico', 9167, 12269, 11827, 11380, 12970, 14563, 12731, 15048, 12207, 10028, 15753, 11777, 149720),
('Espresso', 2010, 'New Mexico', 12466, 11717, 10598, 16342, 15086, 16792, 13530, 11025, 13675, 12765, 16808, 14608, 165412),
('Latte', 2010, 'New Mexico', 12950, 14245, 10331, 10722, 9825, 13102, 9526, 9222, 10674, 16975, 15436, 15179, 148187),
('Green Tea', 2010, 'New Mexico', 12723, 16412, 15270, 14703, 13327, 11649, 9602, 11989, 15937, 9366, 10600, 16792, 158370),
('Darjeeling Tea', 2010, 'New Mexico', 12883, 13502, 10453, 16939, 13479, 16828, 14603, 16676, 12132, 9352, 14520, 12695, 164062),
('Tea', 2011, 'New York', 10490, 12854, 11683, 10226, 17450, 10379, 11614, 17852, 15114, 10836, 15744, 16651, 160893),
('Espresso', 2011, 'New York', 17011, 17087, 13575, 11063, 14656, 16711, 17492, 15302, 12789, 13002, 11635, 13933, 174256),
('Latte', 2011, 'New York', 16465, 12681, 13105, 11165, 15362, 15284, 11163, 16240, 17079, 13822, 9823, 13323, 165512),
('Green Tea', 2011, 'New York', 12673, 16916, 14470, 12085, 12061, 17116, 17883, 12071, 13620, 17055, 15322, 12057, 173329),
('Darjeeling Tea', 2011, 'New York', 15355, 9827, 16250, 17119, 14227, 9733, 10803, 15437, 12130, 10797, 16364, 10112, 158154),
('Tea', 2011, 'Washington', 11008, 12289, 16482, 14846, 17187, 16195, 10517, 12428, 12328, 14894, 11590, 16027, 165791),
('Espresso', 2011, 'Washington', 10259, 11606, 14307, 10549, 17297, 16138, 12264, 12017, 11979, 16947, 14662, 17834, 165859),
('Latte', 2011, 'Washington', 15857, 17239, 12748, 10742, 14983, 12196, 15953, 10112, 12009, 13858, 12147, 14859, 162703),
('Green Tea', 2011, 'Washington', 16349, 15175, 14510, 16492, 9725, 12837, 15530, 17598, 13605, 17560, 16462, 16375, 182218),
('Darjeeling Tea', 2011, 'Washington', 16836, 15897, 15659, 11750, 16542, 15898, 16219, 9869, 10043, 16638, 11579, 11937, 168867),
('Tea', 2011, 'Texas', 15549, 11438, 17874, 12454, 15633, 10763, 9636, 14027, 13087, 16214, 14707, 12037, 163419),
('Espresso', 2011, 'Texas', 15161, 14012, 11192, 10651, 15761, 14347, 13363, 14445, 11074, 14762, 17473, 10213, 162454),
('Latte', 2011, 'Texas', 17028, 10851, 13835, 16400, 11593, 12841, 9772, 12847, 13750, 15827, 14000, 14580, 163324),
('Green Tea', 2011, 'Texas', 12488, 12928, 16373, 11398, 12427, 16600, 17662, 16396, 12422, 16046, 9618, 15913, 170271),
('Darjeeling Tea', 2011, 'Texas', 14784, 16988, 11058, 10531, 9900, 17044, 13269, 9766, 14984, 15193, 15867, 13604, 162988),
('Tea', 2011, 'Ohio', 14255, 13879, 13923, 16229, 13175, 9943, 15147, 16845, 10787, 10987, 15528, 16872, 167570),
('Espresso', 2011, 'Ohio', 11091, 17353, 16271, 16990, 16309, 14422, 15294, 17777, 17008, 13986, 16509, 16205, 189215),
('Latte', 2011, 'Ohio', 13877, 16848, 15494, 9636, 12669, 16488, 12309, 13813, 17172, 10510, 17266, 11565, 167647),
('Green Tea', 2011, 'Ohio', 10014, 10464, 16493, 17392, 11356, 14924, 15643, 11527, 16792, 16287, 12694, 16497, 170083),
('Darjeeling Tea', 2011, 'Ohio', 10382, 11380, 13778, 10761, 12322, 15357, 13522, 10782, 9568, 9715, 17952, 12975, 148494),
('Tea', 2011, 'New Mexico', 13923, 16703, 12335, 13242, 17972, 16377, 16503, 10994, 17550, 16260, 17414, 13016, 182289),
('Espresso', 2011, 'New Mexico', 12767, 16667, 14837, 13068, 10393, 12502, 15666, 10214, 16016, 11222, 12503, 14082, 159937),
('Latte', 2011, 'New Mexico', 17565, 17412, 11175, 10287, 14188, 15454, 9940, 10366, 16332, 15976, 12441, 16099, 167235),
('Green Tea', 2011, 'New Mexico', 10889, 13213, 14845, 11696, 16701, 17863, 15928, 12445, 14736, 15041, 14871, 12744, 170972),
('Darjeeling Tea', 2011, 'New Mexico', 12470, 17096, 14844, 11813, 13659, 9901, 16117, 11759, 15025, 10885, 16893, 17703, 168165),
('Tea', 2012, 'New York', 14391, 11389, 17566, 14123, 11381, 17676, 11234, 11508, 10085, 14539, 13481, 18306, 165679),
('Espresso', 2012, 'New York', 18987, 10451, 15457, 16274, 10286, 11359, 12998, 17853, 16284, 17932, 10605, 18142, 176628),
('Latte', 2012, 'New York', 10270, 17285, 17392, 17539, 18402, 16057, 11097, 17905, 13644, 18527, 16052, 11974, 186144),
('Green Tea', 2012, 'New York', 17256, 12398, 17445, 17226, 17867, 11859, 10276, 17238, 12552, 14759, 10184, 15368, 174428),
('Darjeeling Tea', 2012, 'New York', 14182, 11438, 12565, 15048, 14917, 13285, 13165, 16487, 10490, 13464, 15414, 15998, 166453),
('Tea', 2012, 'Washington', 17242, 18375, 17240, 13789, 15981, 16141, 17093, 18596, 18700, 11478, 13922, 10769, 189326),
('Espresso', 2012, 'Washington', 11519, 17494, 16571, 18523, 16675, 11574, 16530, 16361, 12980, 17846, 15907, 15035, 187015),
('Latte', 2012, 'Washington', 16380, 18835, 17199, 15989, 11336, 13705, 17017, 12215, 13196, 14219, 10846, 13882, 174819),
('Green Tea', 2012, 'Washington', 18642, 15012, 15970, 13391, 13715, 18049, 14538, 16414, 10681, 18009, 10609, 17138, 182168),
('Darjeeling Tea', 2012, 'Washington', 12354, 18472, 17345, 12018, 15511, 16156, 16148, 16338, 15449, 13049, 13539, 13969, 180348),
('Tea', 2012, 'Texas', 14353, 12677, 18753, 16648, 11926, 17010, 10017, 14040, 14203, 18109, 12670, 11010, 171416),
('Espresso', 2012, 'Texas', 13756, 13920, 15789, 12441, 10128, 17669, 15252, 16340, 15426, 15176, 18935, 16808, 181640),
('Latte', 2012, 'Texas', 11649, 18976, 14850, 16998, 13903, 10402, 12905, 14082, 10555, 13223, 16517, 11356, 165416),
('Green Tea', 2012, 'Texas', 12571, 10120, 12090, 11355, 11735, 10397, 11833, 13421, 13014, 13380, 17704, 13949, 151569),
('Darjeeling Tea', 2012, 'Texas', 14128, 16485, 16803, 15339, 18549, 15680, 18259, 10286, 13405, 14069, 16670, 14213, 183886),
('Tea', 2012, 'Ohio', 12247, 17825, 10350, 18620, 14280, 18770, 11576, 18555, 15252, 13648, 14494, 12816, 178433),
('Espresso', 2012, 'Ohio', 15007, 12563, 15804, 10360, 17343, 12678, 14374, 18769, 12301, 12606, 16517, 11739, 170061),
('Latte', 2012, 'Ohio', 13177, 15653, 13182, 11799, 10405, 14251, 18956, 15884, 17907, 15682, 10348, 17701, 174945),
('Green Tea', 2012, 'Ohio', 10304, 15591, 13997, 17642, 18020, 16039, 12427, 11267, 17372, 11570, 14354, 17867, 176450),
('Darjeeling Tea', 2012, 'Ohio', 14139, 13252, 15445, 18356, 15656, 13975, 13656, 14701, 11032, 10715, 14386, 16267, 171580),
('Tea', 2012, 'New Mexico', 15219, 14325, 13431, 12226, 15084, 10390, 17943, 14408, 18631, 10651, 11249, 18080, 171637),
('Espresso', 2012, 'New Mexico', 14026, 14099, 16107, 11650, 16928, 12481, 17915, 12267, 12244, 13260, 16912, 14029, 171918),
('Latte', 2012, 'New Mexico', 18100, 10641, 17169, 10730, 14201, 12478, 17026, 10340, 11028, 17321, 10650, 16589, 166273),
('Green Tea', 2012, 'New Mexico', 13635, 13573, 10792, 11517, 17832, 18110, 15141, 13001, 17889, 18025, 18417, 15677, 183609),
('Darjeeling Tea', 2012, 'New Mexico', 18753, 14186, 10274, 12982, 12705, 16841, 12234, 10526, 14656, 17446, 13719, 10375, 164697),
('Tea', 2013, 'New York', 14506, 15006, 12128, 13298, 17782, 12928, 16335, 15999, 17181, 16594, 17866, 14173, 183796),
('Espresso', 2013, 'New York', 16260, 19763, 16163, 12783, 18642, 10735, 13792, 18746, 14014, 17992, 11207, 11801, 181898),
('Latte', 2013, 'New York', 12197, 18477, 11287, 19618, 19888, 19867, 10790, 16227, 17321, 15411, 17979, 15919, 194981),
('Green Tea', 2013, 'New York', 11659, 14460, 19575, 17649, 16989, 18842, 12974, 14562, 15520, 16805, 18470, 15906, 193411),
('Darjeeling Tea', 2013, 'New York', 19322, 13704, 18386, 10995, 15027, 12663, 11545, 16187, 19149, 15345, 15944, 14124, 182391),
('Tea', 2013, 'Washington', 19960, 13244, 19816, 14584, 10939, 10649, 12597, 17835, 14581, 14159, 14947, 14085, 177396),
('Espresso', 2013, 'Washington', 13533, 17969, 13860, 10700, 17907, 16939, 14536, 15319, 18827, 13702, 17933, 19768, 190993),
('Latte', 2013, 'Washington', 13182, 10742, 16055, 11300, 12513, 16045, 10672, 15045, 13583, 14943, 16565, 18209, 168854),
('Green Tea', 2013, 'Washington', 13646, 12855, 18737, 17425, 16746, 18380, 17557, 12618, 17908, 19134, 10840, 16156, 192002),
('Darjeeling Tea', 2013, 'Washington', 12544, 13173, 17079, 16917, 14998, 16889, 17005, 15074, 13221, 16859, 17387, 12701, 183847),
('Tea', 2013, 'Texas', 19345, 19834, 17254, 14620, 17727, 16395, 14726, 17450, 15313, 18848, 19248, 12154, 202914),
('Espresso', 2013, 'Texas', 17067, 13437, 17198, 14589, 16765, 13961, 19306, 17637, 14442, 17557, 11187, 18562, 191708),
('Latte', 2013, 'Texas', 16617, 13349, 15770, 12932, 14853, 12393, 14352, 16000, 17272, 15956, 19625, 17432, 186551),
('Green Tea', 2013, 'Texas', 17846, 12739, 11943, 16835, 16712, 17839, 14603, 14992, 11142, 14734, 14789, 19516, 183690),
('Darjeeling Tea', 2013, 'Texas', 11859, 15696, 16641, 17480, 13054, 15516, 16437, 14027, 15310, 18970, 19357, 12062, 186409),
('Tea', 2013, 'Ohio', 12107, 12332, 11647, 11176, 14999, 17878, 12750, 12635, 16161, 19734, 13275, 12140, 166834),
('Espresso', 2013, 'Ohio', 13853, 14568, 11485, 11618, 16288, 19192, 12950, 13936, 18683, 15034, 17368, 12574, 177549),
('Latte', 2013, 'Ohio', 14211, 10898, 10632, 13031, 17808, 15364, 11666, 17918, 11160, 11550, 14845, 15272, 164355),
('Green Tea', 2013, 'Ohio', 17340, 17436, 11878, 19044, 15515, 17156, 16995, 11201, 18112, 13104, 17683, 11029, 186493),
('Darjeeling Tea', 2013, 'Ohio', 19257, 17402, 15902, 18057, 12080, 12934, 12890, 15211, 15999, 15136, 17374, 10823, 183065),
('Tea', 2013, 'New Mexico', 17605, 13080, 19699, 12161, 12825, 19969, 19821, 13134, 12982, 15143, 18703, 19588, 194710),
('Espresso', 2013, 'New Mexico', 16502, 10762, 14537, 18064, 15637, 17332, 13769, 16484, 15974, 16627, 13699, 12438, 181825),
('Latte', 2013, 'New Mexico', 10808, 11143, 12107, 18332, 13961, 17459, 14362, 15071, 14437, 10518, 14226, 14119, 166543),
('Green Tea', 2013, 'New Mexico', 19463, 15356, 11431, 16159, 17561, 16276, 17676, 19414, 14026, 19547, 16701, 16316, 199926),
('Darjeeling Tea', 2013, 'New Mexico', 13390, 16368, 12837, 17309, 10738, 16014, 12575, 14411, 17078, 12730, 18189, 14212, 175851),
('Tea', 2014, 'New York', 14934, 13042, 16815, 11731, 13957, 15800, 12432, 18193, 19228, 12966, 14848, 18920, 182866),
('Espresso', 2014, 'New York', 16539, 19752, 15123, 13893, 18671, 17382, 15005, 14716, 21260, 19836, 17617, 20783, 210577),
('Latte', 2014, 'New York', 13498, 15426, 14727, 21995, 16562, 19379, 15536, 12170, 19362, 17897, 21600, 13826, 201978),
('Green Tea', 2014, 'New York', 11508, 16322, 12194, 13164, 19073, 19217, 12004, 21626, 20805, 11668, 16772, 14752, 189105),
('Darjeeling Tea', 2014, 'New York', 14302, 12387, 19114, 14647, 16752, 15539, 12673, 13402, 14928, 15950, 19933, 19655, 189282),
('Tea', 2014, 'Washington', 12977, 20897, 17957, 13078, 14170, 16199, 13395, 18996, 13522, 17328, 19521, 18548, 196588),
('Espresso', 2014, 'Washington', 17581, 16362, 19853, 17310, 20062, 19311, 20280, 21945, 17450, 17079, 12656, 21495, 221384),
('Latte', 2014, 'Washington', 18293, 12399, 15543, 17704, 18078, 16105, 11536, 14161, 14255, 15591, 14692, 19906, 188263),
('Green Tea', 2014, 'Washington', 18772, 20698, 21401, 14397, 12898, 21326, 15788, 21356, 20640, 13624, 16065, 16032, 212997),
('Darjeeling Tea', 2014, 'Washington', 16053, 14260, 13299, 13520, 17705, 18749, 17680, 17709, 13706, 14449, 12917, 11670, 181717),
('Tea', 2014, 'Texas', 13728, 12143, 13157, 18707, 11949, 15590, 15455, 16597, 21785, 13108, 19680, 20065, 191964),
('Espresso', 2014, 'Texas', 20574, 18559, 11773, 14975, 16639, 19962, 13171, 13515, 11706, 13280, 17474, 12860, 184488),
('Latte', 2014, 'Texas', 13097, 12382, 21955, 20470, 17493, 21977, 18728, 16764, 13438, 21914, 20070, 13494, 211782),
('Green Tea', 2014, 'Texas', 19529, 18759, 16353, 14062, 15831, 14003, 21702, 19375, 11872, 20112, 17638, 12259, 201495),
('Darjeeling Tea', 2014, 'Texas', 16857, 13143, 18701, 18936, 19172, 15874, 21692, 17427, 18952, 19648, 19820, 12608, 212830),
('Tea', 2014, 'Ohio', 15691, 14434, 18708, 20095, 13694, 17622, 16199, 16107, 14854, 17732, 14933, 18146, 198215),
('Espresso', 2014, 'Ohio', 18030, 11764, 14687, 13961, 15368, 16414, 13416, 13973, 14119, 17097, 18250, 13422, 180501),
('Latte', 2014, 'Ohio', 11547, 21379, 14791, 13392, 13205, 20489, 21048, 12864, 15142, 14467, 11561, 19957, 189842),
('Green Tea', 2014, 'Ohio', 12295, 11771, 19619, 19194, 16248, 18432, 18478, 18111, 14705, 18942, 17136, 18262, 203193),
('Darjeeling Tea', 2014, 'Ohio', 21894, 17295, 20682, 17736, 21083, 19929, 15002, 19236, 12044, 20001, 13051, 15437, 213390),
('Tea', 2014, 'New Mexico', 17117, 19002, 18077, 19910, 13155, 17392, 17745, 11808, 19110, 18411, 19243, 15028, 205998),
('Espresso', 2014, 'New Mexico', 17241, 19811, 21622, 14086, 14196, 16472, 12799, 18405, 18869, 17503, 14528, 21893, 207425),
('Latte', 2014, 'New Mexico', 14435, 16097, 19938, 13707, 16759, 14724, 18325, 20629, 19755, 12161, 20959, 13363, 200852),
('Green Tea', 2014, 'New Mexico', 20497, 14051, 20359, 15639, 11882, 20545, 17368, 14182, 21601, 16605, 12335, 12011, 197075),
('Darjeeling Tea', 2014, 'New Mexico', 15765, 13269, 20817, 20753, 13983, 21327, 12414, 12095, 19875, 19010, 19155, 18670, 207133),
('Tea', 2015, 'New York', 18044, 19542, 14022, 14594, 20005, 18497, 12225, 19999, 11249, 16920, 17056, 15749, 197902),
('Espresso', 2015, 'New York', 18111, 13225, 17982, 15668, 11145, 12813, 14014, 16916, 17612, 15300, 19997, 13157, 185940),
('Latte', 2015, 'New York', 16304, 20959, 14182, 18356, 20168, 16992, 18905, 12968, 16072, 18989, 14706, 13495, 202096),
('Green Tea', 2015, 'New York', 19007, 19214, 16281, 18962, 13469, 11862, 15670, 11409, 14245, 17964, 15863, 17854, 191800),
('Darjeeling Tea', 2015, 'New York', 18472, 15403, 12788, 13813, 12379, 15103, 19191, 14447, 18744, 11515, 20596, 17043, 189494),
('Tea', 2015, 'Washington', 15442, 14471, 11075, 14820, 19141, 11493, 12184, 15695, 19558, 17573, 17664, 16060, 185176),
('Espresso', 2015, 'Washington', 16306, 16523, 11281, 16568, 12962, 20938, 20355, 17610, 16167, 16085, 18926, 16662, 200383),
('Latte', 2015, 'Washington', 14590, 12012, 17732, 17233, 19197, 15359, 16556, 11811, 18038, 19088, 15378, 13568, 190562),
('Green Tea', 2015, 'Washington', 14350, 13285, 17419, 16004, 13600, 15090, 20370, 20071, 20598, 20098, 12845, 14194, 197924),
('Darjeeling Tea', 2015, 'Washington', 12551, 13790, 13575, 14549, 15741, 14188, 16106, 16934, 16269, 13789, 17697, 17950, 183139),
('Tea', 2015, 'Texas', 12156, 16637, 16960, 19245, 17321, 15111, 19541, 13991, 15573, 14803, 19604, 18364, 199306),
('Espresso', 2015, 'Texas', 17573, 12040, 11975, 19394, 18226, 15423, 12832, 20900, 16695, 11111, 11774, 14042, 181985),
('Latte', 2015, 'Texas', 16862, 16850, 17172, 14305, 15316, 13500, 12022, 13468, 16854, 12065, 15909, 15306, 179629),
('Green Tea', 2015, 'Texas', 16051, 20723, 13196, 14705, 13583, 18932, 18301, 14792, 15745, 16692, 13122, 19863, 195705),
('Darjeeling Tea', 2015, 'Texas', 13715, 15733, 20694, 11599, 14242, 11393, 16624, 17632, 17550, 12518, 11923, 15249, 178872),
('Tea', 2015, 'Ohio', 16572, 19389, 16810, 11926, 16916, 15140, 14048, 11669, 11301, 15388, 11492, 11076, 171727),
('Espresso', 2015, 'Ohio', 12300, 17954, 17073, 14509, 18205, 13144, 20621, 14760, 15327, 20515, 18477, 12801, 195686),
('Latte', 2015, 'Ohio', 16949, 16020, 14179, 17540, 15057, 16425, 11282, 16141, 17449, 18725, 13913, 17373, 191053),
('Green Tea', 2015, 'Ohio', 11569, 15192, 12413, 15641, 20964, 19887, 15684, 13944, 20033, 19390, 14334, 18857, 197908),
('Darjeeling Tea', 2015, 'Ohio', 14985, 17130, 12081, 15771, 19189, 12856, 12166, 11407, 17563, 20395, 20327, 13890, 187760),
('Tea', 2015, 'New Mexico', 14439, 16665, 16965, 18634, 14990, 20040, 18836, 15075, 12012, 17055, 11123, 13193, 189027),
('Espresso', 2015, 'New Mexico', 16497, 20574, 19760, 16475, 13772, 14214, 20689, 20134, 12803, 11925, 14198, 19776, 200817),
('Latte', 2015, 'New Mexico', 19283, 15757, 20902, 16760, 16762, 16516, 17799, 12781, 12441, 13618, 17200, 17102, 196921),
('Green Tea', 2015, 'New Mexico', 20637, 16225, 18261, 12548, 17340, 19306, 12256, 14272, 16279, 19437, 13522, 17791, 197874),
('Darjeeling Tea', 2015, 'New Mexico', 20944, 19105, 13401, 15186, 15988, 13255, 16699, 18615, 13677, 12205, 14910, 18235, 192220);