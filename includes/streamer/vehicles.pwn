#include <YSI\y_hooks>

hook OnGameModeInit() {

	print("[Streamer] Loading Dynamic Static Vehicles...");

	// Job Ngu Dan
	NguDanVehicles[0] = AddStaticVehicleEx(453,-1691.2668,1416.5677,3.69948244,225.00000000,-1,-1,300); //
	NguDanVehicles[1] = AddStaticVehicleEx(453,-1700.3436,1406.7023,-0.2621,225.00000000,-1,-1,300); //
	NguDanVehicles[2] = AddStaticVehicleEx(453,-1718.2917,1422.1329,-0.5165,225.00000000,-1,-1,300); //
	NguDanVehicles[3] = AddStaticVehicleEx(453,-1683.3160,1424.6884,-0.0656,225.00000000,-1,-1,300); //
	NguDanVehicles[4] = AddStaticVehicleEx(453,-1715.5718,1448.9341,-0.2377,225.00000000,-1,-1,300); //
	NguDanVehicles[5] = AddStaticVehicleEx(453,-1714.5638,1462.6603,-0.2674,225.00000000,-1,-1,300); //
	NguDanVehicles[6] = AddStaticVehicleEx(453,-1719.2372,1489.3268,-0.3482,225.00000000,-1,-1,300); //
	NguDanVehicles[7] = AddStaticVehicleEx(453,-1717.8859,1436.6802,0.2509,225.00000000,-1,-1,300); //
	NguDanVehicles[8] = AddStaticVehicleEx(453,-1715.8094,1476.9521,-0.0199,225.00000000,-1,-1,300); //
	NguDanVehicles[9] = AddStaticVehicleEx(453,-1675.7317,1434.0619,-0.7446,225.00000000,-1,-1,300); //
	NguDanVehicles[10] = AddStaticVehicleEx(453,-1670.4917,1438.2510,0.2707,225.00000000,-1,-1,300); //



	// Trucker SF Docks
	TruckerVehicles[0] = AddStaticVehicleEx(414,-1572.34008789,129.09317017,3.69948244,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[1] = AddStaticVehicleEx(414,-1575.85583496,125.90543365,3.69948244,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[2] = AddStaticVehicleEx(414,-1578.88806152,122.54198456,3.69948244,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[3] = AddStaticVehicleEx(414,-1581.52319336,119.51720428,3.69948244,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[4] = AddStaticVehicleEx(414,-1584.36132812,116.68750000,3.69948244,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[5] = AddStaticVehicleEx(414,-1569.55114746,131.97119141,3.69948244,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[6] = AddStaticVehicleEx(414,-1587.84814453,113.03244019,3.79948235,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[7] = AddStaticVehicleEx(414,-1591.30224609,109.38220215,3.79948235,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[8] = AddStaticVehicleEx(414,-1595.57812500,105.83326721,3.79948235,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[9] = AddStaticVehicleEx(414,-1599.55334473,102.00447845,3.79948235,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[10] = AddStaticVehicleEx(456,-1603.49829102,98.16529083,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[11] = AddStaticVehicleEx(456,-1606.95983887,94.76251984,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[12] = AddStaticVehicleEx(456,-1610.01025391,91.14582062,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[13] = AddStaticVehicleEx(456,-1614.05834961,87.06182861,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[14] = AddStaticVehicleEx(456,-1617.96765137,83.13320160,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[15] = AddStaticVehicleEx(456,-1621.37426758,79.81375122,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[16] = AddStaticVehicleEx(456,-1625.06359863,75.71626282,3.69948244,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[17] = AddStaticVehicleEx(456,-1628.41735840,72.35322571,3.69948244,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[18] = AddStaticVehicleEx(456,-1631.25317383,69.12777710,3.69948244,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[19] = AddStaticVehicleEx(414,-1661.3239,84.2015,-11.2344,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[20] = AddStaticVehicleEx(414,-1664.3870,81.1531,-11.2344,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[21] = AddStaticVehicleEx(414,-1657.9860,87.4302,-11.2344,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[22] = AddStaticVehicleEx(414,-1654.5193,91.2526,-11.2315,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[23] = AddStaticVehicleEx(414,-1650.4473,95.3648,-11.2097,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[24] = AddStaticVehicleEx(414,-1646.2588,99.4012,-11.1867,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[25] = AddStaticVehicleEx(414,-1642.2253,103.5354,-11.1787,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[26] = AddStaticVehicleEx(414,-1638.4155,107.2505,-11.1781,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[27] = AddStaticVehicleEx(414,-1634.7483,111.0934,-11.1792,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[28] = AddStaticVehicleEx(414,-1630.7504,114.9139,-11.1785,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[29] = AddStaticVehicleEx(414,-1626.6196,119.4887,-11.1837,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[30] = AddStaticVehicleEx(414,-1622.5229,123.3979,-11.1858,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[31] = AddStaticVehicleEx(414,-1617.9292,127.2284,-11.1854,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[32] = AddStaticVehicleEx(414,-1614.3329,131.1930,-11.1897,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[33] = AddStaticVehicleEx(414,-1609.5564,135.6104,-11.1876,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[34] = AddStaticVehicleEx(414,-1605.6761,140.5255,-11.2081,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[35] = AddStaticVehicleEx(414,-1602.1230,144.0866,-11.2281,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[36] = AddStaticVehicleEx(414,-1598.5590,147.8653,-10.9049,225.00000000,-1,-1,300); //MULE
	TruckerVehicles[37] = AddStaticVehicleEx(414,-1692.2628,15.1756,3.5547,45.00000,-1,-1,300); //MULE
	TruckerVehicles[38] = AddStaticVehicleEx(414,-1695.3970,12.0919,3.5547,45.00000,-1,-1,300); //MULE
	TruckerVehicles[39] = AddStaticVehicleEx(414,-1698.0530,9.4295,3.5547,45.00000,-1,-1,300); //MULE
	TruckerVehicles[40] = AddStaticVehicleEx(414,-1700.5023,6.9841,3.5547,45.00000,-1,-1,300); //MULE
	TruckerVehicles[41] = AddStaticVehicleEx(414,-1702.6743,4.8084,3.5547,45.00000,-1,-1,300); //MULE
	TruckerVehicles[42] = AddStaticVehicleEx(414,-1705.5769,1.9148,3.5489,45.00000,-1,-1,300); //MULE
	TruckerVehicles[43] = AddStaticVehicleEx(414,-1708.1008,-0.6081,3.5489,45.00000,-1,-1,300); //MULE
	TruckerVehicles[44] = AddStaticVehicleEx(414,-1718.7310,10.6159,3.6248,225.00000,-1,-1,300); //MULE
	TruckerVehicles[45] = AddStaticVehicleEx(414,-1716.3907,12.9548,3.6248,225.00000,-1,-1,300); //MULE
	TruckerVehicles[46] = AddStaticVehicleEx(414,-1713.7140,15.6321,3.6070,225.00000,-1,-1,300); //MULE
	TruckerVehicles[47] = AddStaticVehicleEx(414,-1711.1198,18.2260,3.5734,225.00000,-1,-1,300); //MULE
	TruckerVehicles[48] = AddStaticVehicleEx(414,-1708.8440,20.5063,3.5547,225.00000,-1,-1,300); //MULE
	TruckerVehicles[49] = AddStaticVehicleEx(414,-1706.1151,23.2312,3.5547,225.00000,-1,-1,300); //MULE
	TruckerVehicles[50] = AddStaticVehicleEx(414,-1703.2583,26.0875,3.5547,225.00000,-1,-1,300); //MULE


	/*
	TruckerVehicles[0] = AddStaticVehicleEx(414,-1572.34008789,129.09317017,3.69948244,225.00000000,-1,-1,300); //Mule
	TruckerVehicles[1] = AddStaticVehicleEx(414,-1575.85583496,125.90543365,3.69948244,225.00000000,-1,-1,300); //Mule
	TruckerVehicles[2] = AddStaticVehicleEx(414,-1578.88806152,122.54198456,3.69948244,225.00000000,-1,-1,300); //Mule
	TruckerVehicles[3] = AddStaticVehicleEx(414,-1581.52319336,119.51720428,3.69948244,225.00000000,-1,-1,300); //Mule
	TruckerVehicles[4] = AddStaticVehicleEx(414,-1584.36132812,116.68750000,3.69948244,225.00000000,-1,-1,300); //Mule
	TruckerVehicles[5] = AddStaticVehicleEx(414,-1569.55114746,131.97119141,3.69948244,225.00000000,-1,-1,300); //Mule
	TruckerVehicles[6] = AddStaticVehicleEx(456,-1587.84814453,113.03244019,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[7] = AddStaticVehicleEx(456,-1591.30224609,109.38220215,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[8] = AddStaticVehicleEx(456,-1595.57812500,105.83326721,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[9] = AddStaticVehicleEx(456,-1599.55334473,102.00447845,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[10] = AddStaticVehicleEx(456,-1603.49829102,98.16529083,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[11] = AddStaticVehicleEx(456,-1606.95983887,94.76251984,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[12] = AddStaticVehicleEx(456,-1610.01025391,91.14582062,3.79948235,225.00000000,-1,-1,300); //Yankee
	TruckerVehicles[13] = AddStaticVehicleEx(443,-1614.05834961,87.06182861,3.79948235,225.00000000,-1,-1,300); //Packer
	TruckerVehicles[14] = AddStaticVehicleEx(443,-1617.96765137,83.13320160,3.79948235,225.00000000,-1,-1,300); //Packer
	TruckerVehicles[15] = AddStaticVehicleEx(443,-1621.37426758,79.81375122,3.79948235,225.00000000,-1,-1,300); //Packer
	TruckerVehicles[16] = AddStaticVehicleEx(514,-1625.06359863,75.71626282,3.69948244,225.00000000,-1,-1,300); //Tank truck
	TruckerVehicles[17] = AddStaticVehicleEx(514,-1628.41735840,72.35322571,3.69948244,225.00000000,-1,-1,300); //Tank truck
	TruckerVehicles[18] = AddStaticVehicleEx(514,-1631.25317383,69.12777710,3.69948244,225.00000000,-1,-1,300); //Tank truck
	*/

	PizzaVehicles[0] = AddStaticVehicleEx(448,2132.5435,-1829.4686,13.5518,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[1] = AddStaticVehicleEx(448,2132.5435,-1827.4686,13.5543,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[2] = AddStaticVehicleEx(448,2132.5435,-1825.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[3] = AddStaticVehicleEx(448,2132.5435,-1823.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[4] = AddStaticVehicleEx(448,2132.5435,-1821.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[5] = AddStaticVehicleEx(448,2132.5435,-1819.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[6] = AddStaticVehicleEx(448,2132.5435,-1817.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[7] = AddStaticVehicleEx(448,2132.5435,-1815.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[8] = AddStaticVehicleEx(448,2132.5435,-1813.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[9] = AddStaticVehicleEx(448,2132.5435,-1811.4686,13.5573,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[10] = AddStaticVehicleEx(448,2132.5435,-1809.4686,13.5531,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[11] = AddStaticVehicleEx(448,2132.5435,-1807.4686,13.5516,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[12] = AddStaticVehicleEx(448,2132.5435,-1805.4686,13.5501,0.00000000 ,3,6,300); //Pizzaboy LS	
	PizzaVehicles[13] = AddStaticVehicleEx(448,2132.5435,-1803.4686,13.5487,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[14] = AddStaticVehicleEx(448,2132.5435,-1801.4686,13.5472,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[15] = AddStaticVehicleEx(448,2132.5435,-1799.4686,13.5457,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[16] = AddStaticVehicleEx(448,2132.5435,-1797.4686,13.5443,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[17] = AddStaticVehicleEx(448,2132.5435,-1795.4686,13.5428,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[18] = AddStaticVehicleEx(448,2132.5435,-1793.4686,13.5413,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[19] = AddStaticVehicleEx(448,2132.5435,-1791.4686,13.5399,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[20] = AddStaticVehicleEx(448,2132.5435,-1789.4686,13.5384,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[21] = AddStaticVehicleEx(448,2132.5435,-1787.4686,13.5370,0.00000000 ,3,6,300); //Pizzaboy LS
	PizzaVehicles[22] =	AddStaticVehicleEx(448,-1678.7964,1409.9880,7.1792,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[23] =	AddStaticVehicleEx(448,-1679.9836,1408.8011,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[24] =	AddStaticVehicleEx(448,-1681.3433,1407.4409,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[25] =	AddStaticVehicleEx(448,-1682.6104,1406.1744,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[26] =	AddStaticVehicleEx(448,-1683.7306,1405.0542,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[27] =	AddStaticVehicleEx(448,-1684.7654,1404.0189,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[28] =	AddStaticVehicleEx(448,-1685.8109,1402.9739,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[29] =	AddStaticVehicleEx(448,-1687.0370,1401.7479,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[30] =	AddStaticVehicleEx(448,-1688.2124,1400.5725,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[31] =	AddStaticVehicleEx(448,-1689.2748,1399.5101,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[32] =	AddStaticVehicleEx(448,-1690.4954,1398.2894,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[33] =	AddStaticVehicleEx(448,-1691.2539,1397.5299,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[34] =	AddStaticVehicleEx(448,-1692.2255,1396.5594,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[35] =	AddStaticVehicleEx(448,-1693.5272,1395.2577,7.1804,45.00000000,3,6,300); //Pizzaboy SF
	PizzaVehicles[36] =	AddStaticVehicleEx(448,-1694.5551,1394.2299,7.1804,45.00000000,3,6,300); //Pizzaboy SF

	/*
	AddStaticVehicleEx(593,382.5172,2536.9561,16.5338,179.7261,-1,-1,2000);//Flyschool
	AddStaticVehicleEx(513,348.3660,2536.9792,16.7418,178.8195,-1,-1,2000);//Flyschool
	AddStaticVehicleEx(487,365.4068,2537.0327,16.6645,181.9959,-1,-1,2000);//Flyschool
	AddStaticVehicleEx(593,-1429.2843,-505.8203,13.7824,205.7709,-1,-1,2000);//Airport SF
	AddStaticVehicleEx(593,-1462.4779,-524.2803,13.7832,204.8137,-1,-1,2000);//Airport SF
	AddStaticVehicleEx(593,1907.7614,-2624.4097,13.5416,53.1810,-1,-1,2000);//Airport LS
	AddStaticVehicleEx(593,1887.0736,-2627.6543,13.5394,52.6116,-1,-1,2000);//Airport LS
	AddStaticVehicleEx(513,-1354.3270,-466.5467,13.7827,162.0134,-1,-1,2000);//Airport SF
	AddStaticVehicleEx(513,-1390.3510,-482.7985,13.7883,250.3124,-1,-1,2000);//Airport SF
	AddStaticVehicleEx(513,1835.3215,-2624.1938,13.5405,56.0569,-1,-1,2000);//Airport LS
	AddStaticVehicleEx(513,1813.2893,-2625.6296,13.5394,53.2858,-1,-1,2000);//Airport LS
	AddStaticVehicleEx(487,1963.29,-2647.07,13.76,21.93,-1,-1, 2000); // Maverick
	AddStaticVehicleEx(487,1948.81,-2647.30,13.68,21.93,-1,-1, 2000); // Maverick
	*/


	// VIP garage
	VIPVehicles[0] = AddStaticVehicleEx(411,-4365.93212891,839.28680420,986.18029785,0.00000000,-1,-1,180); //Infernus
	VIPVehicles[1] = AddStaticVehicleEx(429,-4370.52832031,840.57843018,986.13031006,0.00000000,-1,-1,180); //Banshee
	VIPVehicles[2] = AddStaticVehicleEx(451,-4374.41894531,840.36810303,986.14465332,0.00000000,-1,-1,180); //Turismo
	VIPVehicles[3] = AddStaticVehicleEx(541,-4378.48046875,840.84783936,986.08032227,0.00000000,-1,-1,180); //Bullet
	VIPVehicles[4] = AddStaticVehicleEx(559,-4382.43701172,840.60235596,986.13439941,0.00000000,-1,-1,180); //Jester
	VIPVehicles[5] = AddStaticVehicleEx(560,-4386.68066406,841.29382324,986.18530273,0.00000000,-1,-1,180); //Sultan
	VIPVehicles[6] = AddStaticVehicleEx(603,-4390.54345703,841.60748291,986.38299561,0.00000000,-1,-1,180); //Phoenix
	VIPVehicles[7] = AddStaticVehicleEx(480,-4394.61035156,841.88873291,986.23028564,0.00000000,-1,-1,180); //Comet
	VIPVehicles[8] = AddStaticVehicleEx(506,-4399.16455078,842.31146240,986.17242432,0.00000000,-1,-1,180); //Super GT
	VIPVehicles[9] = AddStaticVehicleEx(587,-4402.89990234,842.34979248,986.19030762,0.00000000,-1,-1,180); //Euros
	VIPVehicles[10] = AddStaticVehicleEx(411,-4407.21337891,842.98492432,986.18029785,0.00000000,-1,-1,180); //Infernus
	VIPVehicles[11] = AddStaticVehicleEx(429,-4410.96923828,843.07391357,986.13031006,0.00000000,-1,-1,180); //Banshee
	VIPVehicles[12] = AddStaticVehicleEx(451,-4415.64257812,843.46972656,986.14465332,0.00000000,-1,-1,180); //Turismo
	VIPVehicles[13] = AddStaticVehicleEx(541,-4419.40478516,843.48645020,986.08032227,0.00000000,-1,-1,180); //Bullet
	VIPVehicles[14] = AddStaticVehicleEx(559,-4423.40332031,843.19854736,986.13439941,0.00000000,-1,-1,180); //Jester
	VIPVehicles[15] = AddStaticVehicleEx(560,-4427.88232422,843.82849121,986.18530273,0.00000000,-1,-1,180); //Sultan
	VIPVehicles[16] = AddStaticVehicleEx(603,-4431.95849609,844.09509277,986.38299561,0.00000000,-1,-1,180); //Phoenix
	VIPVehicles[17] = AddStaticVehicleEx(480,-4436.15429688,844.76721191,986.23028564,0.00000000,-1,-1,180); //Comet
	VIPVehicles[18] = AddStaticVehicleEx(506,-4441.21337891,850.94598389,986.17242432,270.00000000,-1,-1,180); //Super GT
	VIPVehicles[19] = AddStaticVehicleEx(587,-4441.05224609,854.70550537,986.19030762,270.00000000,-1,-1,180); //Euros
	VIPVehicles[20] = AddStaticVehicleEx(522,-4418.77490234,858.65576172,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[21] = AddStaticVehicleEx(522,-4414.77441406,858.50390625,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[22] = AddStaticVehicleEx(522,-4410.77441406,858.35253906,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[23] = AddStaticVehicleEx(522,-4406.30957031,857.78234863,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[24] = AddStaticVehicleEx(522,-4394.11425781,856.77416992,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[25] = AddStaticVehicleEx(522,-4390.35644531,856.70147705,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[26] = AddStaticVehicleEx(522,-4386.21923828,856.22369385,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[27] = AddStaticVehicleEx(522,-4382.18164062,855.81323242,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[28] = AddStaticVehicleEx(522,-4417.77832031,876.99304199,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[29] = AddStaticVehicleEx(522,-4414.06494141,876.46301270,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[30] = AddStaticVehicleEx(522,-4409.78320312,876.41296387,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[31] = AddStaticVehicleEx(522,-4405.26074219,876.33081055,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[32] = AddStaticVehicleEx(522,-4393.28417969,875.69360352,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[33] = AddStaticVehicleEx(522,-4389.04248047,875.41735840,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[34] = AddStaticVehicleEx(522,-4385.04980469,875.21435547,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[35] = AddStaticVehicleEx(522,-4381.05761719,875.00488281,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[36] = AddStaticVehicleEx(411,-4407.94287109,891.34375000,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[37] = AddStaticVehicleEx(411,-4403.66748047,891.17761230,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[38] = AddStaticVehicleEx(411,-4399.91601562,891.28747559,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[39] = AddStaticVehicleEx(411,-4395.91601562,891.31347656,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[40] = AddStaticVehicleEx(451,-4391.23242188,891.03985596,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[41] = AddStaticVehicleEx(451,-4387.48339844,891.00421143,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[42] = AddStaticVehicleEx(451,-4383.49218750,890.44665527,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[43] = AddStaticVehicleEx(429,-4374.92187500,890.17211914,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[44] = AddStaticVehicleEx(429,-4370.80273438,889.91503906,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[45] = AddStaticVehicleEx(429,-4379.33349609,890.09112549,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[46] = AddStaticVehicleEx(560,-4366.63867188,889.44537354,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[47] = AddStaticVehicleEx(560,-4358.66015625,888.96386719,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[48] = AddStaticVehicleEx(560,-4354.67675781,888.44500732,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[49] = AddStaticVehicleEx(560,-4362.83789062,889.30908203,986.18530273,180.00000000,-1,-1,180); //Sultan

//	Palomino Creek Docks 
	TruckerVehicles[51] = AddStaticVehicleEx(452,2185.99658203,-149.95848083,0.00000000,276.54052734,-1,-1,300); //Speeder
	TruckerVehicles[52] = AddStaticVehicleEx(452,2186.97680664,-158.20143127,0.00000000,276.53686523,-1,-1,300); //Speeder
	TruckerVehicles[53] = AddStaticVehicleEx(452,2187.71826172,-166.46507263,0.00000000,276.34887695,-1,-1,300); //Speeder
	TruckerVehicles[54] = AddStaticVehicleEx(452,2192.13793945,-200.85733032,0.00000000,276.53259277,-1,-1,300); //Speeder
	TruckerVehicles[55] = AddStaticVehicleEx(446,2193.27734375,-208.95735168,0.00000000,276.53137207,-1,-1,300); //Speeder
	TruckerVehicles[56] = AddStaticVehicleEx(452,2194.16015625,-217.30232239,0.00000000,276.53137207,-1,-1,300); //Speeder
	TruckerVehicles[57] = AddStaticVehicleEx(446,2194.73437500,-225.24971008,0.00000000,276.53137207,-1,-1,300); //Speeder
	TruckerVehicles[58] = AddStaticVehicleEx(452,2195.46508789,-233.01260376,0.00000000,276.53137207,-1,-1,300); //Speeder
	TruckerVehicles[59] = AddStaticVehicleEx(452,2196.51562500,-240.20898438,0.00000000,276.53137207,-1,-1,300); //Speeder
	TruckerVehicles[60] = AddStaticVehicleEx(452,2248.83911133,-236.78352356,0.00000000,274.83947754,-1,-1,300); //Speeder
	TruckerVehicles[61] = AddStaticVehicleEx(452,2248.34790039,-228.59799194,0.00000000,274.83947754,-1,-1,300); //Speeder
	TruckerVehicles[62] = AddStaticVehicleEx(446,2247.91552734,-219.05198669,0.00000000,274.83947754,-1,-1,300); //Speeder
	TruckerVehicles[63] = AddStaticVehicleEx(452,2247.09057617,-210.72824097,0.00000000,274.83947754,-1,-1,300); //Speeder
	TruckerVehicles[64] = AddStaticVehicleEx(452,2245.94946289,-202.20306396,0.00000000,274.08752441,-1,-1,300); //Speeder
	TruckerVehicles[65] = AddStaticVehicleEx(452,2245.44799805,-194.00953674,0.00000000,273.41845703,-1,-1,300); //Speeder
	TruckerVehicles[66] = AddStaticVehicleEx(452,2244.83129883,-185.67364502,0.00000000,273.89953613,-1,-1,300); //Speeder
	TruckerVehicles[67] = AddStaticVehicleEx(453,2244.21508789,-177.24726868,0.00000000,274.83947754,-1,-1,300); //Speeder
	TruckerVehicles[68] = AddStaticVehicleEx(453,2243.78955078,-168.67892456,0.00000000,274.83947754,-1,-1,300); //Speeder

	
	//Sultan
	FamedVehicles[0] = AddStaticVehicleEx(560,2515.6797,2381.6501,3.9175,90.5219,-1,-1,180);
	FamedVehicles[1] = AddStaticVehicleEx(560,2515.9753,2372.6431,3.9167,89.3516,-1,-1,180);
	FamedVehicles[2] = AddStaticVehicleEx(560,2515.2947,2363.1985,3.9228,89.3915,-1,-1,180);
	//Cheetah
	FamedVehicles[3] = AddStaticVehicleEx(415,2515.2170,2377.3411,3.9823,90.2256,-1,-1,180);
	FamedVehicles[4] = AddStaticVehicleEx(415,2515.2529,2368.2183,3.9826,90.2256,-1,-1,180);
	//NRG
	FamedVehicles[5] = AddStaticVehicleEx(522,2498.9292,2363.5708,3.7897,242.9848,-1,-1,180);
	FamedVehicles[6] = AddStaticVehicleEx(522,2499.3206,2366.6091,3.8081,242.9848,-1,-1,180);
	FamedVehicles[7] = AddStaticVehicleEx(522,2499.4883,2370.2681,3.8290,242.9847,-1,-1,180);
	FamedVehicles[8] = AddStaticVehicleEx(522,2499.3398,2382.6699,3.8842,242.9847,-1,-1,180);
	FamedVehicles[9] = AddStaticVehicleEx(522,2499.2588,2385.4790,3.7989,242.9847,-1,-1,180);
	FamedVehicles[10] = AddStaticVehicleEx(522,2499.0728,2390.9985,3.8373,242.9846,-1,-1,180);
	//PCJ
	FamedVehicles[11] = AddStaticVehicleEx(461,2494.5908,2353.1921,3.7971,328.9557,-1,-1,180);
	FamedVehicles[12] = AddStaticVehicleEx(461,2497.6455,2352.8145,3.7880,328.9523,-1,-1,180);
	FamedVehicles[13] = AddStaticVehicleEx(461,2501.5059,2352.7971,3.7973,328.9482,-1,-1,180);
	FamedVehicles[14] = AddStaticVehicleEx(461,2506.0073,2352.9568,3.7935,328.9489,-1,-1,180);
	//Comets
	FamedVehicles[15] = AddStaticVehicleEx(480,2524.4268,2381.5957,3.9851,269.3853,-1,-1,180);
	FamedVehicles[16] = AddStaticVehicleEx(480,2524.3342,2372.9875,3.9898,269.3844,-1,-1,180);
	FamedVehicles[17] = AddStaticVehicleEx(480,2524.2336,2363.5969,3.9947,269.3852,-1,-1,180);
	//Bullet
	FamedVehicles[18] = AddStaticVehicleEx(541,2524.1758,2377.0989,3.8359,269.6020,-1,-1,180);
	FamedVehicles[19] = AddStaticVehicleEx(541,2524.1130,2368.1453,3.8404,269.6032,-1,-1,180);
	//Jester
	FamedVehicles[20] = AddStaticVehicleEx(559,2542.2134,2381.6531,3.8673,89.7158,-1,-1,180);
	FamedVehicles[21] = AddStaticVehicleEx(559,2541.9707,2372.5603,3.8675,89.7158,-1,-1,180);
	//SuperGT
	FamedVehicles[22] = AddStaticVehicleEx(506,2541.7937,2367.7646,3.9154,89.7431,-1,-1,180);
	FamedVehicles[23] = AddStaticVehicleEx(506,2541.8357,2377.2507,3.9155,89.7431,-1,-1,180);
	//Banshee
	FamedVehicles[24] = AddStaticVehicleEx(429,2542.5437,2363.3955,3.8906,90.2345,-1,-1,180);
	//Infernus
	FamedVehicles[25] = AddStaticVehicleEx(411,2510.7610,2397.8477,3.9380,180.5807,-1,-1,180);
	FamedVehicles[26] = AddStaticVehicleEx(411,2519.9934,2397.9417,3.9424,180.5807,-1,-1,180);
	//Uranus
	FamedVehicles[27] = AddStaticVehicleEx(558,2515.1958,2398.0537,3.8412,179.9306,-1,-1,180);
	FamedVehicles[28] = AddStaticVehicleEx(558,2524.5942,2397.4172,3.8415,179.9293,-1,-1,180);
	//Huntley
	FamedVehicles[31] = AddStaticVehicleEx(579,2528.9141,2397.9255,4.1505,179.4067,-1,-1,180);
	FamedVehicles[32] = AddStaticVehicleEx(579,2537.8970,2397.8325,4.1541,179.4066,-1,-1,180);
	//Premier
	FamedVehicles[33] = AddStaticVehicleEx(426,2533.3384,2397.8184,3.9538,179.7989,-1,-1,180);
	FamedVehicles[34] = AddStaticVehicleEx(426,2542.4468,2397.7859,3.9583,179.8030,-1,-1,180);
	//Sanchez
	FamedVehicles[35] = AddStaticVehicleEx(468,2508.5623,2352.0640,3.8801,327.8297,-1,-1,180);
	FamedVehicles[36] = AddStaticVehicleEx(468,2512.6743,2352.0581,3.8747,327.8297,-1,-1,180);
	FamedVehicles[37] = AddStaticVehicleEx(468,2513.9478,2351.9365,3.8822,327.8291,-1,-1,180);
	FamedVehicles[38] = AddStaticVehicleEx(468,2516.2051,2352.1504,3.8789,327.8291,-1,-1,180);
	

	/*AddStaticVehicleEx(593,1402.44238281,-2428.44042969,14.10486984,180.00000000,-1,-1,2000); Dodo - 255
	AddStaticVehicleEx(593,1418.70190430,-2427.98681641,14.10486984,180.00000000,-1,-1,2000); Dodo
	AddStaticVehicleEx(593,1433.76721191,-2427.92626953,14.10486984,180.00000000,-1,-1,2000); Dodo*/
	AddStaticVehicleEx(509,1702.7448,-1884.2257,13.0817,291.3965,-1,-1,2000); // BIKENEWBIESPAWN1
	AddStaticVehicleEx(509,1702.6656,-1882.6167,13.0815,298.5609,-1,-1,2000); // BIKENEWBIESPAWN2
	AddStaticVehicleEx(509,1702.5789,-1881.3337,13.0545,289.8956,-1,-1,2000); // BIKENEWBIESPAWN3
	AddStaticVehicleEx(509,1702.5829,-1879.5234,13.0822,296.3651,-1,-1,2000); // BIKENEWBIESPAWN4
	AddStaticVehicleEx(509,1702.6434,-1877.2375,13.0821,302.0038,-1,-1,2000); // BIKENEWBIESPAWN5
	AddStaticVehicleEx(481,1727.4503,-1885.0702,13.0807,65.2583,-1,-1,2000); // BIKENEWBIESPAWN6
	AddStaticVehicleEx(481,1727.5376,-1882.7361,13.0772,66.9472,-1,-1,2000); // BIKENEWBIESPAWN7
	AddStaticVehicleEx(481,1727.2814,-1880.4712,13.0770,65.2958,-1,-1,2000); // BIKENEWBIESPAWN8
	AddStaticVehicleEx(481,1727.7151,-1877.8586,13.0783,65.9359,-1,-1,2000); // BIKENEWBIESPAWN9
	AddStaticVehicleEx(481,1727.5710,-1875.3071,13.0782,70.6519,-1,-1,2000); // BIKENEWBIESPAWN10

	AddStaticVehicleEx(538,1700.7551,-1953.6531,14.8756,200.0,-1,-1,2000); //LS passenger
	print("[Streamer] Dynamic Static Vehicles have been loaded.");
	return 1;
}