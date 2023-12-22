#include <a_samp>
#include <YSI\y_iterate>
#include <streamer>

public OnFilterScriptExit()
{
    foreach(new i : Player)
	{
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) TogglePlayerControllable(i, false);
	}
	return 1;
}

public OnFilterScriptInit()
{
    foreach(new i : Player)
	{
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) TogglePlayerControllable(i, false);
	}
	// SAAS
	CreateDynamicObject(1689, -1383.34, 490.03, 21.15,   0.00, 0.00, 180.00);
	CreateDynamicObject(1697, -1365.35, 493.34, 30.56,   0.00, 0.00, 180.00);
	CreateDynamicObject(1697, -1360.25, 493.34, 30.56,   0.00, 0.00, 180.00);
	CreateDynamicObject(2888, -1338.79, 492.47, 41.84,   -36.00, -20.00, 210.00);
	CreateDynamicObject(2887, -1338.83, 492.55, 41.90,   -36.00, -16.00, 208.00);
	CreateDynamicObject(18656, -1339.25, 492.23, 42.19,   -42.00, 0.00, 234.00);
	CreateDynamicObject(2985, -1424.87, 529.03, 17.27,   0.00, 0.00, 90.00);
	CreateDynamicObject(2985, -1404.50, 528.88, 17.27,   0.00, 0.00, 90.00);
	CreateDynamicObject(3864, -1476.16, 493.30, 23.30,   0.00, 0.00, 210.00);
	CreateDynamicObject(3864, -1476.14, 509.50, 23.42,   0.00, 0.00, -210.00);
	CreateDynamicObject(3256, -1326.09, 441.70, 6.26,   0.00, 0.00, 0.00);
	CreateDynamicObject(2064, -1317.98, 490.06, 17.87,   0.00, 0.00, 0.00);
	CreateDynamicObject(2061, -1319.08, 489.96, 17.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(2061, -1319.08, 490.33, 17.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1399.49, 489.24, 17.23,   0.00, 0.00, -90.00);
	CreateDynamicObject(987, -1725.87, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1713.84, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1701.85, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1689.85, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1677.82, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1665.79, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1653.80, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1641.78, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1624.48, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1612.50, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1600.52, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1588.53, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1576.56, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1564.57, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1552.56, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1540.57, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1528.58, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1516.54, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1504.57, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1492.57, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1480.60, 260.56, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1468.72, 260.50, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1457.17, 260.50, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1445.29, 260.54, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1445.02, 292.37, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1433.01, 292.37, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1421.06, 292.40, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1409.07, 292.40, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1397.09, 292.40, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1385.11, 292.40, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1373.14, 292.40, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1361.17, 292.40, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1353.62, 292.40, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1341.75, 292.45, 6.18,   0.00, 0.00, 44.00);
	CreateDynamicObject(987, -1336.67, 297.70, 6.18,   0.00, 0.00, 44.00);
	CreateDynamicObject(987, -1328.17, 305.99, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1328.17, 318.00, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1328.20, 329.97, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1328.20, 332.84, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1328.06, 344.46, 6.18,   0.00, 0.00, 180.00);
	CreateDynamicObject(987, -1494.81, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1482.81, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1470.80, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1458.81, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1450.76, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1433.18, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1421.21, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1409.24, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1397.22, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1385.25, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1373.31, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1361.35, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1349.37, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1303.46, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1297.67, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1234.74, 481.48, 6.18,   0.00, 0.00, -180.00);
	CreateDynamicObject(987, -1226.24, 472.99, 6.18,   0.00, 0.00, 135.00);
	CreateDynamicObject(987, -1220.95, 467.74, 6.18,   0.00, 0.00, 135.00);
	CreateDynamicObject(987, -1220.96, 455.80, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1220.96, 443.81, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1220.96, 437.18, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(987, -1238.74, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1250.73, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1262.71, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1274.69, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1286.69, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1298.69, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1310.70, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1322.63, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(987, -1334.63, 434.29, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(978, -1522.23, 491.69, 10.68,   0.00, 0.00, 0.00);
	CreateDynamicObject(978, -1525.68, 487.00, 10.68,   0.00, 0.00, 90.00);
	CreateDynamicObject(978, -1522.22, 491.69, 11.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(978, -1525.68, 487.00, 11.70,   0.00, 0.00, 90.00);
	CreateDynamicObject(3279, -1237.27, 476.47, 6.18,   0.00, 0.00, -90.00);
	CreateDynamicObject(8168, -1225.21, 438.10, 8.00,   0.00, 0.00, -135.00);
	CreateDynamicObject(19966, -1535.19, 493.55, 6.17,   0.00, 0.00, 180.00);
	CreateDynamicObject(19953, -1445.97, 491.73, 17.28,   0.00, 0.00, 180.00);
	CreateDynamicObject(19954, -1445.97, 510.86, 17.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(3578, -1535.13, 488.17, 6.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(1461, -1624.45, 256.76, 6.99,   0.00, 0.00, -180.00);
	CreateDynamicObject(974, -1728.96, 261.55, 8.64,   0.00, 0.00, -20.00);
	CreateDynamicObject(3627, -1545.27, 367.95, 10.01,   0.00, 0.00, 90.00);
	CreateDynamicObject(3627, -1585.84, 367.95, 10.01,   0.00, 0.00, 90.00);
	CreateDynamicObject(2690, -1467.10, 322.27, 7.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(1650, -1466.76, 322.29, 6.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(11677, -1472.97, 311.72, 10.64,   0.00, 0.00, 46.00);
	CreateDynamicObject(19969, -1472.18, 302.98, 6.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(19987, -1479.62, 282.10, 6.18,   0.00, 0.00, -90.00);
	CreateDynamicObject(19425, -1532.85, 483.29, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1529.55, 483.29, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1526.26, 483.29, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19348, -1529.38, 469.62, 71846.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(19987, -1525.40, 492.00, 6.18,   0.00, 0.00, 180.00);
	CreateDynamicObject(7094, -1552.54, 427.57, 151430.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(11081, -1412.32, 318.55, 13.08,   0.00, 0.00, -90.00);
	CreateDynamicObject(11293, -1430.34, 323.43, 11.48,   0.00, 0.00, 90.00);
	CreateDynamicObject(6874, -1514.28, 414.48, 6.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(11454, -1677.43, 269.50, 6.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(5126, -1305.79, 445.68, 21.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(11400, -1279.38, 445.84, 18.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(918, -1464.38, 321.22, 6.54,   0.00, 0.00, 0.00);
	CreateDynamicObject(1217, -1465.11, 321.26, 6.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(1291, -1610.97, 310.18, 81646.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1290, -1608.79, 316.87, 12.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(3399, -1502.04, 359.33, 51.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(3361, -1507.74, 365.17, 47.43,   0.00, 0.00, 90.00);
	CreateDynamicObject(3361, -1507.74, 373.28, 43.41,   0.00, 0.00, 90.00);
	CreateDynamicObject(2985, -1508.53, 361.24, 49.50,   0.00, 0.00, 180.00);
	CreateDynamicObject(2985, -1506.97, 369.60, 45.49,   0.00, 0.00, 0.00);
	CreateDynamicObject(2614, -1536.94, 415.14, 9.27,   0.00, 0.00, -90.00);
	CreateDynamicObject(7091, -1534.02, 425.93, 16.74,   0.00, 0.00, 180.00);
	CreateDynamicObject(7091, -1534.02, 404.71, 16.74,   0.00, 0.00, 180.00);
	CreateDynamicObject(3628, -1562.42, 419.23, 91702.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(8038, -1504.42, 419.76, 50.30,   0.00, 0.00, 180.00);
	CreateDynamicObject(1649, -1501.38, 453.01, 72.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(1649, -1501.38, 450.59, 72.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(1649, -1501.38, 448.89, 72.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(1649, -1501.38, 453.01, 72.06,   0.00, 0.00, -90.00);
	CreateDynamicObject(1649, -1501.38, 450.59, 72.06,   0.00, 0.00, -90.00);
	CreateDynamicObject(1649, -1501.38, 448.89, 72.06,   0.00, 0.00, -90.00);
	CreateDynamicObject(1649, -1503.59, 446.68, 72.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(1649, -1506.09, 446.68, 72.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(1649, -1507.74, 446.68, 72.06,   0.00, 0.00, -180.00);
	CreateDynamicObject(1649, -1503.59, 446.68, 72.06,   0.00, 0.00, -180.00);
	CreateDynamicObject(1649, -1506.09, 446.68, 72.06,   0.00, 0.00, -180.00);
	CreateDynamicObject(1649, -1507.74, 446.68, 72.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(1649, -1509.94, 448.84, 72.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(1649, -1509.94, 451.80, 72.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(1649, 1509.94, 453.53, 72.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(1649, -1509.94, 452.96, 72.06,   0.00, 0.00, -90.00);
	CreateDynamicObject(1649, -1509.94, 451.80, 72.06,   0.00, 0.00, -90.00);
	CreateDynamicObject(1649, -1509.94, 448.84, 72.06,   0.00, 0.00, -90.00);
	CreateDynamicObject(1649, -1507.78, 455.22, 72.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(1649, -1504.86, 455.22, 72.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(1649, -1503.60, 455.22, 72.06,   0.00, 0.00, 0.00);
	CreateDynamicObject(1649, -1503.60, 455.22, 72.06,   0.00, 0.00, -180.00);
	CreateDynamicObject(1649, -1504.86, 455.22, 72.06,   0.00, 0.00, -180.00);
	CreateDynamicObject(1649, -1507.78, 455.22, 72.06,   0.00, 0.00, -180.00);
	CreateDynamicObject(1649, -1509.94, 452.96, 72.06,   0.00, 0.00, 90.00);
	CreateDynamicObject(3095, -1505.69, 450.76, 73.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(1682, -1506.14, 452.92, 80.61,   0.00, 0.00, 0.00);
	CreateDynamicObject(1663, -1507.96, 453.73, 70.13,   0.00, 0.00, 120.00);
	CreateDynamicObject(1663, -1504.91, 453.88, 70.13,   0.00, 0.00, 180.00);
	CreateDynamicObject(1671, -1506.51, 448.21, 70.13,   0.00, 0.00, 0.00);
	CreateDynamicObject(1671, -1503.26, 448.40, 70.13,   0.00, 0.00, 42.00);
	CreateDynamicObject(5130, -1480.45, 394.52, 39.36,   0.00, 0.00, -44.00);
	CreateDynamicObject(5822, -1475.63, 389.19, 31.38,   0.00, 0.00, 184.00);
	CreateDynamicObject(8613, -1476.25, 404.77, 33.32,   0.00, 0.00, -180.00);
	CreateDynamicObject(4726, -1545.57, 322.04, 51.17,   0.00, 0.00, 90.00);
	CreateDynamicObject(4726, -1497.41, 322.04, 51.17,   0.00, 0.00, -90.00);
	CreateDynamicObject(9819, -1505.79, 453.85, 70.57,   0.00, 0.00, 90.00);
	CreateDynamicObject(9819, -1505.49, 448.13, 70.57,   0.00, 0.00, -90.00);
	CreateDynamicObject(3763, -1504.86, 419.53, 74.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(16782, -1501.81, 451.66, 72.24,   0.00, 0.00, 180.00);
	CreateDynamicObject(3585, -1609.13, 264.40, 9.45,   0.00, 0.00, 0.00);
	CreateDynamicObject(3567, -1613.67, 264.20, 6.98,   0.00, 0.00, 90.00);
	CreateDynamicObject(3043, -1600.60, 263.50, 7.64,   0.00, 0.00, 90.00);
	CreateDynamicObject(2973, -1615.99, 264.29, 7.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(964, -1606.74, 264.40, 8.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(964, -1608.17, 264.40, 8.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(964, -1609.55, 264.40, 8.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(964, -1610.94, 264.40, 8.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(19171, -1509.91, 450.33, 72.17,   180.00, 90.00, 0.00);
	CreateDynamicObject(1290, -1692.13, 313.30, 12.23,   0.00, 0.00, 44.00);
	CreateDynamicObject(1290, -1671.85, 332.67, 12.23,   0.00, 0.00, 44.00);
	CreateDynamicObject(1290, -1645.06, 356.17, 12.23,   0.00, 0.00, 44.00);
	CreateDynamicObject(1278, -1525.42, 377.26, 20.38,   0.00, 0.00, -90.00);
	CreateDynamicObject(1278, -1606.47, 359.52, 20.38,   0.00, 0.00, 180.00);
	CreateDynamicObject(1278, -1526.53, 459.81, 20.38,   0.00, 0.00, 20.38);
	CreateDynamicObject(1278, -1526.28, 461.56, 20.38,   0.00, 0.00, 180.00);
	CreateDynamicObject(3864, -1473.48, 356.38, 59.52,   0.00, 0.00, 30.00);
	CreateDynamicObject(3864, -1568.95, 285.51, 59.52,   0.00, 0.00, -130.00);
	CreateDynamicObject(3279, -1538.29, 479.52, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(3279, -1716.04, 266.02, 6.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(3279, -1449.86, 265.39, 6.18,   0.00, 0.00, 180.00);
	CreateDynamicObject(3279, -1342.78, 297.75, 6.18,   0.00, 0.00, 180.00);
	CreateDynamicObject(3885, -1490.21, 457.98, 43.11,   0.00, 0.00, 0.00);
	CreateDynamicObject(3884, -1490.07, 457.95, 43.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3885, -1347.99, 443.25, 29.86,   0.00, 0.00, 0.00);
	CreateDynamicObject(3884, -1347.95, 443.18, 29.91,   0.00, 0.00, 44.00);
	CreateDynamicObject(3885, -1347.21, 338.60, 29.86,   0.00, 0.00, 0.00);
	CreateDynamicObject(3884, -1346.97, 338.73, 29.91,   0.00, 0.00, -138.00);
	CreateDynamicObject(3885, -1479.92, 290.69, 53.21,   0.00, 0.00, 0.00);
	CreateDynamicObject(3884, -1479.79, 290.54, 53.27,   0.00, 0.00, -144.00);
	CreateDynamicObject(3885, -1564.03, 350.04, 53.21,   0.00, 0.00, 0.00);
	CreateDynamicObject(3884, -1563.94, 350.29, 53.27,   0.00, 0.00, 43.00);
	CreateDynamicObject(3115, -1443.09, 350.06, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1443.31, 350.18, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1443.09, 390.02, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1443.33, 390.39, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1443.09, 429.05, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1441.58, 423.33, 1443.31,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1443.31, 429.37, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1472.27, 400.87, 33.24,   0.00, 0.00, -90.00);
	CreateDynamicObject(1360, -1559.54, 423.96, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 421.37, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 418.82, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 416.17, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 413.60, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 410.95, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 408.33, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 405.74, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 403.25, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1559.54, 426.48, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 426.48, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(1231, -1558.74, 425.26, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(638, -1558.04, 423.80, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 421.14, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 418.47, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 415.79, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 413.11, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 410.45, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 407.78, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 405.11, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(638, -1558.04, 403.39, 6.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(1231, -1558.74, 420.13, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(1231, -1558.74, 415.23, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(1231, -1558.74, 409.78, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(1231, -1558.74, 404.59, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(19124, -1558.72, 427.54, 6.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(19124, -1558.72, 402.50, 6.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 426.48, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 423.96, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 421.37, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 418.82, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 416.17, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 413.60, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 410.95, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 408.33, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 405.74, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(1360, -1556.58, 403.25, 6.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(19273, -1331.55, 487.21, 11.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1404.37, 350.06, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1404.10, 350.18, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1404.38, 389.99, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1404.10, 390.39, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1404.37, 429.05, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1404.10, 429.37, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1364.91, 350.06, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1364.79, 350.18, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1364.91, 389.99, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1364.80, 390.39, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1364.91, 429.05, 28.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, -1364.80, 429.37, 29.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1414.50, 520.15, 16.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1627.30, 256.64, 6.19,   0.00, 0.00, -90.00);
	CreateDynamicObject(16773, -1440.87, 280.14, 4.73,   70.00, 0.00, -90.00);
	CreateDynamicObject(16773, -1433.58, 280.14, 2.07,   70.00, 0.00, -90.00);
	CreateDynamicObject(2985, -1444.91, 484.07, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1479.30, 485.23, 0.18,   0.00, 0.00, 90.00);
	CreateDynamicObject(19985, -1448.08, 501.26, 2.04,   0.00, 0.00, -90.00);
	CreateDynamicObject(18646, -1448.03, 502.25, 2.14,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1448.03, 500.34, 2.14,   0.00, 0.00, 0.00);
	CreateDynamicObject(16773, -1426.10, 280.14, -0.64,   70.00, 0.00, -90.00);
	CreateDynamicObject(11245, -1548.26, 403.97, 6.93,   0.00, 110.00, 0.00);
	CreateDynamicObject(11245, -1547.25, 404.05, 12.48,   0.00, -70.00, 0.00);
	CreateDynamicObject(19124, -1557.40, 427.54, 6.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(1231, -1557.44, 425.26, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(1231, -1557.44, 420.13, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(1231, -1557.44, 415.23, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(1231, -1557.44, 409.78, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(1231, -1557.44, 404.59, 8.92,   0.00, 0.00, 90.00);
	CreateDynamicObject(19124, -1557.40, 402.50, 6.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(19984, -1349.09, 480.35, 6.18,   0.00, 0.00, -90.00);
	CreateDynamicObject(18850, -1586.63, 338.06, 10.01,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1340.28, 484.96, 10.20,   0.00, 0.00, -90.00);
	CreateDynamicObject(2985, -1319.69, 484.96, 10.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1287.28, 485.26, 0.17,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1388.07, 426.46, 5.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1388.07, 390.87, 5.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1388.07, 355.29, 5.88,   0.00, 0.00, 0.00);
	CreateDynamicObject(3226, -1466.74, 460.42, 6.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(3626, -1479.62, 351.72, 53.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(3242, -1454.75, 455.37, 8.17,   0.00, 0.00, 180.00);
	CreateDynamicObject(8253, -1246.14, 447.69, 10.10,   0.00, 0.00, 90.00);
	CreateDynamicObject(8253, -1271.56, 447.69, 10.10,   0.00, 0.00, 90.00);
	CreateDynamicObject(11319, -1608.15, 346.84, 9.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(11319, -1608.15, 329.45, 9.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1610.86, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1614.18, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1617.46, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1620.75, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1627.28, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1624.01, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1630.57, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1633.85, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1637.12, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19425, -1640.44, 358.96, 6.19,   0.00, 0.00, 0.00);
	CreateDynamicObject(19984, -1609.07, 359.58, 6.18,   0.00, 0.00, 180.00);
	CreateDynamicObject(19965, -1609.92, 359.55, 6.18,   0.00, 0.00, 180.00);
	CreateDynamicObject(3167, -1467.79, 456.45, 6.17,   0.00, 0.00, 90.00);
	CreateDynamicObject(18646, -1357.53, 499.09, 30.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1357.53, 488.48, 30.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1337.87, 488.25, 30.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1337.87, 499.25, 30.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1256.09, 510.69, 17.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1256.09, 501.47, 17.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1256.09, 491.93, 17.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1445.96, 491.73, 17.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(18646, -1445.96, 510.85, 17.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(3115, -1435.61, 520.20, 16.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1445.93, 529.12, 17.22,   0.00, 0.00, 180.00);
	CreateDynamicObject(3928, -1436.13, 521.00, 17.22,   0.00, 0.00, 90.00);
	CreateDynamicObject(18753, -1489.12, 421.31, -0.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(10789, -1454.33, 315.14, 8.83,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1410.13, 288.45, 0.16,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, -1420.59, 288.42, 0.17,   0.00, 0.00, -90.00);
	CreateDynamicObject(5130, -1335.24, 478.71, 8.20,   0.00, 0.00, 226.00);
	CreateDynamicObject(8613, -1447.07, 393.79, 2.81,   0.00, 0.00, 0.00);
	CreateDynamicObject(8613, -1447.07, 429.50, 2.81,   0.00, 0.00, 0.00);
	CreateDynamicObject(12987, -1446.36, 361.62, 3.56,   0.00, 0.00, -90.00);
	CreateDynamicObject(3114, -1473.03, 501.27, 16.68,   0.00, 0.00, 90.00);
	CreateDynamicObject(10610, -1574.01, 304.64, 16.38,   0.00, 0.00, 0.00);
	CreateDynamicObject(11319, -1505.52, 322.70, 52.44,   0.00, 90.00, 0.00);
	CreateDynamicObject(11319, -1505.81, 317.62, 52.44,   0.00, 90.00, 0.00);
	CreateDynamicObject(11319, -1535.73, 319.86, 52.44,   0.00, 90.00, 0.00);
	CreateDynamicObject(11319, -1535.66, 326.02, 52.44,   0.00, 90.00, 0.00);
	CreateDynamicObject(9244, -1396.22, 454.53, 11.45,   0.00, 0.00, 90.00);
	CreateDynamicObject(13027, -1424.12, 460.00, 9.38,   0.00, 0.00, 0.00);
	CreateDynamicObject(12978, -1424.12, 460.01, 6.54,   0.00, 0.00, 180.00);
	CreateDynamicObject(3571, -1729.96, 266.02, 7.54,   0.00, 0.00, 60.00);
	CreateDynamicObject(18260, -1724.90, 263.73, 7.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(3571, -1729.96, 266.02, 10.25,   0.00, 0.00, 60.00);

	// TRAF
	CreateDynamicObject(5145, -2280.75, 2565.86, -6.70,   0.00, 0.00, -47.00);
	CreateDynamicObject(10767, -2192.81, 2515.10, -11.26,   0.00, 0.00, -92.00);
	CreateDynamicObject(16775, -2197.80, 2509.59, 1.95,   -64.00, 0.00, 43.00);
	CreateDynamicObject(16775, -2187.09, 2519.58, 1.95,   -64.00, 0.00, 43.00);
	CreateDynamicObject(8253, -2238.69, 2496.15, 7.67,   0.00, 0.00, 133.00);
	CreateDynamicObject(8253, -2257.26, 2478.80, 7.67,   0.00, 0.00, 133.00);
	CreateDynamicObject(16098, -2269.79, 2550.60, 8.68,   0.00, 0.00, -47.00);
	CreateDynamicObject(10766, -2105.99, 2421.79, 1.44,   0.00, 0.00, -137.00);
	CreateDynamicObject(8209, -2250.19, 2466.36, 6.85,   0.00, 0.00, 43.00);
	CreateDynamicObject(8209, -2312.16, 2572.77, 24.25,   0.00, 0.00, 12.00);
	CreateDynamicObject(987, -2372.38, 2559.55, 23.19,   0.00, 0.00, 13.00);
	CreateDynamicObject(8314, -2334.26, 2486.89, 4.72,   0.00, 0.00, 63.00);
	CreateDynamicObject(987, -2384.06, 2556.90, 22.57,   0.00, 0.00, 13.00);
	CreateDynamicObject(987, -2391.07, 2547.22, 22.55,   0.00, 0.00, 55.00);
	CreateDynamicObject(987, -2395.43, 2541.08, 22.53,   0.00, 0.00, 55.00);
	CreateDynamicObject(987, -2402.07, 2531.67, 19.19,   0.00, 0.00, 55.00);
	CreateDynamicObject(987, -2404.88, 2527.59, 14.73,   0.00, 0.00, 55.00);
	CreateDynamicObject(987, -2411.74, 2517.80, 11.71,   0.00, 0.00, 55.00);
	CreateDynamicObject(987, -2418.58, 2507.99, 11.71,   0.00, 0.00, 55.00);
	CreateDynamicObject(987, -2407.05, 2504.61, 11.41,   0.00, 0.00, 164.00);
	CreateDynamicObject(987, -2395.56, 2501.31, 10.61,   0.00, 0.00, 164.00);
	CreateDynamicObject(987, -2383.80, 2499.20, 9.05,   0.00, 0.00, 170.00);
	CreateDynamicObject(987, -2371.92, 2497.64, 6.15,   0.00, 0.00, 170.00);
	CreateDynamicObject(987, -2361.43, 2495.37, 3.77,   0.00, 0.00, 170.00);
	CreateDynamicObject(987, -2350.65, 2490.36, 3.77,   0.00, 0.00, 155.00);
	CreateDynamicObject(987, -2348.40, 2489.32, 3.77,   0.00, 0.00, 155.00);
	CreateDynamicObject(987, -2339.23, 2471.96, 3.97,   0.00, 0.00, -44.00);
	CreateDynamicObject(987, -2330.89, 2463.50, 3.97,   0.00, 0.00, -30.00);
	CreateDynamicObject(987, -2320.30, 2457.61, 3.97,   0.00, 0.00, -34.00);
	CreateDynamicObject(987, -2310.42, 2450.93, 3.97,   0.00, 0.00, -34.00);
	CreateDynamicObject(987, -2300.56, 2444.24, 3.97,   0.00, 0.00, -42.00);
	CreateDynamicObject(987, -2295.34, 2439.91, 3.97,   0.00, 0.00, -40.00);
	CreateDynamicObject(16010, -2354.77, 2524.01, 7.58,   0.00, 0.00, -47.00);
	CreateDynamicObject(9241, -2351.80, 2522.66, 17.70,   0.00, 0.00, -47.00);
	CreateDynamicObject(987, -2347.19, 2489.85, 3.97,   0.00, 0.00, 47.00);
	CreateDynamicObject(3934, -2283.57, 2450.13, 3.77,   0.00, 0.00, -50.00);
	CreateDynamicObject(3934, -2293.68, 2461.87, 3.79,   0.00, 0.00, -50.00);
	CreateDynamicObject(3279, -2336.07, 2476.53, 3.76,   0.00, 0.00, 44.00);
	CreateDynamicObject(987, -2330.74, 2480.29, 3.97,   0.00, 0.00, -135.00);
	CreateDynamicObject(925, -2293.16, 2530.81, 4.78,   0.00, 0.00, 44.00);

	new g_Object[80];
	g_Object[0] = CreateObject(7522, -2681.6115, 2137.6193, 58.8748, 0.0000, 0.0000, 0.4000); //vgnhsegate1
	g_Object[1] = CreateObject(966, -2672.7067, 2144.3808, 54.3857, 0.0000, 0.0000, -0.6998); //bar_gatebar01
	g_Object[2] = CreateObject(967, -2671.6228, 2143.8928, 54.3745, 0.0000, 0.0000, -89.5998); //bar_gatebox01
	g_Object[3] = CreateObject(966, -2690.4873, 2144.1718, 54.3179, 0.0000, 0.0000, -177.2998); //bar_gatebar01
	g_Object[4] = CreateObject(967, -2692.4694, 2143.6103, 54.3347, 0.0000, 0.0000, -89.1997); //bar_gatebox01
	g_Object[5] = CreateObject(986, 1754.6943, 519.8447, 28.4894, 0.0000, 0.0000, 160.0999); //gate_autoL
	g_Object[6] = CreateObject(10832, -2696.2976, 2137.4047, 56.0988, 0.0000, 0.0000, 0.0000); //gatehouse2_SFSe
	g_Object[7] = CreateObject(14819, -2695.5400, 2132.8222, 55.8068, 0.0000, 0.0000, 0.0000); //OG_Door
	g_Object[8] = CreateObject(10832, -2666.6748, 2137.4865, 56.2103, 0.0000, 0.0000, 0.0000); //gatehouse2_SFSe
	g_Object[9] = CreateObject(14819, -2665.9135, 2132.9121, 55.9300, 0.0000, 0.0000, 0.0000); //OG_Door
	g_Object[10] = CreateObject(2930, -2667.6533, 2132.3823, 60.2458, 0.0000, 0.0000, -90.2996); //chinaTgate
	g_Object[11] = CreateObject(2930, -2666.0217, 2132.3769, 60.2458, 0.0000, 0.0000, -90.2996); //chinaTgate
	g_Object[12] = CreateObject(2930, -2664.3400, 2132.3933, 60.2458, 0.0000, 0.0000, -90.2996); //chinaTgate
	g_Object[13] = CreateObject(2930, -2662.9387, 2132.3881, 60.2458, 0.0000, 0.0000, -90.2996); //chinaTgate
	g_Object[14] = CreateObject(2930, -2694.3505, 2132.3720, 60.2453, 0.0000, 0.0000, -88.8999); //chinaTgate
	g_Object[15] = CreateObject(2930, -2696.0617, 2132.3393, 60.2453, 0.0000, 0.0000, -88.8999); //chinaTgate
	g_Object[16] = CreateObject(2930, -2697.7238, 2132.3339, 60.2453, 0.0000, 0.0000, -88.8999); //chinaTgate
	g_Object[17] = CreateObject(2930, -2698.3249, 2132.3400, 60.2453, 0.0000, 0.0000, -88.8999); //chinaTgate
	g_Object[18] = CreateObject(7522, -1130.1905, 1110.3645, 41.3404, 0.0000, 0.0000, -43.5000); //vgnhsegate1
	SetObjectMaterial(g_Object[18], 0, 3095, "a51jdrx", "sam_camo", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[18], 1, 3603, "bevmans01_la", "genroof01_128", 0xFFFFFFFF);
	g_Object[19] = CreateObject(967, -1132.7043, 1103.9675, 37.1925, 0.0000, 0.0000, -133.6999); //bar_gatebox01
	SetObjectMaterial(g_Object[19], 0, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[19], 1, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[20] = CreateObject(967, -1128.0056, 1116.9564, 36.8125, 0.0000, 0.0000, 47.7000); //bar_gatebox01
	SetObjectMaterial(g_Object[20], 0, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[20], 1, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[21] = CreateObject(973, -1129.5766, 1112.7115, 37.9253, 0.0000, 0.0000, -133.1999); //sub_roadbarrier
	g_Object[22] = CreateObject(973, -1127.8686, 1111.0985, 37.8953, 0.0000, 0.0000, 47.2000); //sub_roadbarrier
	g_Object[23] = CreateObject(966, -1132.3415, 1102.9270, 37.2294, 0.0000, 0.0000, 137.5000); //bar_gatebar01
	g_Object[24] = CreateObject(966, -1128.4183, 1117.9952, 36.8054, 0.0000, 0.0000, -41.0998); //bar_gatebar01
	g_Object[25] = CreateObject(3279, -1143.5893, 1122.1844, 37.1389, 0.0000, 0.0000, -44.5998); //a51_spottower
	SetObjectMaterial(g_Object[25], 0, 3095, "a51jdrx", "sam_camo", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[25], 2, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[26] = CreateObject(2889, -1143.5981, 1122.1173, 57.0702, 0.0000, 0.0000, 0.0000); //a51_spotbase
	g_Object[27] = CreateObject(2888, -1143.5229, 1122.0395, 56.9575, -35.0998, 0.0000, -168.2998); //a51_spothousing
	g_Object[28] = CreateObject(3279, -1117.0373, 1098.3435, 37.0023, 0.0000, 0.0000, 136.3999); //a51_spottower
	SetObjectMaterial(g_Object[28], 0, 3095, "a51jdrx", "sam_camo", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[28], 2, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[29] = CreateObject(2887, -1143.5063, 1122.1872, 57.0199, -36.9999, 1.6000, -167.9998); //a51_spotbulb
	g_Object[30] = CreateObject(985, -1146.3924, 1117.6584, 38.8927, 0.0000, 0.0000, 135.7998); //gate_autoR
	g_Object[31] = CreateObject(2889, -1117.0450, 1098.2922, 56.9211, 0.0000, 0.0000, 0.0000); //a51_spotbase
	g_Object[32] = CreateObject(973, -1132.8895, 1109.1832, 38.2052, 0.0000, 0.0000, -133.1999); //sub_roadbarrier
	g_Object[33] = CreateObject(973, -1131.1645, 1107.5395, 38.1953, 0.0000, 0.0000, 47.2000); //sub_roadbarrier
	g_Object[34] = CreateObject(2888, -1117.0340, 1098.4095, 56.9061, -23.4999, 0.0000, 0.0000); //a51_spothousing
	g_Object[35] = CreateObject(2887, -1117.0234, 1098.3840, 56.9379, -24.1000, 0.0000, -0.0997); //a51_spotbulb
	g_Object[36] = CreateObject(2985, -1145.9664, 1121.7042, 53.2078, 0.0000, 0.0000, -128.2998); //minigun_base
	g_Object[37] = CreateObject(2985, -1144.5240, 1119.8032, 53.2078, 0.0000, 0.0000, -134.0997); //minigun_base
	g_Object[38] = CreateObject(2985, -1119.4167, 1098.2257, 53.0759, 0.0000, 0.0000, -146.3999); //minigun_base
	g_Object[39] = CreateObject(2985, -1117.2740, 1095.9326, 53.0695, -0.6998, 0.0000, -99.4999); //minigun_base
	g_Object[40] = CreateObject(3881, -1135.7307, 1123.6363, 38.6268, 0.0000, 0.0000, 137.5000); //airsecbooth_SFSe
	g_Object[41] = CreateObject(3881, -1124.7851, 1097.5683, 38.8469, 0.0000, 0.0000, -42.5998); //airsecbooth_SFSe
	g_Object[42] = CreateObject(985, -1113.6767, 1103.3973, 38.5512, 0.0000, 0.0000, -42.3997); //gate_autoR
	g_Object[43] = CreateObject(3881, -144.9676, 487.5024, 12.3691, 0.0000, 0.0000, 166.6000); //airsecbooth_SFSe
	g_Object[44] = CreateObject(967, -142.8329, 483.5036, 10.9588, 0.0000, 0.0000, -104.3999); //bar_gatebox01
	g_Object[45] = CreateObject(966, -131.3168, 479.5177, 11.0728, 0.0000, 0.0000, -14.8999); //bar_gatebar01
	g_Object[46] = CreateObject(966, -144.7960, 482.9876, 11.0726, 0.0000, 0.0000, 165.9998); //bar_gatebar01
	g_Object[47] = CreateObject(3881, 420.0969, 601.6192, 19.8875, 0.0000, 0.0000, -145.3000); //airsecbooth_SFSe
	g_Object[48] = CreateObject(966, 423.6791, 598.7763, 17.9428, 0.0000, 0.0000, -145.5998); //bar_gatebar01
	g_Object[49] = CreateObject(966, 435.1648, 606.6405, 17.9428, 0.0000, 0.0000, 34.4000); //bar_gatebar01
	g_Object[50] = CreateObject(8556, 1741.5633, 530.9213, 30.5020, 0.0000, 0.0000, -18.4999); //vgshsegate04
	SetObjectMaterial(g_Object[50], 0, 3095, "a51jdrx", "sam_camo", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[50], 1, 3603, "bevmans01_la", "genroof01_128", 0xFFFFFFFF);
	g_Object[51] = CreateObject(3881, 1729.6103, 535.3945, 28.0743, 0.0000, 0.0000, 161.6000); //airsecbooth_SFSe
	g_Object[52] = CreateObject(967, 1740.0468, 534.4832, 26.2161, 0.0000, 0.0000, 70.9999); //bar_gatebox01
	SetObjectMaterial(g_Object[52], 0, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[52], 1, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[53] = CreateObject(966, 1739.3154, 535.4501, 26.1980, 0.0000, 0.0000, -18.3999); //bar_gatebar01
	g_Object[54] = CreateObject(967, 1743.8642, 529.7550, 26.4340, 0.0000, 0.0000, -107.4001); //bar_gatebox01
	SetObjectMaterial(g_Object[54], 0, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[54], 1, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[55] = CreateObject(966, 1744.4361, 528.5418, 26.5112, 0.0000, 0.0000, 162.5000); //bar_gatebar01
	g_Object[56] = CreateObject(3881, 1753.4355, 526.5297, 28.0639, 0.0000, 0.0000, -16.6000); //airsecbooth_SFSe
	g_Object[57] = CreateObject(987, 1622.3387, 575.5068, 0.7584, 0.0000, 0.0000, 0.0000); //elecfence_BAR
	g_Object[58] = CreateObject(3279, 1760.0869, 532.2750, 25.8155, 0.0000, 0.0000, 160.6999); //a51_spottower
	SetObjectMaterial(g_Object[58], 0, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[58], 2, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[59] = CreateObject(985, 1724.3834, 530.2805, 28.5159, 0.0000, 0.0000, 161.1999); //gate_autoR
	g_Object[60] = CreateObject(3279, 1728.2097, 543.6124, 25.8255, 0.0000, 0.0000, 71.5000); //a51_spottower
	SetObjectMaterial(g_Object[60], 0, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	SetObjectMaterial(g_Object[60], 2, 3267, "milbase", "sam_camobits", 0xFFFFFFFF);
	g_Object[61] = CreateObject(987, 1634.2669, 575.4669, 0.7584, 0.0000, 0.0000, 90.0000); //elecfence_BAR
	g_Object[62] = CreateObject(987, 1634.2669, 587.4571, 0.7584, 0.0000, 0.0000, 90.0000); //elecfence_BAR
	g_Object[63] = CreateObject(987, 1622.3387, 587.4167, 0.7584, 0.0000, 0.0000, -90.0000); //elecfence_BAR
	g_Object[64] = CreateObject(987, 1622.3387, 599.4072, 0.7584, 0.0000, 0.0000, -90.0000); //elecfence_BAR
	g_Object[65] = CreateObject(987, 2288.1081, 522.4149, 0.7934, 0.0000, 0.0000, 0.0000); //elecfence_BAR
	g_Object[66] = CreateObject(987, 2288.1181, 534.3153, 0.7934, 0.0000, 0.0000, -90.0000); //elecfence_BAR
	g_Object[67] = CreateObject(987, 2288.1181, 546.3151, 0.7934, 0.0000, 0.0000, -90.0000); //elecfence_BAR
	g_Object[68] = CreateObject(987, 2300.0380, 522.3749, 0.7934, 0.0000, 0.0000, 90.0000); //elecfence_BAR
	g_Object[69] = CreateObject(987, 2300.0380, 534.3747, 0.7934, 0.0000, 0.0000, 90.0000); //elecfence_BAR
	g_Object[70] = CreateObject(987, 2359.9973, 522.3297, 0.7945, 0.0000, 0.0000, 0.0000); //elecfence_BAR
	g_Object[71] = CreateObject(987, 2347.9975, 522.3297, 0.7945, 0.0000, 0.0000, 0.0000); //elecfence_BAR
	g_Object[72] = CreateObject(987, 2371.9184, 522.3097, 0.7945, 0.0000, 0.0000, 90.0000); //elecfence_BAR
	g_Object[73] = CreateObject(987, 2371.9184, 534.3100, 0.7945, 0.0000, 0.0000, 90.0000); //elecfence_BAR
	g_Object[74] = CreateObject(987, 2348.0275, 534.2597, 0.7945, 0.0000, 0.0000, -90.0000); //elecfence_BAR
	g_Object[75] = CreateObject(987, 2348.0275, 546.2594, 0.7945, 0.0000, 0.0000, -90.0000); //elecfence_BAR
	g_Object[76] = CreateObject(978, -1020.2945, 936.2953, 34.4150, 0.0000, 0.0000, 124.4999); //sub_roadright
	g_Object[77] = CreateObject(1662, 2765.8212, 613.2172, 9.1812, 0.0000, 0.0000, -71.8000); //nt_roadblockCI
	g_Object[78] = CreateObject(978, -1020.2945, 936.2953, 35.7150, 0.0000, 0.0000, 124.4999); //sub_roadright
	g_Object[79] = CreateObject(978, -1020.2945, 936.2953, 37.0150, 0.0000, 0.0000, 124.4999); //sub_roadright

	// Gucci Gang
	new tmpobjid;
	tmpobjid = CreateDynamicObject(19377, 1357.105957, 2519.666015, 14.590826, 0.000000, 89.999977, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono2_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1351.659545, 2520.094726, 9.300312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1351.659545, 2520.094726, 9.300312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1351.659545, 2520.094726, 9.300312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1351.659545, 2520.094726, 9.300312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1351.659545, 2519.654296, 9.300312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1351.849731, 2519.654296, 9.300312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1362.280273, 2519.654296, 9.300312, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1356.441284, 2515.104248, 9.340312, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(19377, 1357.492309, 2515.104248, 9.340312, 0.000000, 0.000000, -89.999992, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "mono1_sfe", 0x00000000);
	tmpobjid = CreateDynamicObject(1723, 1386.382446, 2521.065185, 9.640307, 0.000000, 0.000000, 179.100021, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1723, 1389.551879, 2523.388427, 9.640307, 0.000000, 0.000000, -129.499984, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1723, 1382.537719, 2521.912353, 9.640307, 0.000000, 0.000000, 121.999984, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2311, 1384.746704, 2523.052978, 9.631874, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2673, 1383.581298, 2521.389892, 9.791881, 0.000000, 0.000000, -173.600021, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1346.673217, 2514.827148, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1355.033203, 2514.827148, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1365.345092, 2514.827148, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1370.496704, 2514.827148, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1341.515502, 2520.004394, 13.110585, 0.000000, 0.000000, 90.000053, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1341.515502, 2530.286132, 13.120585, 0.000000, 0.000000, 90.000053, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1341.515502, 2540.389404, 13.120585, 0.000000, 0.000000, 90.000053, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1346.673217, 2545.558593, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1356.973999, 2545.558593, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1360.271240, 2545.558593, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(8674, 1370.555541, 2545.558593, 13.120577, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1437, 1365.008056, 2516.457763, 10.613937, -23.500001, 0.000000, 91.300010, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1362.329467, 2518.941162, 15.126772, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1362.329467, 2522.491699, 15.126772, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1351.879272, 2522.491699, 15.126772, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1351.879272, 2516.578857, 15.126772, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1351.879272, 2519.500244, 15.126772, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1353.609741, 2514.847900, 15.126772, 0.000000, 0.000000, 90.100013, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1360.639526, 2514.861572, 15.126772, 0.000000, 0.000000, 90.100013, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3850, 1357.128662, 2514.857177, 15.126772, 0.000000, 0.000000, 90.100013, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1557, 1362.373657, 2524.239013, 9.820312, 0.000000, 0.000000, -90.000007, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1557, 1362.373657, 2520.237060, 9.820312, 0.000000, 0.000000, -90.000007, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1557, 1362.371582, 2521.238281, 9.820312, 0.000000, 0.000000, 90.100036, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1557, 1362.379272, 2517.228271, 9.820312, 0.000000, 0.000000, 90.100036, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2345, 1362.516235, 2518.750976, 12.140308, 0.000000, 0.000000, 89.800003, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2345, 1362.530273, 2522.739990, 12.140308, 0.000000, 0.000000, 89.800003, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(738, 1374.349853, 2516.503906, 9.950302, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19124, 1385.699462, 2518.005371, 10.320313, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19324, 1361.844726, 2523.878906, 14.886765, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 

	// Khu dat 1 - Chua chu so huu (41)
	CreateDynamicObject(9255, 2479.37646, 165.78210, 28.05059,   0.00000, 0.00000, -44.81996, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17025, 2466.81250, 156.76175, 14.32263,   0.00000, 0.00000, -57.23999, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17025, 2473.39478, 149.53296, 14.24575,   0.00000, 0.00000, -56.21999, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18368, 2463.10352, 163.44211, 25.83135,   0.00000, 0.00000, -140.82024, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17299, 2495.58496, 166.72086, 15.73085,   0.00000, 0.00000, -214.43994, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3587, 2491.04321, 165.98582, 31.70458,   0.00000, 0.00000, -106.86000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17025, 2458.82886, 170.12877, 16.52250,   -18.78001, -1.14001, -56.76000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(5520, 2466.56323, 178.88127, 33.81182,   0.00000, 0.00000, -331.85983, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17025, 2460.58228, 177.17046, 17.06034,   -18.78001, -1.14001, -56.76000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(8615, 2477.35986, 152.36571, 28.55972,   0.00000, 0.00000, 136.01970, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(8314, 2490.76196, 185.16467, 28.85341,   0.00000, 0.00000, 148.61981, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(8315, 2501.12842, 175.05713, 26.94315,   0.00000, 0.00000, -12.17996, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(987, 2497.14795, 178.38564, 30.40135,   0.00000, 0.00000, -59.33999, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(987, 2497.09668, 178.29977, 29.08769,   0.00000, 0.00000, -158.99994, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1703, 2472.46558, 160.16733, 28.95182,   0.00000, 0.00000, -94.02002, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1703, 2468.75952, 161.92575, 28.95182,   0.00000, 0.00000, -5.76003, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1752, 2469.05420, 158.37370, 30.24757,   0.00000, 0.00000, 135.30003, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19588, 2467.06323, 180.00009, 36.42248,   -0.30000, -6.53999, 27.95999, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(8613, 2474.67139, 174.60405, 33.38988,   0.00000, 0.00000, 28.56000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19357, 2475.63574, 180.05769, 36.63825,   0.00000, 90.00000, -61.61997, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3175, 2463.76050, 165.47548, 28.86269,   0.00000, 0.00000, 226.14000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3253, 2486.20581, 157.25821, 29.36749,   0.00000, 0.00000, -112.26002, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17025, 2461.51953, 162.77182, 15.96120,   -12.12001, -3.30000, -82.49999, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(14467, 2451.75195, 167.01254, 32.77124,   0.00000, 0.00000, 83.16006, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(983, 2498.82422, 124.97150, 26.15358,   0.00000, 0.00000, -179.82005, .worldid = -1, .streamdistance = 150);

	// NOOSE
	CreateDynamicObject(5190, -476.54782, -2012.40247, 46.45168,   354.00000, 0.00000, 0.00000);
	CreateDynamicObject(5190, -476.57224, -2012.41553, 49.40186,   353.99597, 0.00000, 0.00000);
	CreateDynamicObject(3265, -474.23059, -2019.53210, 45.68855,   1.99402, 1.99951, 97.92664);
	CreateDynamicObject(3265, -473.17993, -2025.94556, 47.06362,   1.99402, 1.99951, 97.92664);
	CreateDynamicObject(3877, -474.15500, -2022.97290, 47.31490,   355.00055, 0.98642, 2.07034);
	CreateDynamicObject(5190, -476.55762, -2012.02148, 52.45185,   353.99597, 0.00000, 0.00000);
	CreateDynamicObject(17031, -483.67383, -1966.70410, 31.13189,   0.00000, 0.00000, 9.99756);
	CreateDynamicObject(17031, -481.74805, -1964.60156, 24.88189,   0.00000, 0.00000, 9.99756);
	CreateDynamicObject(3279, -515.27637, -1965.87793, 43.29272,   0.00000, 0.00000, 275.99304);
	CreateDynamicObject(896, -517.37164, -1966.41589, 38.75511,   45.71082, 285.65771, 131.36676);
	CreateDynamicObject(3267, -515.22168, -1965.87695, 58.87077,   0.00000, 0.00000, 277.99805);
	CreateDynamicObject(17026, -647.55292, -2141.96191, 24.34927,   0.00000, 0.00000, 78.00000);
	CreateDynamicObject(17026, -626.61072, -2132.46729, 24.34927,   0.00000, 0.00000, 77.99744);
	CreateDynamicObject(17026, -685.30554, -2161.23389, 21.34927,   0.00000, 0.00000, 77.99744);
	CreateDynamicObject(17026, -726.43396, -2174.83545, 21.34927,   0.00000, 0.00000, 77.99744);
	CreateDynamicObject(17026, -701.15997, -2173.49170, 16.84927,   0.00000, 0.00000, 77.99744);
	CreateDynamicObject(17026, -734.10840, -2169.55664, 23.02428,   0.00000, 0.00000, 19.97314);
	CreateDynamicObject(17026, -696.77100, -2165.55493, 22.84927,   0.00000, 0.00000, 77.99744);
	CreateDynamicObject(987, -818.83667, -1815.63757, 90.60767,   0.00000, 0.00000, 239.50006);
	CreateDynamicObject(987, -824.90686, -1825.94690, 90.58266,   0.00000, 0.00000, 239.49646);
	CreateDynamicObject(987, -830.96960, -1836.27856, 90.60767,   0.00000, 0.00000, 239.50006);
	CreateDynamicObject(987, -837.06647, -1846.60229, 89.83262,   0.00000, 0.00000, 239.49646);
	CreateDynamicObject(987, -843.11682, -1856.93225, 88.75755,   0.00000, 0.00000, 236.74646);
	CreateDynamicObject(987, -849.71033, -1866.94714, 87.70749,   0.00000, 0.00000, 231.49440);
	CreateDynamicObject(987, -857.20422, -1876.31982, 86.53242,   0.00000, 0.00000, 222.49290);
	CreateDynamicObject(987, -866.05133, -1884.43176, 85.53236,   0.00000, 0.00000, 213.73961);
	CreateDynamicObject(987, -875.95972, -1891.02539, 84.35728,   0.00000, 0.00000, 208.23903);
	CreateDynamicObject(987, -886.46875, -1896.65039, 83.60724,   0.00000, 0.00000, 200.48486);
	CreateDynamicObject(987, -897.71875, -1900.77051, 82.83219,   0.00000, 0.00000, 197.73193);
	CreateDynamicObject(987, -909.16364, -1904.39819, 81.95714,   0.00000, 0.00000, 191.23192);
	CreateDynamicObject(987, -920.91968, -1906.70569, 81.13209,   0.00000, 0.00000, 188.97803);
	CreateDynamicObject(987, -932.74792, -1908.53467, 80.45705,   0.00000, 0.00000, 188.97583);
	CreateDynamicObject(987, -944.60046, -1910.35754, 79.95702,   0.00000, 0.00000, 184.72583);
	CreateDynamicObject(987, -956.45776, -1911.33984, 79.38198,   0.00000, 0.00000, 212.72412);
	CreateDynamicObject(987, -966.43164, -1917.73242, 79.58199,   0.00000, 0.00000, 256.71753);
	CreateDynamicObject(987, -969.18994, -1929.39136, 78.75694,   0.00000, 0.00000, 253.71753);
	CreateDynamicObject(987, -972.59833, -1940.87988, 77.78188,   0.00000, 0.00000, 246.71277);
	CreateDynamicObject(17026, -976.30328, -1970.57715, 69.83926,   0.00000, 0.00000, 313.99512);
	CreateDynamicObject(17026, -979.24609, -1998.72046, 69.83926,   0.00000, 0.00000, 343.99292);
	CreateDynamicObject(17026, -963.64508, -1989.09973, 61.33926,   0.00000, 36.00000, 347.99292);
	CreateDynamicObject(17026, -965.52057, -1960.29883, 61.33926,   0.00000, 35.99670, 347.99194);
	CreateDynamicObject(17026, -789.93164, -2218.74121, 19.09927,   0.00000, 0.00000, 19.98413);
	CreateDynamicObject(17026, -766.76465, -2210.77344, 19.09927,   0.00000, 0.00000, 19.98413);
	CreateDynamicObject(8210, -749.32629, -2149.97827, 27.37043,   2.25000, 358.75000, 340.06006);
	CreateDynamicObject(8314, -788.94098, -2141.65186, 26.08540,   357.00000, 357.03000, 77.77502);
	CreateDynamicObject(17026, -727.63940, -2155.48633, 18.24929,   0.00000, 0.00000, 280.28430);
	CreateDynamicObject(8210, -821.44055, -2120.26514, 25.13041,   4.50000, 358.99756, 340.05981);
	CreateDynamicObject(8210, -828.15625, -2132.99854, 24.23042,   4.49890, 358.99475, 340.05981);
	CreateDynamicObject(3884, -798.37817, -2121.99487, 38.81383,   0.50000, 4.50000, 159.51599);
	CreateDynamicObject(1622, -787.17059, -2151.89746, 30.11516,   19.86499, 0.00000, 0.00000);
	CreateDynamicObject(3877, -797.47955, -2146.35107, 23.97787,   0.00000, 0.00000, 330.09009);
	CreateDynamicObject(3877, -786.13147, -2152.41772, 24.32786,   0.00000, 0.00000, 330.08972);
	CreateDynamicObject(3864, -785.78802, -2153.02319, 27.09983,   357.00000, 355.06000, 39.88000);
	CreateDynamicObject(3864, -799.38745, -2145.89697, 27.09983,   356.74524, 359.05615, 79.75488);
	CreateDynamicObject(3885, -747.87854, -2143.05664, 25.03481,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3884, -747.91284, -2142.60571, 25.05213,   0.00000, 0.00000, 29.91000);
	CreateDynamicObject(3885, -828.32745, -2102.32593, 70.19634,   0.25000, 355.31000, 230.39038);
	CreateDynamicObject(3884, -828.56885, -2102.23364, 70.01847,   359.25000, 357.00000, 210.44495);
	CreateDynamicObject(896, -811.52307, -1816.70593, 93.65082,   5.00000, 351.07501, 340.06006);
	CreateDynamicObject(896, -805.99274, -1811.58643, 92.00079,   102.62378, 52.87860, 169.48975);
	CreateDynamicObject(896, -802.34473, -1816.68164, 97.58078,   102.61780, 52.87170, 299.09180);
	CreateDynamicObject(3277, -736.92181, -1791.86194, 118.35867,   359.51501, 11.91000, 0.00000);
	CreateDynamicObject(3884, -736.84979, -1792.00720, 118.21545,   2.00000, 11.91000, 119.64001);
	CreateDynamicObject(3277, -622.91437, -1821.36755, 81.17658,   9.44000, 2.50000, 358.01501);
	CreateDynamicObject(3277, -639.51465, -1826.26855, 80.57655,   13.43176, 0.49390, 17.94617);
	CreateDynamicObject(3884, -639.43933, -1826.61279, 80.30659,   348.08533, 3.96606, 220.41870);
	CreateDynamicObject(3884, -622.63684, -1821.60425, 80.93163,   348.08533, 3.96606, 180.53876);
	CreateDynamicObject(3277, -486.98087, -1997.82031, 53.40930,   351.76501, 1.75000, 0.00000);
	CreateDynamicObject(3884, -487.05396, -1997.85425, 53.22843,   359.25000, 352.05994, 318.09009);
	CreateDynamicObject(3884, -486.79697, -1945.53040, 47.95836,   347.32251, 359.99683, 347.99707);
	CreateDynamicObject(1622, -511.49945, -1961.95471, 56.21470,   0.00000, 0.00000, 200.48047);
	CreateDynamicObject(1622, -469.53818, -2039.90234, 56.65775,   0.00000, 0.00000, 220.41858);
	CreateDynamicObject(3277, -489.10556, -2084.98193, 85.95040,   351.76025, 1.74683, 0.00000);
	CreateDynamicObject(3884, -488.76166, -2084.99023, 85.74897,   350.57251, 355.30688, 346.99701);
	CreateDynamicObject(5184, -580.85938, -1883.32227, 56.33160,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5184, -580.95898, -1903.57227, 56.35660,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5184, -577.90234, -1964.03711, 40.16666,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5184, -577.87000, -1817.51978, 40.16666,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(5184, -603.89844, -1818.16309, 40.14167,   0.00000, 0.00000, 270.78552);
	CreateDynamicObject(5184, -607.83594, -1878.85059, 56.40660,   0.00000, 0.00000, 270.03296);
	CreateDynamicObject(5184, -607.63281, -1898.73438, 56.38160,   0.00000, 0.00000, 270.03296);
	CreateDynamicObject(10792, -459.91562, -1847.26111, -15.10456,   336.09143, 90.16498, 270.51917);
	CreateDynamicObject(10792, -464.89740, -1816.36316, -25.84457,   336.08826, 270.00000, 270.51636);
	CreateDynamicObject(5342, -566.35614, -1969.17419, 37.48001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(964, -802.35449, -2140.04883, 22.29717,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(5184, -611.31897, -1964.14697, 40.16666,   0.00000, 0.00000, 269.45984);
	CreateDynamicObject(5184, -585.83173, -1964.21558, 40.14169,   0.00000, 0.00000, 89.75000);
	CreateDynamicObject(5184, -612.54633, -1818.09216, 40.16666,   0.00000, 0.00000, 271.44116);
	CreateDynamicObject(5184, -607.46692, -1834.31543, -3.70339,   180.00000, 0.00000, 89.99841);
	CreateDynamicObject(5184, -581.29517, -1946.24963, -3.72838,   179.99451, 0.00000, 270.03296);
	CreateDynamicObject(5184, -698.04883, -1833.38477, 35.52167,   0.00000, 342.14172, 0.41748);
	CreateDynamicObject(5184, -676.42578, -1777.91113, 56.33160,   0.00000, 0.00000, 270.03296);
	CreateDynamicObject(5184, -646.56543, -1815.34375, 39.94165,   0.00000, 0.00000, 270.93384);
	CreateDynamicObject(8038, -650.13184, -1833.58496, 36.49909,   0.00000, 0.00000, 0.74158);
	CreateDynamicObject(896, -563.31934, -1813.15332, 34.59718,   0.00000, 0.00000, 96.71265);
	CreateDynamicObject(16101, -644.05682, -1869.10400, 54.77001,   0.00000, 0.00000, 270.27026);
	CreateDynamicObject(1649, -646.33545, -1869.14795, 58.28574,   0.00000, 0.00000, 1.00000);
	CreateDynamicObject(1649, -650.68579, -1869.22278, 58.28574,   0.00000, 0.00000, 0.99976);
	CreateDynamicObject(16101, -652.85291, -1869.24878, 54.77001,   0.00000, 0.00000, 29.91000);
	CreateDynamicObject(1649, -652.90564, -1866.97815, 58.28574,   0.00000, 0.00000, 270.51990);
	CreateDynamicObject(1649, -652.97943, -1862.58911, 58.28574,   0.00000, 0.00000, 271.26892);
	CreateDynamicObject(16101, -652.97186, -1860.37915, 54.77001,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -644.09631, -1860.26440, 54.77001,   0.00000, 0.00000, 310.15015);
	CreateDynamicObject(1649, -644.03778, -1862.53735, 58.28574,   0.00000, 0.00000, 91.30273);
	CreateDynamicObject(1649, -643.98663, -1866.92798, 58.28574,   0.00000, 0.00000, 90.05188);
	CreateDynamicObject(1649, -646.33496, -1869.14746, 58.28574,   0.00000, 0.00000, 181.54016);
	CreateDynamicObject(1649, -650.68555, -1869.22266, 58.28574,   0.00000, 0.00000, 181.54016);
	CreateDynamicObject(1649, -652.88184, -1866.96875, 58.28574,   0.00000, 0.00000, 90.80887);
	CreateDynamicObject(1649, -652.97852, -1862.58887, 58.28574,   0.00000, 0.00000, 91.80887);
	CreateDynamicObject(1649, -650.70483, -1860.36560, 58.28574,   0.00000, 0.00000, 0.49878);
	CreateDynamicObject(1649, -646.27692, -1860.33691, 58.28574,   0.00000, 0.00000, 0.24438);
	CreateDynamicObject(1649, -650.70410, -1860.36523, 58.28574,   0.00000, 0.00000, 181.03448);
	CreateDynamicObject(1649, -646.27637, -1860.33691, 58.28574,   0.00000, 0.00000, 180.78192);
	CreateDynamicObject(1649, -644.03711, -1862.53711, 58.28574,   0.00000, 0.00000, 271.09192);
	CreateDynamicObject(1649, -644.00555, -1866.85022, 58.28574,   0.00000, 0.00000, 270.08679);
	CreateDynamicObject(3095, -648.52295, -1864.80457, 60.34920,   180.00000, 0.00000, 1.00000);
	CreateDynamicObject(3095, -648.47266, -1864.80371, 55.92422,   179.99451, 0.00000, 0.99976);
	CreateDynamicObject(3394, -646.56244, -1861.17871, 55.92066,   0.00000, 0.00000, 89.73001);
	CreateDynamicObject(3396, -650.24164, -1861.20984, 55.92065,   0.00000, 0.00000, 89.73001);
	CreateDynamicObject(3397, -646.78064, -1868.34741, 55.92098,   0.00000, 0.00000, 270.27026);
	CreateDynamicObject(3395, -650.31000, -1868.35620, 55.92119,   0.00000, 0.00000, 270.27026);
	CreateDynamicObject(1714, -646.46655, -1866.99866, 55.92110,   0.00000, 0.00000, 340.06006);
	CreateDynamicObject(1714, -650.10315, -1862.73157, 56.12645,   0.00000, 0.00000, 180.54004);
	CreateDynamicObject(1595, -646.86792, -1865.46912, 65.20831,   0.00000, 0.00000, 59.82001);
	CreateDynamicObject(3884, -643.12225, -1864.81104, 48.44750,   0.00000, 0.00000, 270.27026);
	CreateDynamicObject(3884, -654.00964, -1864.89722, 48.44750,   0.00000, 0.00000, 90.80927);
	CreateDynamicObject(2986, -644.35150, -1864.65442, 55.95610,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(1428, -644.61304, -1864.64490, 55.31370,   0.00000, 0.00000, 270.27026);
	CreateDynamicObject(1569, -650.30090, -1874.56201, 21.05883,   0.00000, 0.00000, 0.25000);
	CreateDynamicObject(2993, -652.95013, -1860.39417, 64.67078,   358.50000, 356.03003, 79.76001);
	CreateDynamicObject(8210, -585.98108, -1854.87085, 40.62482,   0.00000, 0.00000, 89.98004);
	CreateDynamicObject(8210, -585.91699, -1926.33301, 40.62482,   0.00000, 0.00000, 89.97803);
	CreateDynamicObject(8210, -585.73486, -1799.55249, 40.62582,   0.00000, 0.00000, 89.48001);
	CreateDynamicObject(16093, -622.24609, -1891.49707, 41.57962,   0.00000, 0.00000, 90.29663);
	CreateDynamicObject(16638, -621.28418, -1891.40820, 39.80091,   0.00000, 0.00000, 90.21973);
	CreateDynamicObject(3279, -590.94604, -1929.40137, 37.52379,   0.00000, 0.00000, 180.54053);
	CreateDynamicObject(3279, -590.83099, -1856.66162, 37.52379,   0.00000, 0.00000, 180.53833);
	CreateDynamicObject(3277, -623.35803, -1870.95264, 38.14878,   0.00000, 0.00000, 180.54053);
	CreateDynamicObject(3277, -623.44623, -1912.23804, 38.14878,   0.00000, 0.00000, 351.10840);
	CreateDynamicObject(3884, -623.44043, -1870.89453, 38.17376,   0.00000, 0.00000, 300.17944);
	CreateDynamicObject(3884, -623.46973, -1912.20081, 38.17376,   0.00000, 0.00000, 240.35962);
	CreateDynamicObject(2985, -619.01172, -1896.15625, 41.63743,   0.00000, 0.00000, 1.98303);
	CreateDynamicObject(2985, -618.99707, -1886.62988, 41.63743,   0.00000, 0.00000, 358.01147);
	CreateDynamicObject(8877, -586.19238, -1879.08118, 42.56804,   0.00000, 0.00000, 109.67001);
	CreateDynamicObject(8877, -586.10449, -1900.64648, 42.56804,   0.00000, 0.00000, 149.53494);
	CreateDynamicObject(3577, -623.54120, -1904.00513, 38.30951,   0.00000, 0.00000, 240.36035);
	CreateDynamicObject(3576, -628.07880, -1907.21021, 39.01967,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(3884, -622.60352, -1891.43262, 44.46241,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(4199, -646.44238, -1827.67969, 39.51126,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(8615, -629.71100, -1827.93860, 39.87346,   0.00000, 0.00000, 90.73001);
	CreateDynamicObject(3277, -634.75964, -1830.05762, 41.47462,   0.00000, 0.00000, 340.06006);
	CreateDynamicObject(3277, -657.90234, -1830.01978, 41.52462,   0.00000, 0.00000, 300.17993);
	CreateDynamicObject(3884, -634.70953, -1830.28699, 41.44959,   0.00000, 0.00000, 200.48047);
	CreateDynamicObject(3884, -658.11023, -1830.33655, 41.44959,   0.00000, 0.00000, 150.62863);
	CreateDynamicObject(3884, -590.63397, -1856.65320, 53.15189,   0.00000, 0.00000, 270.22351);
	CreateDynamicObject(3884, -590.94794, -1929.30713, 53.15189,   0.00000, 0.00000, 270.21973);
	CreateDynamicObject(4199, -646.12207, -1809.32227, 42.97121,   0.00000, 0.00000, 180.53833);
	CreateDynamicObject(3934, -646.04968, -1829.37671, 41.62471,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3877, -560.05627, -1883.65637, 15.68549,   180.00000, 0.00000, 180.54053);
	CreateDynamicObject(3877, -560.05957, -1898.05762, 15.68549,   179.99451, 0.00000, 180.53284);
	CreateDynamicObject(3877, -628.57776, -1898.08716, 15.73549,   179.99451, 0.00000, 180.53833);
	CreateDynamicObject(3877, -628.59631, -1884.67432, 15.73549,   179.99451, 0.00000, 180.53833);
	CreateDynamicObject(3864, -556.26855, -1899.19922, 8.85381,   0.00000, 0.00000, 229.30664);
	CreateDynamicObject(3864, -556.24805, -1881.84668, 9.12881,   0.00000, 0.00000, 139.57581);
	CreateDynamicObject(3109, -595.62128, -1882.92566, 9.27135,   0.00000, 0.00000, 90.72510);
	CreateDynamicObject(3109, -622.29688, -1896.39355, 38.71537,   0.00000, 0.00000, 90.46692);
	CreateDynamicObject(11479, -600.78821, -1867.90625, 5.25008,   0.00000, 0.00000, 181.04053);
	CreateDynamicObject(2985, -589.92639, -1884.34875, 8.07977,   0.00000, 0.00000, 350.03000);
	CreateDynamicObject(3264, -559.64624, -1890.24072, 15.34943,   0.00000, 0.00000, 89.73001);
	CreateDynamicObject(3265, -553.45178, -1899.22253, 5.57364,   0.00000, 0.00000, 129.61005);
	CreateDynamicObject(3265, -541.85742, -1880.87793, 5.80904,   0.00000, 0.00000, 49.83948);
	CreateDynamicObject(3262, -533.66962, -1902.44885, 5.18547,   5.47000, 7.00000, 109.66553);
	CreateDynamicObject(3567, -673.39154, -1837.10950, 38.32753,   0.00000, 0.00000, 282.22522);
	CreateDynamicObject(3066, -676.55298, -1837.80066, 40.26435,   0.00000, 0.00000, 280.74023);
	CreateDynamicObject(2975, -669.94098, -1836.15674, 39.21008,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(964, -666.07410, -1835.58264, 39.21008,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(964, -667.68420, -1836.66296, 39.21008,   0.00000, 0.00000, 29.91000);
	CreateDynamicObject(964, -666.92218, -1836.59241, 37.44879,   0.00000, 0.00000, 49.84479);
	CreateDynamicObject(925, -663.17694, -1830.53003, 38.51069,   0.00000, 0.00000, 89.73001);
	CreateDynamicObject(1348, -663.25836, -1832.51160, 38.15131,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(12930, -691.17352, -1831.79688, 38.25398,   0.00000, 0.00000, 246.40540);
	CreateDynamicObject(923, -671.35364, -1840.76074, 38.32848,   0.00000, 0.00000, 29.91000);
	CreateDynamicObject(3046, -667.74316, -1839.34338, 37.83479,   0.00000, 0.00000, 340.06006);
	CreateDynamicObject(1431, -669.38416, -1839.48975, 37.99640,   0.00000, 0.00000, 260.29944);
	CreateDynamicObject(2669, -624.26563, -1824.17896, 38.86407,   0.00000, 0.00000, 276.22400);
	CreateDynamicObject(964, -622.98151, -1823.38208, 37.64642,   0.00000, 0.00000, 95.68011);
	CreateDynamicObject(3279, -695.83850, -1836.83533, 37.32378,   0.00000, 0.00000, 358.01498);
	CreateDynamicObject(1431, -665.13434, -1831.37903, 37.99640,   0.00000, 0.00000, 120.71924);
	CreateDynamicObject(3877, -557.72095, -1900.63867, 39.30049,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -557.83557, -1880.33508, 39.30049,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -648.17938, -1869.36597, 48.21325,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -648.51965, -1860.11938, 48.21325,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -630.89258, -1881.79590, 39.33486,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -630.73260, -1901.68408, 39.33486,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(987, -573.75079, -1952.96936, 38.24284,   0.00000, 1.71997, 185.45996);
	CreateDynamicObject(987, -561.95660, -1951.81714, 38.26784,   0.00000, 359.96936, 185.45471);
	CreateDynamicObject(896, -556.30884, -1955.58777, 39.17990,   226.87506, 0.00000, 250.33032);
	CreateDynamicObject(3578, -595.27539, -1949.66174, 38.22383,   0.00000, 0.00000, 89.73004);
	CreateDynamicObject(3578, -605.30078, -1949.65259, 38.22383,   0.00000, 0.00000, 89.72534);
	CreateDynamicObject(3578, -615.60022, -1949.63159, 38.22383,   0.00000, 0.00000, 89.72534);
	CreateDynamicObject(3578, -625.64240, -1949.62134, 38.22383,   0.00000, 0.00000, 89.72534);
	CreateDynamicObject(3578, -610.49738, -1955.04626, 38.22383,   0.00000, 0.00000, 359.99536);
	CreateDynamicObject(3578, -620.79803, -1955.03259, 38.22383,   0.00000, 0.00000, 359.99451);
	CreateDynamicObject(3578, -600.21411, -1955.06189, 38.22383,   0.00000, 0.00000, 359.99451);
	CreateDynamicObject(3277, -544.67590, -1960.02563, 49.78876,   0.00000, 0.00000, 165.52002);
	CreateDynamicObject(3884, -544.67346, -1959.88562, 49.79920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3265, -584.77814, -1881.58594, 37.52379,   0.00000, 0.00000, 89.72498);
	CreateDynamicObject(3265, -584.33984, -1899.11609, 37.52379,   0.00000, 0.00000, 89.71985);
	CreateDynamicObject(3264, -584.34412, -1900.44580, 37.24878,   0.00000, 0.00000, 89.73001);
	CreateDynamicObject(3264, -584.75165, -1880.27417, 37.24878,   0.00000, 0.00000, 89.72534);
	CreateDynamicObject(5184, -764.74634, -2045.25159, 35.66814,   0.00000, 0.00000, 111.58984);
	CreateDynamicObject(5184, -678.80609, -2034.42847, 35.69320,   0.00000, 0.00000, 201.31348);
	CreateDynamicObject(8171, -764.05396, -2049.45386, 16.78535,   0.00000, 0.00000, 21.92499);
	CreateDynamicObject(5184, -770.01782, -2008.02209, 25.03316,   0.00000, 0.00000, 111.58984);
	CreateDynamicObject(9241, -812.16992, -1975.09082, 7.80925,   0.00000, 0.00000, 111.40137);
	CreateDynamicObject(9241, -781.35779, -1962.66675, 7.80925,   0.00000, 0.00000, 111.40500);
	CreateDynamicObject(3268, -715.90729, -2044.94385, 16.83539,   0.00000, 0.00000, 20.69000);
	CreateDynamicObject(3066, -706.12854, -2064.59106, 17.88967,   0.00000, 0.00000, 19.94000);
	CreateDynamicObject(3066, -710.32129, -2066.22070, 17.88967,   0.00000, 0.00000, 35.85938);
	CreateDynamicObject(2974, -710.12262, -2060.99194, 16.83539,   0.00000, 0.00000, 9.97000);
	CreateDynamicObject(964, -716.17645, -2065.17749, 16.83539,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(964, -714.84808, -2066.70605, 16.83539,   0.00000, 0.00000, 310.15015);
	CreateDynamicObject(964, -713.41895, -2073.30542, 16.83539,   0.00000, 0.00000, 350.02942);
	CreateDynamicObject(14782, -710.86108, -2058.48682, 17.85144,   0.00000, 0.00000, 200.48047);
	CreateDynamicObject(3884, -724.38184, -2048.09180, 25.19037,   0.00000, 0.00000, 109.66470);
	CreateDynamicObject(3277, -824.91376, -2006.95227, 17.31032,   0.00000, 0.00000, 330.08972);
	CreateDynamicObject(3884, -824.98169, -2007.01062, 17.28533,   0.00000, 0.00000, 340.05981);
	CreateDynamicObject(3406, -744.42993, -1887.43823, 3.33174,   0.00000, 0.00000, 307.40015);
	CreateDynamicObject(3406, -757.54871, -1896.85950, 3.33174,   0.00000, 0.00000, 305.89722);
	CreateDynamicObject(3406, -770.09503, -1906.00195, 3.33174,   0.00000, 0.00000, 306.89209);
	CreateDynamicObject(3877, -774.68555, -1981.76758, 15.30109,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(3877, -803.21991, -1993.12158, 15.27609,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(3877, -773.40625, -1940.09570, 7.44109,   0.00000, 0.00000, 290.20386);
	CreateDynamicObject(3877, -821.44067, -1959.20496, 7.44109,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(3877, -736.64313, -2033.03223, 7.34109,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(16641, -693.20300, -2061.64209, 18.31525,   0.00000, 0.00000, 353.04492);
	CreateDynamicObject(3877, -732.69983, -2086.06616, 15.27610,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(3877, -761.77936, -2096.36670, 15.27610,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(3877, -775.25696, -2062.75098, 15.27610,   0.00000, 0.00000, 290.20386);
	CreateDynamicObject(3877, -759.24194, -2020.00952, 15.27610,   0.00000, 0.00000, 290.20386);
	CreateDynamicObject(3877, -746.55786, -2051.61621, 15.27610,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(3877, -788.06879, -2030.96387, 15.27610,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(4597, -606.77948, -1826.07776, 37.81522,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(10183, -606.58398, -1830.25000, 37.53574,   359.75000, 0.25000, 45.83496);
	CreateDynamicObject(3109, -631.73883, -1854.07300, 22.43704,   0.00000, 0.00000, 90.47241);
	CreateDynamicObject(3109, -790.84210, -1985.80371, 7.35035,   0.00000, 0.00000, 290.95239);
	CreateDynamicObject(3109, -747.69043, -2030.67969, 7.34192,   0.00000, 0.00000, 201.22009);
	CreateDynamicObject(3265, -528.46582, -1881.52539, 5.30904,   356.02606, 15.87781, 49.83948);
	CreateDynamicObject(3264, -543.53381, -1902.08948, 5.64851,   3.50000, 13.89499, 119.64001);
	CreateDynamicObject(3265, -786.15143, -2154.52930, 22.64707,   0.00000, 0.00000, 300.16956);
	CreateDynamicObject(3265, -799.27332, -2147.99951, 22.64707,   0.00000, 0.00000, 29.89838);
	CreateDynamicObject(3264, -801.59796, -2148.14966, 21.78659,   0.00000, 0.00000, 350.03000);
	CreateDynamicObject(3264, -817.70496, -2190.01660, 21.06160,   0.00000, 0.00000, 260.30017);
	CreateDynamicObject(3262, -807.28992, -2154.64453, 21.60606,   0.00000, 0.00000, 346.06006);
	CreateDynamicObject(3262, -785.46625, -2160.90186, 21.50606,   3.49915, 7.93762, 286.23779);
	CreateDynamicObject(16093, -763.62500, -2135.94922, 28.43792,   0.00000, 358.74756, 243.29187);
	CreateDynamicObject(3279, -622.04211, -1861.58105, 37.39878,   0.00000, 0.00000, 270.27026);
	CreateDynamicObject(3279, -621.97070, -1920.71350, 37.39878,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(16638, -764.53552, -2135.62598, 26.66682,   0.00000, 358.75000, 243.28479);
	CreateDynamicObject(2985, -768.19177, -2139.08862, 28.62783,   0.00000, 0.00000, 169.48999);
	CreateDynamicObject(2985, -764.41125, -2130.63647, 28.37783,   0.00000, 0.00000, 175.94104);
	CreateDynamicObject(1596, -763.42828, -2136.44482, 34.11982,   0.00000, 0.00000, 310.15015);
	CreateDynamicObject(973, -635.22900, -1855.41553, 36.61515,   0.00000, 341.88367, 0.00000);
	CreateDynamicObject(2680, -600.01880, -1986.64600, 66.79069,   27.59500, 191.19000, 119.64023);
	CreateDynamicObject(3092, -600.04309, -1986.75757, 66.03757,   357.89490, 0.00000, 101.77530);
	CreateDynamicObject(3877, -788.98090, -1987.16772, 15.30109,   0.00000, 0.00000, 290.20935);
	CreateDynamicObject(964, -661.07397, -1859.37915, 21.05883,   0.00000, 0.00000, 29.91000);
	CreateDynamicObject(964, -662.79413, -1859.18408, 21.05883,   0.00000, 0.00000, 350.02478);
	CreateDynamicObject(964, -662.03900, -1861.11047, 21.05883,   0.00000, 0.00000, 350.02441);
	CreateDynamicObject(964, -662.16974, -1859.88562, 22.02457,   0.00000, 0.00000, 49.84436);
	CreateDynamicObject(964, -620.25305, -1823.83850, 37.52379,   0.00000, 0.00000, 49.84436);
	CreateDynamicObject(964, -591.83411, -1933.77686, 37.52379,   0.00000, 0.00000, 49.83948);
	CreateDynamicObject(964, -590.45746, -1934.97290, 37.52379,   0.00000, 0.00000, 89.71948);
	CreateDynamicObject(964, -592.61658, -1935.77820, 37.52379,   0.00000, 0.00000, 159.50439);
	CreateDynamicObject(2985, -592.07233, -1934.93567, 37.47379,   0.00000, 0.00000, 79.76001);
	CreateDynamicObject(2985, -587.31445, -1925.73010, 47.54723,   0.00000, 0.00000, 49.84525);
	CreateDynamicObject(2985, -587.28906, -1853.01074, 47.54723,   0.00000, 0.00000, 9.96497);
	CreateDynamicObject(2985, -618.55414, -1857.99255, 49.63316,   0.00000, 0.00000, 359.99463);
	CreateDynamicObject(2945, -620.40173, -1861.28113, 47.05572,   180.00000, 90.00000, 269.77026);
	CreateDynamicObject(2945, -622.36835, -1859.89319, 47.05572,   179.99451, 90.00000, 359.49911);
	CreateDynamicObject(2945, -622.26538, -1919.00342, 47.13071,   179.99451, 90.00000, 359.49463);
	CreateDynamicObject(2945, -620.25232, -1920.29822, 47.10571,   179.99451, 90.00000, 269.76489);
	CreateDynamicObject(964, -622.86786, -1824.73242, 37.64642,   0.00000, 0.00000, 95.67993);
	CreateDynamicObject(964, -624.93365, -1824.10962, 37.64642,   0.00000, 0.00000, 135.55994);
	CreateDynamicObject(964, -623.59290, -1824.03857, 38.61216,   0.00000, 0.00000, 165.46484);
	CreateDynamicObject(964, -628.15302, -1823.31116, 37.52379,   0.00000, 0.00000, 79.74948);
	CreateDynamicObject(964, -628.15234, -1823.31055, 38.44877,   0.00000, 0.00000, 59.80426);
	CreateDynamicObject(964, -629.53033, -1824.59131, 37.52379,   0.00000, 0.00000, 129.59427);
	CreateDynamicObject(2985, -618.51141, -1917.11658, 49.63316,   0.00000, 0.00000, 9.96448);
	CreateDynamicObject(3884, -622.06879, -1861.73767, 53.02688,   0.00000, 0.00000, 280.23950);
	CreateDynamicObject(3884, -622.20526, -1920.72485, 53.00188,   0.00000, 0.00000, 290.20923);
	CreateDynamicObject(2886, -638.64807, -1833.37866, 39.17264,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2886, -646.29834, -1833.42969, 39.17264,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2886, -654.00726, -1833.49927, 39.17264,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2886, -621.85913, -1896.37390, 39.24015,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2886, -648.38629, -1874.48572, 22.45575,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2886, -597.86133, -1882.92542, 9.34815,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16093, -632.17084, -1821.62354, 74.29054,   1.25000, 0.00000, 8.69653);
	CreateDynamicObject(896, -623.48187, -1815.52771, 74.51894,   8.50000, 8.23486, 302.81531);
	CreateDynamicObject(896, -642.47748, -1819.19629, 72.28380,   87.26794, 8.23425, 125.71057);
	CreateDynamicObject(1649, -631.98199, -1823.67529, 74.90836,   0.00000, 0.00000, 188.67993);
	CreateDynamicObject(1649, -628.22760, -1821.80237, 74.90836,   0.00000, 0.00000, 224.60425);
	CreateDynamicObject(1649, -636.11481, -1822.97107, 74.90836,   0.00000, 0.00000, 151.82410);
	CreateDynamicObject(16101, -634.19952, -1823.99634, 76.85999,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -629.81311, -1823.33887, 76.85999,   179.99451, 0.00000, 99.70001);
	CreateDynamicObject(16101, -628.85919, -1822.35986, 76.85999,   179.99451, 0.00000, 149.54544);
	CreateDynamicObject(16101, -628.88361, -1822.18591, 76.85999,   179.99451, 0.00000, 149.54041);
	CreateDynamicObject(16101, -628.90802, -1822.01208, 76.85999,   179.99451, 0.00000, 149.54041);
	CreateDynamicObject(16101, -635.27100, -1823.34387, 76.85999,   179.99451, 0.00000, 292.33020);
	CreateDynamicObject(16101, -635.29132, -1823.16870, 76.85999,   179.99451, 0.00000, 285.28406);
	CreateDynamicObject(16101, -635.33569, -1822.99976, 76.85999,   179.99451, 0.00000, 10.00854);
	CreateDynamicObject(1508, -635.62817, -1819.50513, 75.36075,   0.50000, 0.00000, 8.25003);
	CreateDynamicObject(1508, -629.51855, -1818.57422, 75.36075,   0.74707, 0.00000, 8.74512);
	CreateDynamicObject(2886, -629.27380, -1821.41602, 75.59839,   359.75000, 1.50000, 277.97522);
	CreateDynamicObject(2986, -810.97729, -1840.08740, 8.93614,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3872, -551.42749, -1894.44336, 9.66845,   0.00000, 0.00000, 224.38477);
	CreateDynamicObject(3872, -550.75073, -1885.76404, 9.96846,   0.00000, 0.00000, 144.62952);
	CreateDynamicObject(3872, -579.92871, -1898.57715, 43.36511,   0.00000, 0.00000, 198.48450);
	CreateDynamicObject(3872, -580.33496, -1882.17383, 43.36511,   0.00000, 0.00000, 152.64954);
	CreateDynamicObject(3872, -799.98401, -2152.62085, 27.87320,   0.00000, 0.00000, 87.86505);
	CreateDynamicObject(3872, -791.44531, -2157.39233, 27.79820,   0.00000, 0.00000, 39.95306);
	CreateDynamicObject(3877, -729.13123, -2039.68274, 16.13613,   0.00000, 0.00000, 290.20386);
	CreateDynamicObject(3877, -722.25769, -2057.84888, 16.13613,   0.00000, 0.00000, 290.20386);
	CreateDynamicObject(10763, -464.77533, -2024.38977, 16.74827,   0.00000, 0.00000, 320.12012);
	CreateDynamicObject(10763, -459.80600, -2053.03271, 18.14826,   0.00000, 0.00000, 320.11963);
	CreateDynamicObject(973, -644.31610, -1855.39893, 33.69017,   0.00000, 342.13086, 0.00000);
	CreateDynamicObject(973, -653.39441, -1855.38745, 30.74017,   359.75000, 341.88086, 0.00000);
	CreateDynamicObject(973, -662.49414, -1855.44434, 27.74017,   0.00000, 342.13074, 0.00000);
	CreateDynamicObject(973, -671.59869, -1855.46423, 24.84018,   0.00000, 342.13074, 0.00000);
	CreateDynamicObject(973, -680.67560, -1855.46582, 21.94018,   0.00000, 342.13074, 0.00000);
	CreateDynamicObject(973, -689.74689, -1855.45813, 18.99020,   0.00000, 342.13074, 0.00000);
	CreateDynamicObject(973, -698.91766, -1855.49963, 16.04021,   0.00000, 342.13074, 0.00000);
	CreateDynamicObject(973, -630.32019, -1859.97266, 38.11400,   0.00000, 0.00000, 270.27026);
	CreateDynamicObject(973, -630.26831, -1869.66687, 38.11400,   0.00000, 0.00000, 269.76917);
	CreateDynamicObject(973, -630.33447, -1879.39233, 38.11400,   0.00000, 0.00000, 269.76917);
	CreateDynamicObject(973, -630.32520, -1889.38086, 38.11400,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(973, -630.34113, -1899.29492, 38.11400,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(973, -630.35681, -1909.29968, 38.11400,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(973, -630.34772, -1919.49841, 38.11400,   0.00000, 0.00000, 270.26917);
	CreateDynamicObject(973, -630.31458, -1929.53882, 38.11400,   0.00000, 0.00000, 269.76917);
	CreateDynamicObject(973, -630.23132, -1939.43335, 38.11400,   0.00000, 0.00000, 270.76379);
	CreateDynamicObject(973, -630.07068, -1949.18665, 38.11400,   0.00000, 0.00000, 269.51355);
	CreateDynamicObject(973, -630.18573, -1958.94238, 38.11400,   0.00000, 0.00000, 269.51111);
	CreateDynamicObject(3576, -626.16644, -1898.80920, 39.01967,   0.00000, 0.00000, 330.08899);
	CreateDynamicObject(2986, -620.42114, -1891.57190, 41.72849,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(2068, -600.47241, -1950.05225, 42.64447,   180.00000, 0.00000, 89.73004);
	CreateDynamicObject(16101, -596.25854, -1953.41748, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -604.57953, -1953.38037, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -606.17871, -1953.40234, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2068, -610.40674, -1950.11902, 42.64447,   179.99451, 0.00000, 89.72534);
	CreateDynamicObject(16101, -614.69421, -1953.30676, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -616.64355, -1953.30981, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2068, -620.76495, -1950.13538, 42.64447,   179.99451, 0.00000, 89.72534);
	CreateDynamicObject(16101, -624.96545, -1953.35486, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -624.92682, -1946.72681, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -616.72668, -1946.76941, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -614.57776, -1946.84363, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -606.30029, -1946.78552, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -604.52448, -1946.78003, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16101, -596.24799, -1946.79639, 32.55876,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2068, -600.47168, -1950.05176, 42.41954,   0.00000, 0.00000, 89.72534);
	CreateDynamicObject(2068, -610.40625, -1950.11816, 42.64447,   0.00000, 0.00000, 89.72534);
	CreateDynamicObject(2068, -620.76465, -1950.13477, 42.64447,   0.00000, 0.00000, 89.72534);
	CreateDynamicObject(3877, -595.30988, -1944.06116, 36.84875,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -605.38489, -1944.04150, 36.84875,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -615.58600, -1943.88232, 36.84875,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -625.58710, -1943.93933, 36.84875,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3109, -645.34473, -1825.06445, 42.78167,   0.00000, 0.00000, 90.46143);
	CreateDynamicObject(1622, -640.20135, -1825.08862, 45.56661,   0.00000, 0.00000, 109.67001);
	CreateDynamicObject(1622, -585.41870, -1823.57385, 44.98744,   0.00000, 0.00000, 137.45544);
	CreateDynamicObject(1616, -589.08173, -1927.00439, 53.88639,   0.00000, 0.00000, 240.36035);
	CreateDynamicObject(1616, -588.87292, -1854.28369, 53.91140,   0.00000, 0.00000, 240.35889);
	CreateDynamicObject(1616, -819.02631, -1996.50464, 16.34488,   0.00000, 0.00000, 250.32886);
	CreateDynamicObject(1616, -729.04718, -2037.27612, 23.12468,   0.00000, 0.00000, 209.69348);
	CreateDynamicObject(1616, -767.44305, -2137.58789, 32.05113,   0.00000, 0.00000, 9.21008);
	CreateDynamicObject(1616, -656.68451, -1874.21057, 24.81488,   0.00000, 0.00000, 9.20654);
	CreateDynamicObject(1616, -697.33295, -1843.12622, 36.56889,   0.00000, 0.00000, 88.96655);
	CreateDynamicObject(3872, -733.76233, -2040.18176, 22.58537,   0.00000, 0.00000, 57.82974);
	CreateDynamicObject(3864, -719.87054, -2062.13940, 21.80744,   0.00000, 0.00000, 346.54504);
	CreateDynamicObject(3864, -730.30896, -2034.57349, 21.80744,   0.00000, 0.00000, 56.33170);
	CreateDynamicObject(3872, -726.29004, -2060.82568, 22.58537,   0.00000, 0.00000, 348.03650);
	CreateDynamicObject(3526, -766.14648, -2044.09021, 16.87877,   0.00000, 0.00000, 111.65503);
	CreateDynamicObject(3526, -777.68005, -2015.41052, 16.87877,   0.00000, 0.00000, 111.65405);
	CreateDynamicObject(3526, -753.71722, -2074.97607, 16.85377,   0.00000, 0.00000, 111.65405);
	CreateDynamicObject(3526, -742.71698, -2102.30542, 16.86353,   0.00000, 0.00000, 111.65405);
	CreateDynamicObject(3666, -630.77875, -1842.68091, 37.96247,   0.00000, 0.00000, 261.38074);
	CreateDynamicObject(3666, -640.04114, -1842.63062, 37.96247,   0.00000, 0.00000, 261.37573);
	CreateDynamicObject(3666, -648.53076, -1842.51721, 37.96247,   0.00000, 0.00000, 261.37573);
	CreateDynamicObject(3666, -656.13483, -1842.63806, 37.96247,   0.00000, 0.00000, 261.37573);
	CreateDynamicObject(3666, -664.06042, -1842.61414, 37.96247,   0.00000, 0.00000, 261.37573);
	CreateDynamicObject(3666, -672.70020, -1842.60803, 37.96247,   0.00000, 0.00000, 261.37573);
	CreateDynamicObject(3666, -681.51038, -1842.52527, 37.96247,   0.00000, 0.00000, 261.37573);
	CreateDynamicObject(3666, -555.85254, -1899.20996, 5.26177,   0.00000, 0.00000, 261.36475);
	CreateDynamicObject(3666, -555.27441, -1881.75391, 5.06177,   0.00000, 0.00000, 261.36475);
	CreateDynamicObject(3666, -534.88672, -1881.73828, 4.96177,   0.00000, 0.00000, 261.36475);
	CreateDynamicObject(3666, -536.39355, -1901.26074, 4.96177,   0.00000, 0.00000, 261.36475);
	CreateDynamicObject(3666, -521.37988, -1903.64453, 4.88677,   0.00000, 0.00000, 261.36475);
	CreateDynamicObject(3666, -520.10840, -1882.83594, 4.93677,   0.00000, 0.00000, 261.35925);
	CreateDynamicObject(3502, -408.83694, -2018.55566, 38.01107,   13.92487, 0.00000, 138.36014);
	CreateDynamicObject(11103, -407.76764, -2017.91992, 36.67306,   91.44470, 0.00000, 47.06836);
	CreateDynamicObject(1508, -409.43512, -2016.86597, 37.58352,   0.00000, 0.00000, 47.59998);
	CreateDynamicObject(762, -391.00711, -2013.62878, 34.79537,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(762, -398.34909, -2003.33044, 34.79537,   0.00000, 0.00000, 49.85001);
	CreateDynamicObject(3864, -588.33569, -1826.00635, 42.29581,   0.00000, 0.00000, 49.85001);
	CreateDynamicObject(3864, -624.95264, -1826.09546, 42.29581,   0.00000, 0.00000, 119.63498);
	CreateDynamicObject(3872, -592.52960, -1831.25317, 43.01509,   0.00000, 0.00000, 51.44952);
	CreateDynamicObject(3872, -621.55652, -1831.71289, 43.06509,   0.00000, 0.00000, 121.23898);
	CreateDynamicObject(8877, -595.56665, -1958.04517, 39.79299,   0.00000, 0.00000, 259.19983);
	CreateDynamicObject(8877, -626.03540, -1957.94495, 39.79299,   0.00000, 0.00000, 199.37488);
	CreateDynamicObject(3872, -599.76044, -1952.71667, 40.54874,   0.00000, 0.00000, 308.10925);
	CreateDynamicObject(3872, -623.11633, -1951.99097, 40.54874,   0.00000, 0.00000, 243.56622);
	CreateDynamicObject(905, -409.29926, -2017.22083, 39.36328,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(905, -407.36142, -2018.88135, 39.26328,   0.00000, 0.00000, 219.34003);
	CreateDynamicObject(905, -409.57623, -2016.97205, 39.01331,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(905, -407.16043, -2019.06702, 38.91325,   0.00000, 0.00000, 219.33655);
	CreateDynamicObject(17071, -416.83466, -2024.87622, 46.38785,   0.00000, 0.00000, 19.94000);
	CreateDynamicObject(812, -408.82321, -2018.68774, 40.93929,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3502, -673.77850, -1788.35950, 41.62381,   90.00000, 0.00000, 270.00000);
	CreateDynamicObject(3502, -673.77832, -1788.35938, 50.37380,   90.00000, 0.00000, 270.00000);
	CreateDynamicObject(3502, -673.77832, -1788.35938, 59.17380,   90.00000, 0.00000, 270.00000);
	CreateDynamicObject(3502, -673.77832, -1788.35938, 67.94878,   90.00000, 0.00000, 270.00000);
	CreateDynamicObject(1508, -672.39252, -1788.43237, 69.97240,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1437, -673.85236, -1787.09387, 38.62378,   9.25000, 0.00000, 0.00000);
	CreateDynamicObject(1437, -673.85394, -1787.01868, 44.87380,   9.24500, 0.00000, 0.00000);
	CreateDynamicObject(1437, -673.85590, -1786.94348, 51.14880,   9.24500, 0.00000, 0.00000);
	CreateDynamicObject(3109, -675.22943, -1787.62317, 38.52385,   0.00000, 0.00000, 180.19153);
	CreateDynamicObject(3109, -676.33307, -1789.09668, 39.79887,   181.13000, 275.97000, 180.18677);
	CreateDynamicObject(3109, -761.43427, -2131.62695, 25.57012,   359.75000, 358.75000, 243.10010);
	CreateDynamicObject(5184, -731.62305, -1835.92920, -3.34335,   0.48499, 322.50500, 0.66370);
	CreateDynamicObject(10792, -456.00897, -1826.26917, -6.15964,   336.18005, 0.00000, 270.27026);
	CreateDynamicObject(973, -554.32007, -1818.79785, 36.39080,   358.00000, 336.13074, 178.67993);
	CreateDynamicObject(973, -545.36475, -1818.86340, 32.49077,   358.24500, 336.12659, 178.67615);
	CreateDynamicObject(973, -536.52228, -1818.83264, 28.61580,   357.99500, 336.62659, 179.91113);
	CreateDynamicObject(973, -527.59393, -1818.78247, 24.74080,   357.98950, 336.37659, 179.65930);
	CreateDynamicObject(973, -553.76508, -1846.35449, 36.49985,   357.98950, 24.01624, 1.30359);
	CreateDynamicObject(973, -544.84912, -1846.29065, 32.52482,   357.98950, 24.01611, 1.05188);
	CreateDynamicObject(973, -535.98688, -1846.24084, 28.60482,   357.98950, 24.01611, 1.04919);
	CreateDynamicObject(973, -527.06055, -1846.26782, 24.62983,   357.98950, 24.01611, 1.04919);
	CreateDynamicObject(10792, -457.99112, -1826.22900, -10.50964,   336.17615, 0.00000, 270.26917);
	CreateDynamicObject(10792, -459.19223, -1826.28882, -15.23465,   336.17615, 0.00000, 270.26917);
	CreateDynamicObject(973, -518.73169, -1818.69409, 20.91580,   358.23950, 336.87659, 179.65393);
	CreateDynamicObject(973, -518.33417, -1846.26831, 20.75485,   357.98950, 24.01611, 1.04919);
	CreateDynamicObject(3877, -513.83301, -1818.73828, 18.39159,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(3877, -513.35547, -1846.07068, 18.39159,   0.00000, 0.00000, 180.53284);
	CreateDynamicObject(8187, -482.84802, -1895.65247, -39.62024,   0.02197, 46.73584, 185.80896);
	CreateDynamicObject(8187, -494.62967, -1893.07837, -21.15024,   0.02197, 16.96082, 185.80896);
	CreateDynamicObject(8187, -432.13824, -1884.66528, -31.15513,   0.01648, 40.60547, 5.75952);
	CreateDynamicObject(3666, -454.32382, -1875.95520, -0.35678,   0.00000, 0.00000, 261.35925);
	CreateDynamicObject(3666, -452.84378, -1890.77686, -0.33178,   0.00000, 0.00000, 261.35925);
	CreateDynamicObject(3666, -465.12073, -1877.35083, 5.03281,   0.00000, 0.00000, 261.36475);
	CreateDynamicObject(3666, -461.03915, -1902.30969, 5.05781,   0.00000, 0.00000, 261.36475);
	CreateDynamicObject(3279, -797.23761, -2122.42627, 23.28121,   0.49146, 355.50000, 336.15796);
	CreateDynamicObject(16096, -804.32684, -2135.09424, 24.59208,   357.50000, 0.00000, 159.02002);
	CreateDynamicObject(3884, -803.91876, -2135.28931, 25.88618,   0.49988, 4.49890, 251.72546);
	CreateDynamicObject(964, -801.09436, -2131.55981, 23.07217,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(964, -800.21143, -2130.02026, 23.07217,   0.00000, 0.00000, 340.06006);
	CreateDynamicObject(964, -800.78015, -2130.78174, 24.03791,   0.00000, 0.00000, 344.02979);
	CreateDynamicObject(964, -797.79108, -2131.87915, 23.22217,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(964, -802.35449, -2140.04883, 23.22217,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2985, -795.49408, -2127.34473, 31.24521,   0.00000, 0.00000, 273.52026);
	CreateDynamicObject(3265, -441.90430, -1868.02344, 0.01216,   0.00000, 0.00000, 99.69543);
	CreateDynamicObject(3265, -434.12134, -1886.01904, 0.63716,   0.00000, 0.00000, 159.51050);
	CreateDynamicObject(17026, -720.38110, -2175.41089, 8.98929,   0.00000, 0.00000, 19.97314);
	CreateDynamicObject(762, -462.61871, -1880.87524, 7.37951,   0.00000, 0.00000, 338.07507);
	CreateDynamicObject(762, -468.12054, -1866.49768, 8.25237,   0.00000, 0.00000, 87.74121);
	CreateDynamicObject(762, -464.39673, -1891.90710, 6.96980,   0.00000, 0.00000, -16.00000);
	CreateDynamicObject(762, -464.76062, -1878.58826, 8.10829,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(762, -461.15616, -1889.90234, 6.12788,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(762, -455.26318, -1890.57190, 4.18232,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(762, -457.12830, -1881.14319, 3.94897,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18236, -649.74280, -2081.58618, 26.41717,   0.00000, 0.00000, 1.00000);



	// Island (114)
	CreateDynamicObject(13813, 685.83929, -2582.41064, -7.68590,   0.00000, 0.00000, -40.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11695, 747.87543, -2530.19287, -27.00000,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 825.09595, -2482.95386, -2.00000,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 816.10211, -2532.85962, -2.00000,   0.00000, 0.00000, 40.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 822.26062, -2562.66772, -2.00000,   0.00000, 0.00000, -4.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 802.07550, -2607.68579, -2.00000,   0.00000, 0.00000, 55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 769.68408, -2607.07422, -2.00000,   0.00000, 0.00000, -91.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 714.39124, -2620.55713, -2.00000,   0.00000, 0.00000, -84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 667.44006, -2606.91821, -2.00000,   0.00000, 0.00000, -40.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 680.04901, -2549.21460, -2.00000,   0.00000, 0.00000, -84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 675.41473, -2489.82178, -2.00000,   0.00000, 0.00000, -84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 670.77850, -2450.43799, -2.00000,   0.00000, 0.00000, 54.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 730.19855, -2452.75293, -2.00000,   0.00000, 0.00000, 105.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 778.71149, -2450.29321, -2.00000,   0.00000, 0.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 823.64874, -2468.44116, -2.00000,   0.00000, 0.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3599, 707.30524, -2576.83813, 8.20000,   0.00000, 0.00000, 101.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(5191, 864.39117, -2429.68311, 1.00000,   1.60000, 0.00000, -55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(5191, 962.87457, -2360.72437, 4.00000,   1.60000, 0.00000, -55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18450, 978.20502, -2350.11182, 10.62600,   0.00000, -1.60000, 35.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18450, 912.70239, -2395.97998, 8.39000,   0.00000, -1.60000, 35.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18449, 847.20532, -2441.84497, 6.15600,   0.00000, 1.60000, -145.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(689, 800.36877, -2455.32349, 4.60000,   0.00000, 0.00000, 120.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(684, 694.01031, -2603.70483, 5.90200,   0.00000, 0.00000, 120.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(648, 849.85358, -2511.08496, 0.60000,   0.00000, 0.00000, 127.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(622, 852.77234, -2467.45898, 0.60000,   0.00000, 0.00000, 120.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(689, 808.79651, -2487.67871, 4.60000,   0.00000, 0.00000, 120.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(689, 814.82739, -2535.34961, 4.60000,   0.00000, 0.00000, 120.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(689, 810.71490, -2591.33447, 4.60000,   0.00000, 0.00000, 120.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(689, 725.89703, -2469.52734, 4.60000,   0.00000, 0.00000, 55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(689, 682.77930, -2478.35034, 4.60000,   0.00000, 0.00000, 55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(709, 766.04089, -2493.94824, 1.00000,   0.00000, 0.00000, 55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(791, 684.25800, -2601.04077, 3.60000,   0.00000, 0.00000, 55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18981, 723.76001, -2518.08936, 5.06000,   0.00000, 90.00000, 114.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(4550, 709.24908, -2511.61670, -100.36000,   0.00000, 0.00000, -25.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 866.25928, -2436.18237, -5.00000,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 875.73724, -2426.21948, -5.00000,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 853.38232, -2412.81543, -5.00000,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18751, 830.22076, -2421.05322, -5.00000,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3615, 837.86902, -2534.81372, 4.20000,   0.00000, 0.00000, 94.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11495, 864.63239, -2580.62524, 0.66000,   0.00000, 0.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11496, 857.37811, -2500.40747, 0.99800,   0.00000, 0.00000, 4.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18632, 873.10907, -2580.89258, 0.97200,   0.00000, 160.00000, -98.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18632, 864.00812, -2579.93433, 0.97200,   0.00000, 160.00000, -98.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11686, 859.73456, -2500.55127, 1.17000,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1483, 860.26697, -2499.68799, 2.92500,   0.00000, 0.00000, -176.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19572, 861.39648, -2498.38281, 1.19400,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2425, 860.13153, -2502.90283, 2.25600,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19812, 861.49481, -2503.30347, 1.68800,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2529, 860.54089, -2496.89233, 1.10400,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19812, 861.51007, -2503.34058, 2.68600,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19572, 861.46063, -2498.86987, 1.19400,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19572, 861.41602, -2498.58105, 1.51800,   0.00000, 0.00000, -76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2163, 861.52179, -2500.05981, 1.18800,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2163, 861.52179, -2500.05981, 2.10800,   0.00000, 0.00000, -86.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3504, 826.04126, -2527.78760, 5.00000,   0.00000, 0.00000, 134.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 736.31769, -2411.67627, -0.88800,   0.00000, -3.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 736.04498, -2406.88452, -0.68400,   0.00000, 0.00000, 10.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 727.37921, -2408.41089, -0.68400,   0.00000, 0.00000, 10.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 744.70941, -2405.35449, -0.68400,   0.00000, 0.00000, 10.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 753.37543, -2403.82617, -0.68400,   0.00000, 0.00000, 10.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 718.71338, -2409.93823, -0.68400,   0.00000, 0.00000, 10.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 713.81299, -2404.78906, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 755.16809, -2397.49683, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 746.41010, -2399.04272, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 737.91162, -2400.54370, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 730.04041, -2401.93066, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3406, 722.26691, -2403.29980, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(6522, 774.62988, -2583.01831, 13.78400,   0.00000, 0.00000, -90.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18368, 655.68195, -2429.48901, -2.78400,   0.00000, 0.00000, -222.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3660, 764.44019, -2545.01270, 7.78400,   0.00000, 0.00000, -47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3660, 763.96960, -2531.86084, 7.78200,   0.00000, 0.00000, 37.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3660, 785.16132, -2544.89648, 7.78400,   0.00000, 0.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3660, 783.15210, -2531.75659, 7.78200,   0.00000, 0.00000, -38.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11489, 774.79193, -2544.58813, 5.50400,   0.00000, 0.00000, 180.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(669, 781.84967, -2536.60815, 5.38200,   0.00000, 0.00000, 37.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(672, 765.77826, -2537.03027, 5.78200,   0.00000, 0.00000, 37.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1533, 733.69543, -2523.19409, 5.38200,   0.00000, 0.00000, 65.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1533, 734.33038, -2521.83838, 5.38000,   0.00000, 0.00000, 65.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(4726, 708.92023, -2512.00317, 110.30000,   0.00000, 0.00000, -25.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(4727, 708.92023, -2512.00317, 110.76800,   0.00000, 0.00000, -25.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3499, 807.58032, -2391.24341, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18981, 794.67865, -2401.65527, 3.98400,   0.00000, 90.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3499, 784.25128, -2388.90649, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3499, 781.87286, -2411.89233, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3499, 805.06708, -2414.38867, -0.68400,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3361, 794.44641, -2417.05493, 2.40000,   0.00000, 0.00000, -96.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3934, 788.73169, -2395.02661, 4.50000,   0.00000, 0.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3934, 802.10260, -2396.18994, 4.50000,   0.00000, 0.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3934, 787.45752, -2407.71704, 4.50000,   0.00000, 0.00000, 174.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19124, 805.08551, -2414.38086, 5.00000,   0.00000, 0.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17030, 831.47064, -2566.87524, -4.98400,   0.00000, 0.00000, -55.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(10183, 770.22479, -2453.72852, 5.55000,   0.00000, 0.00000, 40.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(10183, 807.20782, -2513.45166, 5.55000,   0.00000, 0.00000, -40.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2406, 843.42627, -2498.93359, 3.80300,   -4.00000, 4.00000, -287.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2410, 843.80182, -2499.11401, 2.80900,   15.00000, 1.00000, 76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1610, 834.18311, -2474.09204, 4.10300,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1610, 834.52283, -2474.07446, 4.10300,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1611, 833.68579, -2474.15649, 4.09500,   -4.00000, 4.00000, -69.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(864, 834.81366, -2469.35059, 4.10300,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(865, 832.06140, -2530.86694, 3.20300,   0.00000, 5.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(866, 858.24908, -2540.38525, 1.47300,   0.00000, 5.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(866, 842.17291, -2585.78394, 2.17300,   0.00000, 5.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18763, 825.28375, -2526.44971, 2.20000,   90.00000, 0.00000, 44.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3504, 824.00543, -2525.67627, 5.00000,   0.00000, 0.00000, 134.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1343, 824.99792, -2526.74902, 4.40000,   0.00000, 0.00000, 134.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19860, 708.88098, -2566.87183, 6.99800,   0.00000, 0.00000, 101.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(638, 710.74133, -2563.87085, 6.39800,   0.00000, 0.00000, 101.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19824, 860.37372, -2496.58130, 2.59000,   0.00000, 0.00000, -76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19823, 860.55902, -2496.62158, 2.59000,   0.00000, 0.00000, -76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19822, 860.40479, -2497.22656, 2.59000,   0.00000, 0.00000, -76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19821, 860.40369, -2496.89209, 2.59000,   0.00000, 0.00000, -76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19820, 860.69574, -2497.18164, 2.59000,   0.00000, 0.00000, -76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.36871, -2496.61426, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.70618, -2496.72241, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.67169, -2496.82300, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.47284, -2496.88867, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.59106, -2496.97314, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.38220, -2496.82813, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.65540, -2497.26050, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1486, 860.45319, -2497.24194, 2.27200,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.47339, -2496.64429, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.36005, -2496.61157, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.73035, -2496.78394, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.63422, -2496.86792, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.41077, -2497.20972, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.80347, -2497.18579, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.46991, -2496.84790, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1544, 860.67322, -2497.05615, 1.67000,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(705, 740.99878, -2454.65356, 5.00000,   0.00000, 0.00000, -127.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19375, 768.82172, -2493.12158, 16.50000,   0.00000, 90.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1437, 773.72321, -2499.09131, 6.70000,   -6.00000, 0.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1437, 772.52612, -2497.97632, 12.40000,   -6.00000, 0.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3749, 1012.01312, -2326.42676, 17.20000,   0.00000, 0.00000, -56.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(17039, 768.27759, -2493.66479, 16.50000,   0.00000, 0.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19375, 767.73700, -2494.17627, 16.49800,   0.00000, 90.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(648, 830.87598, -2418.62231, 0.60000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(622, 678.55438, -2422.25537, 0.60000,   0.00000, 0.00000, 142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 836.21918, -2416.82178, 3.50000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 805.84192, -2422.32324, 4.20000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 765.63318, -2423.24902, 4.20000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 720.63391, -2429.29297, 3.40000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 684.83588, -2430.61548, 3.50000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 647.53967, -2451.02612, 3.20000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 645.72461, -2478.80518, 3.10000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 647.36023, -2519.45581, 4.10000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 655.30798, -2552.92236, 4.10000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 651.37183, -2590.84741, 3.70000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 647.52191, -2620.14868, 3.90000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 674.91052, -2642.39868, 4.60000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 704.33667, -2643.66138, 4.68000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 735.70142, -2639.71704, 3.98000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 759.33118, -2628.93652, 4.66000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 788.32092, -2627.45215, 4.02000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 815.34290, -2623.70020, 4.92000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 840.02728, -2599.05225, 4.34000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 846.10632, -2564.94067, 3.56000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 845.89948, -2538.22754, 4.98000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 849.36768, -2507.89258, 4.82000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1232, 844.88898, -2473.87012, 5.12000,   0.00000, 0.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1461, 714.08942, -2410.82324, 2.10000,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1461, 735.56995, -2413.00586, 2.10000,   0.00000, 0.00000, 100.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1461, 756.96106, -2403.27295, 2.10000,   0.00000, 0.00000, -80.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1461, 835.03351, -2532.43408, 4.50000,   0.00000, 0.00000, 4.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1461, 836.23309, -2532.36865, 4.50000,   0.00000, 0.00000, 4.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1461, 837.27277, -2532.28442, 4.50000,   0.00000, 0.00000, 4.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1231, 716.83209, -2562.32031, 8.38000,   0.00000, 0.00000, -62.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1231, 693.07294, -2563.99292, 8.38000,   0.00000, 0.00000, 40.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1231, 735.69543, -2525.41431, 8.20000,   0.00000, 0.00000, 69.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3850, 735.75610, -2524.19946, 6.04000,   0.00000, 0.00000, 65.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3850, 737.02075, -2521.29810, 6.04000,   0.00000, 0.00000, 65.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3785, 774.75781, -2569.81836, 7.78800,   0.00000, 90.00000, 90.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11496, 850.88910, -2484.82324, 0.99800,   0.00000, 0.00000, 4.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(14820, 852.32990, -2482.52783, 2.09800,   0.00000, 0.00000, 94.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2784, 852.28918, -2482.49146, 2.50200,   0.00000, 0.00000, -87.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19159, 852.28693, -2482.50879, 3.43400,   0.00000, 0.00000, 94.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1483, 853.08807, -2482.38184, 2.95100,   0.00000, 0.00000, -176.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2232, 852.02698, -2479.20605, 2.58000,   0.00000, 0.00000, -69.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2232, 852.10339, -2480.19385, 2.58000,   0.00000, 0.00000, -69.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2232, 852.39569, -2485.63428, 2.58000,   0.00000, 0.00000, 249.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2232, 852.35077, -2484.65356, 2.58000,   0.00000, 0.00000, 249.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19894, 852.25201, -2481.03711, 2.00800,   0.00000, 0.00000, 84.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2600, 658.96173, -2414.15747, 2.38400,   0.00000, 0.00000, -142.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2600, 651.47144, -2430.92432, 2.38400,   0.00000, 0.00000, -105.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(833, 773.98340, -2535.45996, 5.93600,   0.00000, 0.00000, 76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(834, 799.62445, -2460.74878, 7.93600,   0.00000, 0.00000, 76.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(839, 719.56622, -2462.37695, 6.98200,   0.00000, 0.00000, -98.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(846, 719.03876, -2464.00073, 6.01000,   0.00000, 0.00000, -62.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1463, 714.03741, -2626.65845, 4.31200,   -4.00000, 6.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(842, 709.60712, -2625.68311, 4.19600,   -5.00000, 4.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1462, 709.91730, -2627.89185, 3.31200,   0.00000, 0.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(841, 709.09631, -2626.43457, 4.19600,   -5.00000, 9.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 714.62073, -2627.62744, 3.93800,   -4.00000, 6.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 715.05609, -2627.21362, 4.00600,   -4.00000, 6.00000, -135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 715.43689, -2626.74634, 4.09200,   -4.00000, 2.00000, -120.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 715.46021, -2626.14087, 4.12400,   -4.00000, 4.00000, -69.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 715.07788, -2625.66504, 4.14400,   -4.00000, 4.00000, -41.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 714.53668, -2625.35767, 4.17000,   -4.00000, 4.00000, -25.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 713.90552, -2625.24854, 4.19000,   -4.00000, 1.00000, 11.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 713.39404, -2625.59009, 4.19000,   -4.00000, -2.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 712.99335, -2626.04126, 4.13000,   -4.00000, -6.00000, 47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 712.65295, -2626.57910, 4.06000,   -4.00000, -6.00000, 67.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 712.71283, -2627.18652, 3.97600,   -4.00000, -6.00000, 113.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 713.12671, -2627.65674, 3.91800,   -4.00000, -0.60000, 149.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 713.66083, -2627.91040, 3.90400,   -4.00000, -1.00000, 164.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11708, 714.27118, -2627.93481, 3.90800,   -4.00000, -1.00000, 149.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3850, 712.41754, -2573.92236, 9.74000,   0.00000, 0.00000, 11.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3850, 713.09094, -2577.32031, 9.74000,   0.00000, 0.00000, 11.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3850, 712.15143, -2580.19458, 9.74000,   0.00000, 0.00000, -47.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19802, 710.24579, -2572.54541, 9.23600,   0.00000, 0.00000, 11.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1726, 768.36365, -2497.14722, 16.50000,   0.00000, 0.00000, 156.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1727, 765.33008, -2495.39795, 16.50000,   0.00000, 0.00000, 127.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19786, 772.14502, -2489.39526, 18.10000,   2.00000, 0.00000, -43.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2229, 771.30042, -2488.53784, 17.40000,   2.00000, 0.00000, -43.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2229, 773.54688, -2490.55200, 17.40000,   2.00000, 0.00000, -43.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2315, 767.80615, -2494.76855, 16.57800,   0.00000, 0.00000, 135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2344, 767.79034, -2495.17236, 17.07800,   -0.80000, 0.00000, 135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2256, 764.69019, -2498.06470, 18.50000,   1.90000, 0.00000, -223.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1236, 1009.25250, -2315.84253, 12.73800,   0.00000, 0.00000, -56.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3262, 1018.60352, -2329.79175, 11.93800,   0.00000, 0.00000, 135.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1231, 1011.92322, -2318.76147, 14.80000,   0.00000, 0.00000, 98.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1255, 845.89270, -2530.04321, 2.22800,   -5.00000, 0.00000, 4.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1255, 846.22192, -2531.55054, 2.39800,   -5.00000, 0.00000, 25.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(19806, 769.31830, -2492.44873, 23.66000,   0.00000, 0.00000, 0.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(973, 1021.82068, -2326.98438, 12.88000,   0.00000, 0.00000, 35.00000, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(973, 1015.11420, -2316.95142, 12.88000,   0.00000, 0.00000, -145.00000, .worldid = -1, .streamdistance = 150);

	// Khu dat 2 - Chua chu so huu (133)
	CreateDynamicObject(6300, 424.89969, -1001.32928, 83.46370,   0.00000, 1.00000, 182.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(13681, 445.77808, -988.52350, 96.20500,   0.00000, 1.00000, 272.62003, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(13681, 408.80478, -972.01392, 95.67400,   0.00000, 0.00000, 2.62000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(982, 394.04514, -992.65961, 91.67250,   0.00000, 0.00000, 2.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(982, 393.45062, -976.63824, 91.67250,   0.00000, 0.00000, 2.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(982, 405.81201, -963.42877, 91.87250,   -1.00000, 0.00000, 92.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(982, 431.39459, -962.53650, 92.31250,   -1.00000, 0.00000, 92.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(982, 440.95419, -962.21552, 92.49250,   -1.00000, 0.00000, 92.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(982, 454.20590, -974.56262, 92.71250,   0.00000, 0.00000, 2.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(982, 454.75110, -990.54004, 92.71250,   0.00000, 0.00000, 2.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(9321, 430.06839, -965.68323, 93.01920,   1.00000, 0.00000, -88.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3618, 401.13821, -995.20758, 93.82070,   0.00000, 0.00000, 92.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2885, 449.42215, -1018.69208, 91.96304,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(9833, 421.50339, -995.40137, 93.73600,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3928, 404.40530, -972.40033, 95.66050,   0.00000, 0.00000, -88.02000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3928, 446.05359, -985.09161, 96.36050,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1569, 443.42291, -973.16962, 91.87830,   0.00000, 0.00000, 1.26000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1569, 446.41901, -973.09003, 91.87830,   0.00000, 0.00000, -178.39999, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1557, 418.19867, -981.15869, 91.35815,   0.00000, 0.00000, 2.58000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1557, 421.21954, -981.03345, 91.35815,   0.00000, 0.00000, -178.37993, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2907, 418.28940, -1003.67542, 90.46673,   -49.80000, -6.36000, -0.66000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3168, 440.48962, -963.82416, 91.68945,   0.00000, 0.00000, 91.61999, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3168, 452.01065, -966.86371, 91.95917,   0.00000, 0.00000, 1.68000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(16151, 424.77448, -977.18909, 91.83930,   0.00000, 0.00000, -178.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);	CreateDynamicObject(1536, 420.09363, -966.12622, 95.65298,   0.00000, 0.00000, 182.22005, .interiorid = -1, .worldid = -1, .streamdistance = 200);

	// Interior custom
	CreateDynamicObject(19377, 492.68161, 1403.33435, -65.60330,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 493.12872, 1408.17310, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(14416, 488.32101, 1400.03674, -65.35600,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 486.49561, 1402.04468, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 490.30060, 1398.47473, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 499.93359, 1398.47473, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 503.18210, 1403.33435, -65.60330,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 503.18201, 1412.96936, -65.60330,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 513.68011, 1403.33655, -65.60330,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 513.68109, 1412.96814, -65.60330,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 488.30219, 1406.88782, -63.90000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 509.56610, 1398.47473, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 497.85959, 1412.90247, -63.90000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 502.63559, 1417.76160, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 512.26941, 1417.76160, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 494.88129, 1397.22229, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 505.38199, 1397.22229, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 514.38202, 1397.22229, -62.11930,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 486.30219, 1406.85632, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 496.80219, 1406.85632, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 507.30151, 1406.85974, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 503.03989, 1416.48987, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 513.54199, 1416.49011, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 511.10001, 1412.91162, -63.90000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 515.83661, 1408.18091, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 511.85001, 1403.29541, -63.90000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 494.30789, 1397.33667, -63.90000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 500.60001, 1397.33667, -63.90000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19384, 495.82809, 1402.07312, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19354, 499.03799, 1402.07312, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19433, 500.79831, 1408.18628, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19325, 504.77371, 1408.18262, -64.10600,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19433, 508.17380, 1408.18628, -63.90000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19922, 506.17889, 1411.29297, -65.52000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19923, 505.88705, 1416.96399, -65.52000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2132, 507.38739, 1417.18103, -65.52000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19924, 505.88708, 1416.96399, -62.96200,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19929, 504.42191, 1414.22974, -65.52000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19936, 506.31760, 1414.22046, -65.62400,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19936, 502.52881, 1414.20740, -65.62400,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2131, 510.61081, 1415.38721, -65.52000,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19916, 509.41769, 1417.38464, -65.52000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2133, 504.35010, 1417.18103, -65.52000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2134, 503.35941, 1417.18103, -65.52000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 502.69370, 1410.47705, -64.88200,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19922, 503.45200, 1411.29211, -65.52200,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 503.91388, 1410.44666, -64.88200,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 505.23694, 1410.48816, -64.88200,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 506.53836, 1410.49072, -64.88200,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 502.69370, 1412.07715, -64.88200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 503.91391, 1412.07715, -64.88200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 505.23691, 1412.07715, -64.88200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2120, 506.53839, 1412.07715, -64.88200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 483.76785, 1403.25317, -60.40000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 480.99179, 1397.22375, -62.11730,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 490.30060, 1398.47473, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 480.66641, 1398.47473, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 483.33939, 1408.00647, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 488.07071, 1412.73999, -60.40000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 492.97116, 1411.70264, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 499.93359, 1398.47473, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 497.71280, 1416.43616, -60.40000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 502.44122, 1421.17334, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 509.56680, 1398.47473, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 512.38892, 1403.29126, -60.40000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 512.38892, 1412.92334, -60.40000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 509.38770, 1419.66663, -60.40000,   0.00000, 0.00000, 55.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(3850, 487.95221, 1402.05762, -61.50400,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(3850, 489.67191, 1400.31519, -61.50400,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19452, 505.08890, 1403.29126, -60.40000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19452, 497.38889, 1403.29126, -60.40000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2314, 511.07739, 1400.40125, -65.52000,   0.00000, 0.00000, 229.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19786, 510.65839, 1399.75195, -64.39600,   0.00000, 0.00000, -131.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1817, 508.48294, 1402.19495, -65.52400,   0.00000, 0.00000, 229.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1727, 509.31348, 1404.88257, -65.53600,   0.00000, 0.00000, 11.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1726, 506.56409, 1403.27271, -65.53600,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1727, 505.25208, 1401.56128, -65.53600,   0.00000, 0.00000, 62.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1727, 504.82373, 1399.44373, -65.53600,   0.00000, 0.00000, 86.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2233, 511.58395, 1400.67554, -65.52000,   0.00000, 0.00000, -120.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2233, 509.35144, 1398.22278, -65.52000,   0.00000, 0.00000, -142.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2227, 500.53210, 1400.67017, -65.52000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2229, 500.62500, 1401.35339, -65.52000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2229, 500.62500, 1400.05334, -65.52000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2855, 508.81952, 1401.90295, -65.41200,   0.00000, 0.00000, 229.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2344, 507.92471, 1401.14417, -65.01400,   -6.00000, 0.00000, 47.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1744, 511.91629, 1405.12988, -64.33600,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(14705, 511.53421, 1404.66174, -63.74800,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1506, 488.38870, 1404.30920, -65.52400,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1502, 495.04041, 1402.02942, -65.66700,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2149, 504.40869, 1417.46057, -64.31600,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2862, 507.41281, 1417.41699, -64.47000,   0.00000, 0.00000, 12.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2257, 491.24118, 1408.04224, -63.82000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2261, 495.21939, 1407.58740, -64.12000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2260, 498.41724, 1410.11279, -64.12000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2262, 498.43851, 1413.14929, -64.12000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2264, 498.45279, 1416.08801, -64.12000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2266, 510.51581, 1410.87012, -64.12000,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2270, 497.63101, 1402.65698, -64.12000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2283, 502.79752, 1398.60657, -64.00000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(11721, 494.19479, 1400.15454, -64.89000,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2913, 493.46860, 1399.45569, -61.05000,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19878, 484.12720, 1398.74304, -61.64000,   0.00000, 64.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2630, 495.75638, 1403.08118, -62.03000,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2629, 493.93942, 1400.00415, -62.03000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2628, 495.63361, 1405.00134, -62.03000,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2627, 496.05295, 1400.58459, -62.03000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2632, 491.42404, 1400.63782, -62.03000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2915, 493.60760, 1400.15234, -61.91200,   0.00000, 0.00000, 120.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2916, 493.11328, 1400.06433, -61.91200,   0.00000, 0.00000, 4.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19172, 493.31570, 1398.57507, -60.25000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(14455, 494.99811, 1411.42944, -60.50600,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 509.02802, 1411.69983, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19384, 499.39551, 1411.69983, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19354, 502.60620, 1411.69983, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19384, 503.48380, 1408.02258, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19384, 506.69479, 1408.02258, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19446, 513.11731, 1408.02258, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19354, 498.90649, 1408.02258, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19354, 500.75250, 1408.02063, -60.40000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1799, 508.78409, 1401.97217, -61.97800,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1799, 508.78409, 1405.39014, -61.97800,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1735, 510.71606, 1413.29736, -62.03200,   0.00000, 0.00000, -127.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1735, 510.86707, 1415.75867, -62.03200,   0.00000, 0.00000, -69.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2566, 502.73880, 1418.59265, -61.44600,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2564, 499.95441, 1400.81885, -62.04200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2562, 504.50079, 1404.89294, -62.03400,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2568, 505.67651, 1401.54968, -62.03800,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2572, 489.69043, 1407.42261, -62.03800,   0.00000, 0.00000, 69.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2200, 499.76791, 1398.71179, -62.03200,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2200, 498.50681, 1407.78284, -62.03200,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2025, 499.84000, 1420.61194, -62.04400,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1822, 509.25128, 1414.00745, -62.04400,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2200, 497.94809, 1417.44849, -62.04400,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2069, 498.47269, 1420.34216, -61.99200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2200, 497.94809, 1415.21851, -62.04400,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1744, 509.32291, 1419.78784, -60.94400,   0.00000, 0.00000, -35.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2253, 509.50070, 1419.29395, -60.34000,   0.00000, 0.00000, -35.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2251, 508.79099, 1412.04492, -61.18800,   0.00000, 0.00000, -142.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2568, 505.80649, 1412.28735, -62.04200,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2842, 504.81232, 1413.69849, -62.05000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1502, 505.90970, 1407.97485, -62.16800,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1502, 498.60831, 1411.68701, -62.16800,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1502, 504.23239, 1408.03235, -62.16800,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2526, 498.47348, 1401.45508, -65.51600,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2525, 497.38980, 1399.05115, -65.52000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2523, 496.11081, 1399.07397, -65.52600,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2527, 499.27911, 1400.02234, -65.52600,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19433, 496.67380, 1399.23633, -65.00000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19433, 496.67151, 1400.03943, -65.00000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2741, 495.00769, 1398.65320, -64.30000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2742, 494.57159, 1399.36218, -64.30000,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(11707, 500.44589, 1400.33020, -64.30400,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2685, 496.19870, 1398.58850, -64.30000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 486.30219, 1406.85632, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 496.80219, 1406.85632, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 507.30151, 1406.85974, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 494.88129, 1397.22229, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 505.38199, 1397.22229, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 514.38202, 1397.22229, -58.62600,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 484.37979, 1397.22375, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 503.03989, 1416.48987, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19377, 513.54199, 1416.49011, -58.62800,   0.00000, 90.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 508.75562, 1402.96509, -58.72200,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 508.32169, 1401.64673, -62.21000,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 498.41489, 1404.97363, -62.21000,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 497.86804, 1400.28577, -62.21000,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 487.87888, 1404.74451, -58.72200,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 502.37329, 1409.84839, -58.72200,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 504.28351, 1416.37610, -58.72200,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 501.99161, 1403.39746, -58.72200,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 507.83871, 1412.69263, -62.21000,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19825, 511.73441, 1406.86548, -63.51600,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(1734, 501.64581, 1412.40210, -62.21000,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19619, 512.28210, 1414.98206, -60.54400,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19830, 503.88144, 1417.45740, -64.46800,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2245, 512.01422, 1409.80200, -61.72800,   0.00000, 0.00000, 120.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2288, 511.80179, 1409.81689, -60.65000,   0.00000, 0.00000, -90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2200, 510.23700, 1407.78467, -62.03200,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2200, 511.47021, 1398.71082, -62.03200,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(16779, 493.35709, 1405.19043, -62.09000,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(16779, 500.52289, 1413.65942, -62.09500,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(16779, 492.15369, 1407.27356, -58.60000,   0.00000, 0.00000, 40.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2333, 499.56180, 1403.64600, -65.52800,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2385, 506.96051, 1398.50427, -64.70000,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2485, 506.32080, 1398.85120, -64.16600,   0.00000, 0.00000, 125.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2486, 506.46130, 1398.76965, -63.77200,   -6.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2707, 511.59381, 1404.64343, -62.23200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2710, 506.26260, 1398.82300, -64.54600,   0.00000, 0.00000, 180.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2828, 506.83920, 1398.85291, -64.64800,   0.00000, 0.00000, -14.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2835, 498.42709, 1402.97607, -65.52400,   0.00000, 0.00000, -4.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2870, 507.05890, 1398.72668, -63.79000,   0.00000, 0.00000, 0.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2114, 507.04379, 1398.84290, -64.08200,   90.00000, 0.00000, -91.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2813, 505.66971, 1398.81067, -64.64600,   0.00000, 0.00000, 176.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2835, 508.46249, 1400.89282, -65.52400,   0.00000, 0.00000, 47.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2835, 508.72305, 1400.67017, -65.52600,   0.00000, 0.00000, 47.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19584, 506.78336, 1417.19922, -64.38000,   0.00000, 0.00000, 207.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19581, 505.13336, 1416.87781, -64.51000,   0.00000, 0.00000, 178.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2707, 508.22198, 1408.01196, -62.23200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(2707, 500.82199, 1408.01196, -62.23200,   0.00000, 0.00000, 90.00000, .worldid = 2980, .streamdistance = 200);
	CreateDynamicObject(19586, 505.07843, 1416.93616, -64.47500,   -4.00000, 180.00000, 171.00000, .worldid = 2980, .streamdistance = 200);

	// khu dat 134
	CreateDynamicObject(2114, 2512.69995, -25.70000, 27.20000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3497, 2519.50000, -26.50000, 30.00000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2850, 2520.39990, -36.80000, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(643, 2520.39990, -36.70000, 27.30000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3802, 2515.69995, -26.10000, 29.10000,   0.00000, 0.00000, 90.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3802, 2523.29980, -26.00000, 29.10000,   0.00000, 0.00000, 90.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1409, 2514.30005, -19.20000, 25.80000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1264, 2515.19995, -19.30000, 26.10000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2045, 2512.39990, -28.60000, 27.80000,   250.00000, 0.00000, 180.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1504, 2512.60059, -28.70020, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2228, 2514.69995, -26.60000, 27.40000,   10.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1550, 2521.10010, -36.40000, 27.20000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2404, 2514.89990, -28.40000, 28.70000,   200.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1255, 2512.39990, -45.00000, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1255, 2512.39990, -43.00000, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1543, 2512.60010, -44.30000, 26.80000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3920, 2505.89600, -26.91994, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1452, 2514.30005, -19.30000, 26.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(16151, 2522.50000, -43.10000, 27.10000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2226, 2522.39990, -39.80000, 27.70000,   0.00000, 0.00000, 330.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1481, 2510.10010, -35.80000, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2804, 2510.10010, -35.90000, 27.90000,   0.00000, 0.00000, 295.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2677, 2515.19995, -36.10000, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(918, 2509.19995, -35.70000, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);

	// Khu dat 66
	CreateDynamicObject(6300, 1921.65491, -799.52795, 95.06580,   0.00000, 0.00000, -65.08000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(13701, 1899.73889, -816.05377, 111.37430,   0.00000, 0.00000, -66.72000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18766, 1903.47876, -841.85516, 103.28750,   0.00000, 0.00000, 23.40000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18766, 1903.48755, -841.85992, 108.27170,   0.00000, 0.00000, 23.40000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18766, 1904.71436, -836.27118, 107.60940,   0.00000, 0.00000, 23.40000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18766, 1905.64661, -835.49109, 104.24015,   0.00000, 0.00000, -66.60005, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18766, 1910.84351, -833.70111, 102.66743,   0.00000, 0.00000, 23.40000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18766, 1906.88977, -829.63239, 107.65898,   0.00000, 0.00000, -69.06004, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18766, 1911.91125, -829.45978, 107.64940,   0.00000, 0.00000, 23.40000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1825, 1890.40356, -816.32782, 116.69706,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1670, 1890.23962, -816.29437, 117.59682,   0.00000, 0.00000, -446.58008, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3934, 1883.77075, -790.52539, 103.11500,   0.00000, 0.00000, 24.54000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1645, 1900.84009, -807.05072, 116.97220,   0.00000, 0.00000, -131.27997, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1647, 1900.69421, -804.04846, 116.83710,   0.00000, 0.00000, -56.57999, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1822, 1898.52527, -805.90991, 116.72482,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(984, 1879.57642, -785.62781, 103.75900,   0.00000, 0.00000, -64.78000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(984, 1882.47803, -784.28674, 103.75900,   0.00000, 0.00000, -64.78000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(984, 1876.49060, -794.10858, 103.79500,   0.00000, 0.00000, 25.20000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(984, 1879.21814, -799.90472, 103.79500,   0.00000, 0.00000, 25.62000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19122, 1890.62195, -812.17590, 117.97626,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19122, 1922.56372, -819.86017, 117.92906,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19831, 1904.62878, -808.12213, 116.71606,   0.00000, 0.00000, -109.25999, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18013, 1902.49963, -824.83240, 115.89608,   0.00000, 0.00000, 112.86000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(11334, 1892.45728, -805.29034, 117.54426,   0.00000, 0.00000, -246.71991, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3170, 1890.29749, -800.87585, 103.10626,   0.00000, 0.00000, -246.89996, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18013, 1903.69214, -827.54333, 115.89608,   0.00000, 0.00000, 112.86000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1080, 1912.76038, -813.91565, 117.11887,   4.02000, -19.49999, -59.58001, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	 
	// Khu dat 134 (2)
	CreateDynamicObject(1428,2504.0000000,-36.0000000,28.9000000,357.9950000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1557,2511.7000000,-34.7000010,27.4000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1557,2514.7000000,-34.7000010,27.4000000,0.0000000,0.0000000,180.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1451,2500.7000000,-46.5999980,27.7000010,0.0000000,0.0000000,135.0000300, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2806,2502.0000000,-47.0000000,26.9000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1510,2503.3000000,-47.2000010,26.9000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,2523.3999000,-18.9000000,26.1000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,2523.3999000,-21.2999990,26.5000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,2523.3999000,-24.0000000,26.9000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1615,2523.5000000,-31.7999990,29.7999990,0.0000000,0.0000000,180.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2244,2511.3999000,-35.2999990,27.7000010,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3806,2519.0000000,-47.7000010,28.2000010,0.0000000,0.0000000,90.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3806,2513.6001000,-47.7000010,28.2000010,0.0000000,0.0000000,90.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,2515.7000000,-18.7999990,26.1000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,2515.6001000,-21.2999990,26.5000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,2515.6001000,-24.1000000,27.0000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1807,2516.3000000,-47.5999980,27.4000000,0.0000000,0.0000000,90.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1616,2523.6001000,-35.7000010,30.2000010,0.0000000,0.0000000,90.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1408,2511.0000000,-45.2999990,27.4000000,0.0000000,0.0000000,90.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1408,2511.0000000,-39.7999992,27.3999996,0.0000000,0.0000000,90.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1408,2508.2998000,-36.9003910,27.4000000,0.0000000,357.9950000,179.9945100, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,2514.8999000,-35.0999980,28.0000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1650,2510.3999000,-28.6000000,27.7999990,0.0000000,0.0000000,340.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(869,2501.5000000,-38.5999980,27.6000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2244,2512.1001000,-26.2000010,27.1000000,0.0000000,0.0000000,0.0000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	 
	// Khu dat 134 (3)	
	CreateDynamicObject(2114, 2512.69995, -25.70000, 27.20000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3497, 2519.50000, -26.50000, 30.00000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2850, 2520.39990, -36.80000, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(643, 2520.39990, -36.70000, 27.30000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3802, 2515.69995, -26.10000, 29.10000,   0.00000, 0.00000, 90.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3802, 2523.29980, -26.00000, 29.10000,   0.00000, 0.00000, 90.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1409, 2514.30005, -19.20000, 25.80000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1264, 2515.19995, -19.30000, 26.10000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2045, 2512.39990, -28.60000, 27.80000,   250.00000, 0.00000, 180.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1504, 2512.60059, -28.70020, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2228, 2514.69995, -26.60000, 27.40000,   10.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1550, 2521.10010, -36.40000, 27.20000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2404, 2514.89990, -28.40000, 28.70000,   200.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1255, 2512.39990, -45.00000, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1255, 2512.39990, -43.00000, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1543, 2512.60010, -44.30000, 26.80000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3920, 2505.89600, -26.91994, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1452, 2514.30005, -19.30000, 26.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(16151, 2522.50000, -43.10000, 27.10000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2226, 2522.39990, -39.80000, 27.70000,   0.00000, 0.00000, 330.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1481, 2510.10010, -35.80000, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2804, 2510.10010, -35.90000, 27.90000,   0.00000, 0.00000, 295.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2677, 2515.19995, -36.10000, 27.70000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(918, 2509.19995, -35.70000, 27.40000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);

	// Khu dat 98
	CreateDynamicObject(18765, 403.67639, -382.08450, 26.37300,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18765, 396.96490, -389.86630, 24.81250,   20.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18765, 393.82443, -380.36929, 26.37300,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18765, 395.56189, -370.52301, 26.37200,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18765, 405.41180, -372.23660, 26.37300,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(690, 379.80579, -382.10605, 23.30000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(8888, 399.72223, -376.23398, 29.50000,   0.00000, 0.00000, 170.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3601, 402.08942, -375.25189, 36.43000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3928, 400.97229, -376.00491, 44.27000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1481, 396.56610, -370.06277, 29.57000,   0.00000, 0.00000, -100.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2635, 393.95309, -372.14957, 29.28000,   0.00000, 0.00000, -100.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2121, 395.32300, -372.37350, 29.32000,   0.00000, 0.00000, -100.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2121, 393.84229, -373.59000, 29.32000,   0.00000, 0.00000, -178.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2121, 394.20361, -370.81351, 29.32000,   0.00000, 0.00000, -4.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2121, 392.68991, -371.94299, 29.32000,   0.00000, 0.00000, 76.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3850, 397.25961, -368.66479, 40.20000,   0.00000, 0.00000, -8.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19124, 394.84256, -380.54764, 44.33000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(688, 399.82959, -355.72580, 27.30000,   0.00000, 0.00000, 0.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(11727, 396.71259, -371.42871, 31.57000,   0.00000, 0.00000, -100.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(11727, 400.75491, -381.09171, 31.57000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19121, 405.08371, -387.07217, 29.40000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19121, 409.08780, -377.83994, 29.40000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19121, 390.11423, -384.38724, 29.40000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19121, 390.30533, -374.54669, 29.40000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(19121, 390.80234, -394.06796, 25.70000,   0.00000, 0.00000, -10.00000, .interiorid = -1, .worldid = -1, .streamdistance = 200);

	// Khu dat 83
	CreateDynamicObject(19503, -60.59, -489.76, 7.07,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19504, -60.59, -489.77, 7.07,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(18765, -58.17, -470.57, 0.86,   10.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(10972, -98.26, -459.74, -0.61,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19375, -56.25, -512.81, -1.06,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19375, -64.24, -507.43, -1.06,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19375, -72.23, -502.05, -1.06,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19375, -80.21, -496.65, -1.06,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(18765, -52.67, -462.40, -0.88,   10.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(18765, -50.53, -459.22, -1.56,   10.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(970, -55.35, -475.23, 4.36,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -53.05, -471.83, 3.64,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -50.76, -468.43, 2.92,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -48.48, -465.03, 2.18,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -46.18, -461.63, 1.46,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -63.52, -469.71, 4.36,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -61.23, -466.30, 3.64,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -58.92, -462.89, 2.91,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -56.64, -459.49, 2.19,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -54.33, -456.09, 1.47,   0.00, 10.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(970, -54.87, -478.26, 4.74,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(970, -51.42, -480.59, 4.74,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(970, -47.96, -482.92, 4.74,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(970, -44.50, -485.25, 4.74,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(970, -42.77, -486.42, 4.74,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19121, -57.52, -478.44, 4.70,   0.00, 0.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(19121, -65.49, -473.05, 4.70,   0.00, 0.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(1506, -59.84, -488.12, 4.73,   0.00, 0.00, 326.00, .streamdistance = 150);
	CreateDynamicObject(19387, -59.19, -488.54, 6.37,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(1501, -74.58, -489.93, 4.69,   0.00, 0.00, 326.00, .streamdistance = 150);
	CreateDynamicObject(19389, -52.59, -492.98, 6.65,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19359, -54.58, -491.65, 6.40,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19359, -50.16, -494.61, 6.40,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(1502, -51.96, -493.37, 4.88,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(2299, -50.84, -489.77, 4.92,   0.00, 0.00, 326.00, .streamdistance = 150);
	CreateDynamicObject(2573, -48.82, -494.83, 4.91,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(2025, -54.33, -491.10, 4.92,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(16780, -50.58, -489.65, 7.79,   0.00, 0.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(2297, -72.11, -484.31, 4.92,   0.00, 0.00, 10.93, .streamdistance = 150);
	CreateDynamicObject(1710, -65.25, -485.68, 4.92,   0.00, 0.00, 236.00, .streamdistance = 150);
	CreateDynamicObject(1712, -69.10, -488.90, 4.92,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(1819, -68.54, -490.14, 4.92,   0.00, 0.00, 14.00, .streamdistance = 150);
	CreateDynamicObject(15036, -54.38, -500.71, 6.07,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19359, -55.86, -502.50, 6.05,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(2637, -57.27, -497.43, 5.33,   0.00, 0.00, 326.00, .streamdistance = 150);
	CreateDynamicObject(2636, -56.54, -496.44, 5.56,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(2636, -57.93, -498.31, 5.56,   0.00, 0.00, 236.00, .streamdistance = 150);
	CreateDynamicObject(17068, -96.04, -561.10, 0.80,   3.14, 0.00, 309.35, .streamdistance = 150);
	CreateDynamicObject(1481, -76.11, -490.79, 4.91,   0.00, 0.00, 326.00, .streamdistance = 150);
	CreateDynamicObject(1472, -56.49, -512.48, 3.76,   0.00, 0.00, 326.00, .streamdistance = 150);
	CreateDynamicObject(690, -23.75, -491.69, 1.95,   356.86, 0.01, -1.06, .streamdistance = 150);
	CreateDynamicObject(696, -67.11, -457.91, 6.07,   3.14, 0.00, 2.86, .streamdistance = 150);
	CreateDynamicObject(3806, -61.22, -486.40, 6.23,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(2254, -69.48, -493.17, 6.52,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(15038, -60.57, -486.50, 4.82,   0.00, 0.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(3810, -57.00, -488.90, 6.31,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -50.56, -485.55, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -48.70, -486.80, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -46.85, -488.05, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -46.02, -488.62, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -46.02, -488.62, 4.43,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -46.85, -488.05, 4.43,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -48.70, -486.80, 4.44,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -50.56, -485.55, 4.43,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -47.42, -493.38, 6.36,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -46.17, -491.53, 6.36,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -47.42, -493.38, 4.43,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -46.17, -491.53, 4.43,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -50.55, -498.05, 6.36,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -49.31, -496.21, 6.36,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -49.31, -496.21, 4.43,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -50.55, -498.05, 4.43,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(19466, -58.04, -501.06, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -59.90, -499.80, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -59.90, -499.80, 4.43,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -58.04, -501.06, 4.43,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -64.71, -496.63, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -66.56, -495.38, 6.36,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -64.71, -496.63, 4.43,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(19466, -66.56, -495.38, 4.43,   0.00, 0.00, 56.00, .streamdistance = 150);
	CreateDynamicObject(2400, -66.14, -483.68, 4.82,   0.00, 0.00, 146.00, .streamdistance = 150);
	CreateDynamicObject(2650, -60.56, -481.85, 6.00,   0.00, 0.00, 236.00, .streamdistance = 150);

	
	// Khu dat 135
  	CreateDynamicObject(3353, 180.23338, 28.43765, 2.34614,   0.00000, 0.00000, 165.58871, .streamdistance = 200);
	CreateDynamicObject(11245, 183.78436, 44.20459, 4.43960,   0.00000, -70.00000, 140.00000, .streamdistance = 200);
	CreateDynamicObject(19815, 188.12410, 10.04000, 3.93850,   0.00000, 0.00000, 165.58870, .streamdistance = 200);
	CreateDynamicObject(3497, 193.74870, 31.29570, 5.58800,   0.00000, 0.00000, 345.63620, .streamdistance = 200);
	CreateDynamicObject(3802, 190.50110, 34.44810, 4.68000,   0.00000, 0.00000, 75.60580, .streamdistance = 200);
	CreateDynamicObject(3802, 184.18550, 36.06210, 4.68000,   0.00000, 0.00000, 75.60580, .streamdistance = 200);
	CreateDynamicObject(3806, 181.31377, 33.56336, 3.63810,   0.00000, 0.00000, 75.60580, .streamdistance = 200);
	CreateDynamicObject(3806, 177.24063, 34.60835, 3.63810,   0.00000, 0.00000, 75.60580, .streamdistance = 200);
	CreateDynamicObject(1432, 188.33595, 32.61389, 3.09410,   0.00000, 0.00000, 95.55904, .streamdistance = 200);
	CreateDynamicObject(2114, 190.06790, 33.81790, 3.15680,   0.00000, 0.00000, 0.00000, .streamdistance = 200);
	CreateDynamicObject(779, 180.15320, 40.50170, 1.94610,   0.00000, 0.00000, 0.00000, .streamdistance = 200);
	CreateDynamicObject(1501, 185.10780, 32.08260, 3.02000,   0.00000, 0.00000, 166.01230, .streamdistance = 200);
	CreateDynamicObject(19461, 175.23129, 42.53020, 0.69810,   0.00000, 180.00000, 165.58870, .streamdistance = 200);
	CreateDynamicObject(19461, 172.84540, 33.24230, 0.71810,   0.00000, 180.00000, 165.58870, .streamdistance = 200);
	CreateDynamicObject(19461, 170.46140, 23.96070, 0.71810,   0.00000, 180.00000, 165.58870, .streamdistance = 200);
	CreateDynamicObject(19461, 168.78500, 17.44630, 0.71810,   0.00000, 180.00000, 165.58870, .streamdistance = 200);
	CreateDynamicObject(19461, 192.79868, 11.25759, 0.71810,   0.00000, 180.00000, 165.58870, .streamdistance = 200);
	CreateDynamicObject(19461, 195.18372, 20.55097, 0.71810,   0.00000, 180.00000, 165.58870, .streamdistance = 200);
	CreateDynamicObject(19461, 186.87410, 7.91160, 0.71810,   0.00000, 180.00000, 75.58340, .streamdistance = 200);
	CreateDynamicObject(19461, 177.60464, 10.29019, 0.71810,   0.00000, 180.00000, 75.58340, .streamdistance = 200);
	CreateDynamicObject(19461, 172.30276, 11.67151, 0.71810,   0.00000, 180.00000, 75.58340, .streamdistance = 200);
	CreateDynamicObject(19279, 181.06502, 46.54881, 1.70170,   0.00000, 0.00000, 232.54030, .streamdistance = 200);
	CreateDynamicObject(1408, 179.67360, 47.72730, 1.97710,   0.00000, 0.00000, 164.98669, .streamdistance = 200);
	CreateDynamicObject(1408, 184.72360, 46.37060, 1.97710,   0.00000, 0.00000, 164.98669, .streamdistance = 200);



	// Khu dat 136
	new WebbFence[8];
	new DFAGarage = CreateDynamicObject(4199, -2290.27, -114.82, 36.43,   0.00, 0.00, 270.00);
	SetDynamicObjectMaterial(DFAGarage, 1, 10393, "scum2_sfs", "ws_apartmentmint2", 0);
	new WebbGround = CreateDynamicObject(10063, -2334.65820, -102.09000, 17.75000,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(WebbGround, 6, 10395, "scum2_sfs", "ws_carparkmanky1", 0);
	WebbFence[0] = CreateDynamicObject(8649, -2326.77002, -120.07200, 35.15000,   0.00000, 0.00000, 90.00000);
	WebbFence[1] = CreateDynamicObject(8649, -2312.15405, -104.96000, 35.15000,   0.00000, 0.00000, 180.00000);
	WebbFence[2] = CreateDynamicObject(8649, -2327.22998, -80.49300, 35.15030,   0.00000, 0.00000, 270.00000);
	WebbFence[3] = CreateDynamicObject(8649, -2361.66895, -105.39000, 35.15050,   0.00000, 0.00000, 0.00000);
	WebbFence[4] = CreateDynamicObject(8649, -2347.12988, -120.07000, 35.15010,   0.00000, 0.00000, 90.00000);
	WebbFence[5] = CreateDynamicObject(8649, -2361.66504, -102.40000, 35.15060,   0.00000, 0.00000, 0.00000);
	WebbFence[6] = CreateDynamicObject(8647, -2312.15405, -95.10000, 35.15030,   0.00000, 0.00000, 180.00000);
	WebbFence[7] = CreateDynamicObject(8647, -2334.84009, -80.49300, 35.15500,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(6133, -2335.00000, -110.00000, 27.46100,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, -2334.47803, -107.00000, 34.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, -2334.52002, -104.00000, 34.20000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(966, -2356.66699, -80.53000, 34.28680,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19425, -2354.77002, -80.53000, 34.29390,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19425, -2351.61011, -80.53000, 34.29500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3881, -2359.15991, -83.44000, 36.15000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3882, -2359.47656, -84.43650, 35.30000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1233, -2334.94995, -80.00000, 35.80000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(638, -2334.89990, -102.67000, 34.72880,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, -2334.89990, -108.35000, 34.72880,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1415, -2330.00513, -92.80000, 34.30000,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1775, -2334.97266, -94.70962, 35.40000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(3934, -2329.00000, -112.55890, 38.47140,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3934, -2329.00000, -100.00000, 38.47140,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3934, -2318.19995, -112.55890, 38.47130,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(13011, -2322.97852, -91.98000, 35.38000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1334, -2327.62842, -92.80000, 34.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3169, -2355.00000, -114.00000, 34.27280,   0.00000, 0.00000, 50.00000);
	for(new x; x < sizeof(WebbFence); x++)
	{
		SetDynamicObjectMaterial(WebbFence[x], 0, 10395, "scum2_sfs", "ws_altz_wall10b", 0);
		SetDynamicObjectMaterial(WebbFence[x], 1, 10395, "scum2_sfs", "ws_altz_wall10b", 0);
	}

	//Sammy Osborn Custom Coding free per Pygoz UPDATE
	CreateDynamicObject(6300,-224.09960938,-1716.79980469,-7.90000010,0.00000000,0.00000000,65.99487305, .worldid = 0, .streamdistance = 150); //object(pier04_law2) (1)
	CreateDynamicObject(11495,-167.00000000,-1710.50000000,-0.05000000,0.00000000,0.00000000,65.99487305, .worldid = 0, .streamdistance = 150); //object(des_ranchjetty) (1)
	CreateDynamicObject(11495,-170.19999695,-1717.69995117,-0.10000000,0.00000000,0.00000000,246.00000000, .worldid = 0, .streamdistance = 150); //object(des_ranchjetty) (2)
	CreateDynamicObject(3604,-202.00000000,-1701.69995117,2.70000005,0.00000000,0.00000000,336.00000000, .worldid = 0, .streamdistance = 150); //object(bevmangar_law2) (1)
	CreateDynamicObject(3606,-194.19999695,-1724.19995117,3.29999995,0.00000000,0.00000000,246.00000000, .worldid = 0, .streamdistance = 150); //object(bevbrkhus1) (1)
	CreateDynamicObject(3606,-220.39999390,-1741.50000000,3.29999995,0.00000000,0.00000000,155.99487305, .worldid = 0, .streamdistance = 150); //object(bevbrkhus1) (4)
	CreateDynamicObject(3928,-200.39999390,-1741.00000000,0.20000000,0.00000000,0.00000000,336.00000000, .worldid = 0, .streamdistance = 150); //object(helipad) (1)
	CreateDynamicObject(3928,-205.19999695,-1751.50000000,0.20000000,0.00000000,0.00000000,335.99487305, .worldid = 0, .streamdistance = 150); //object(helipad) (2)
	CreateDynamicObject(1215,-200.00000000,-1749.80004883,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (1)
	CreateDynamicObject(1215,-207.60000610,-1746.50000000,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (2)
	CreateDynamicObject(1215,-210.69999695,-1753.30004883,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (3)
	CreateDynamicObject(1215,-203.10000610,-1756.50000000,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (4)
	CreateDynamicObject(1215,-198.39999390,-1745.90002441,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (5)
	CreateDynamicObject(1215,-195.50000000,-1739.19995117,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (6)
	CreateDynamicObject(1215,-202.60000610,-1736.09997559,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (7)
	CreateDynamicObject(1215,-205.69999695,-1742.69995117,0.69999999,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(bollardlight) (8)
	CreateDynamicObject(9345,-210.10000610,-1723.19995117,0.40000001,0.00000000,0.00000000,66.00000000, .worldid = 0, .streamdistance = 150); //object(sfn_pier_grassbit) (1)
	CreateDynamicObject(824,-213.50000000,-1723.50000000,2.40000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(genveg_tallgrass08) (1)
	CreateDynamicObject(824,-209.50000000,-1718.69995117,2.40000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(genveg_tallgrass08) (2)
	CreateDynamicObject(827,-210.80000305,-1721.59997559,4.40000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(genveg_tallgrass11) (1)
	CreateDynamicObject(824,-211.69999695,-1726.40002441,2.40000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(genveg_tallgrass08) (3)
	CreateDynamicObject(827,-210.30000305,-1725.09997559,4.40000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(genveg_tallgrass11) (2)
	CreateDynamicObject(827,-208.30000305,-1721.30004883,4.40000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(genveg_tallgrass11) (3)
	CreateDynamicObject(9833,-211.19999695,-1723.09997559,3.90000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(fountain_sfw) (1)
	CreateDynamicObject(1368,-209.69999695,-1714.90002441,0.80000001,0.00000000,0.00000000,232.00000000, .worldid = 0, .streamdistance = 150); //object(cj_blocker_bench) (1)
	CreateDynamicObject(1368,-218.19999695,-1725.50000000,0.80000001,0.00000000,0.00000000,231.99829102, .worldid = 0, .streamdistance = 150); //object(cj_blocker_bench) (2)
	CreateDynamicObject(832,-216.89999390,-1690.19995117,6.00000000,0.00000000,0.00000000,326.00000000, .worldid = 0, .streamdistance = 150); //object(dead_tree_4) (1)
	CreateDynamicObject(660,-220.50000000,-1686.40002441,3.90000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (1)
	CreateDynamicObject(660,-219.69999695,-1694.30004883,3.90000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (2)
	CreateDynamicObject(660,-220.69999695,-1690.19995117,3.90000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (3)
	CreateDynamicObject(660,-217.39999390,-1683.80004883,3.90000010,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (4)
	CreateDynamicObject(660,-236.60000610,-1754.30004883,3.50000000,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (5)
	CreateDynamicObject(660,-240.39999390,-1753.80004883,3.50000000,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (6)
	CreateDynamicObject(660,-239.30000305,-1752.09997559,3.50000000,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (7)
	CreateDynamicObject(660,-243.60000610,-1751.30004883,3.50000000,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 150); //object(pinetree03) (8)

	// Benny McCabe - Order ID: Free per Executive Administrators - House ID:
	CreateDynamicObject(13681, 2917.787109375, -815.408203125, 14.5561876297, 0, 0, 271.02026367188, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(13681, 2917.765625, -814.7646484375, 5.1811881065369, 179.99450683594, 0, 89.763793945313, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2905.046875, -800.263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2908.7485351563, -800.2646484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2912.4755859375, -800.2646484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2916.2099609375, -800.2646484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2919.9423828125, -800.2666015625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -800.265625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -800.263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -800.263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -800.263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -800.2646484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -803.00561523438, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -805.744140625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -808.48443603516, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -811.21844482422, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -813.95178222656, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -816.69116210938, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -819.43041992188, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -822.16296386719, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -824.89916992188, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -827.63983154297, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -830.37640380859, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -831.96893310547, 10.09167766571, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2919.9443359375, -831.96893310547, 10.09167766571, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2919.9448242188, -830.3759765625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -803.00561523438, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -805.744140625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -808.484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -811.2177734375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -813.951171875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -816.6904296875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -819.4296875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -822.162109375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -824.8984375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -827.6396484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -830.37640380859, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -831.96893310547, 10.09167766571, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -803.0048828125, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -831.96893310547, 10.09167766571, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -830.3759765625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -827.6396484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -805.744140625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -808.484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -824.8984375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -811.2177734375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -824.8984375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -827.6396484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -830.3759765625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -811.2177734375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -808.484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -805.744140625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -803.0048828125, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -803.0048828125, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -805.744140625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -808.484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -811.2177734375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -824.8984375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -827.6396484375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -830.3759765625, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -822.162109375, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -819.4296875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -816.6904296875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -813.951171875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2905.046875, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2908.748046875, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2912.4755859375, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2916.2099609375, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2919.9423828125, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.6748046875, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.40234375, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12890625, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(10183, 2915.63671875, -825.296875, 10.058817863464, 0, 0, 315.11535644531, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(5706, 2928.814453125, -811.1376953125, -0.20094972848892, 0, 0, 270.26916503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.3125, -799.271484375, 3.7186841964722, 179.99450683594, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5830078125, -797.5263671875, 10.093677520752, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8525390625, -831.96893310547, 10.09167766571, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5822753906, -831.96893310547, 10.09167766571, 270, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.3173828125, -794.69921875, 7.2686767578125, 0, 0, 180.20874023438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2937.5864257813, -794.71411132813, 7.2686767578125, 0, 0, 180.20874023438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2933.8562011719, -794.72833251953, 7.2686767578125, 0, 0, 179.95874023438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2930.1311035156, -794.73150634766, 7.2686767578125, 0, 0, 179.9560546875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2926.4038085938, -794.72857666016, 7.2686767578125, 0, 0, 179.9560546875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2922.6809082031, -794.73223876953, 7.2686767578125, 0, 0, 180.4560546875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.3125, -808.267578125, 3.7186841964722, 179.99450683594, 0, 359.99450683594, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.310546875, -817.24475097656, 3.7186841964722, 179.99450683594, 0, 359.99462890625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.3095703125, -826.23870849609, 3.7186841964722, 179.99450683594, 0, 359.99462890625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2941.6787109375, -802.2734375, 4.4522333145142, 0, 0, 315.14831542969, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3494, 2940.4809570313, -796.15319824219, 5.9290943145752, 0, 0, 0.9849853515625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3494, 2940.4396972656, -825.35748291016, 5.9290943145752, 0, 0, 0.9832763671875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.3212890625, -799.265625, 3.7186841964722, 179.99450683594, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.3276367188, -808.26519775391, 3.7186841964722, 179.99450683594, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.31640625, -817.2421875, 3.7186841964722, 179.99450683594, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.3308105469, -826.22009277344, 3.7186841964722, 179.99450683594, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2925.0861816406, -799.28155517578, 6.4686861038208, 179.99450683594, 318.25, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2925.0866699219, -808.26422119141, 6.4686861038208, 179.99450683594, 318.24645996094, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2925.0859375, -817.26422119141, 6.4686861038208, 179.99450683594, 318.24645996094, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2925.0864257813, -826.23968505859, 6.4686861038208, 179.99450683594, 318.24645996094, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8828125, -798.005859375, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8784179688, -801.73693847656, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8713378906, -805.45983886719, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8757324219, -809.19329833984, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8786621094, -812.92236328125, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8747558594, -816.64825439453, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.869140625, -820.3701171875, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8669433594, -824.09741210938, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.865234375, -827.8203125, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.2890625, -827.51287841797, 3.6936841011047, 179.99450683594, 0, 359.99450683594, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.3068847656, -827.50384521484, 3.6936841011047, 179.99450683594, 0, 359.99462890625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2925.09375, -827.4892578125, 6.4436860084534, 179.99450683594, 318.24096679688, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.8623046875, -831.5517578125, 7.2686767578125, 0, 0, 89.97802734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5732421875, -832.1005859375, 7.2686767578125, 0, 0, 359.736328125, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2941.708984375, -816.9765625, 4.4522333145142, 0, 0, 315.14831542969, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(16101, 2941.67578125, -794.88623046875, 8.6945304870605, 180, 0, 358.25, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(16101, 2941.6713867188, -809.61529541016, 8.369535446167, 179.99450683594, 0, 358.24768066406, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(16101, 2941.6596679688, -824.28253173828, 8.369535446167, 179.99450683594, 0, 358.24768066406, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3857, 2941.7373046875, -828.103515625, 6.6272912025452, 0, 0, 315.14831542969, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(16101, 2941.67578125, -831.86407470703, 3.5445365905762, 0, 0, 19.187713623047, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8488769531, -832.09265136719, 7.2686767578125, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.1215820313, -832.07989501953, 7.2686767578125, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.392578125, -832.06665039063, 7.2686767578125, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.666015625, -832.05407714844, 7.2686767578125, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2919.9375, -832.04125976563, 7.2686767578125, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2935.14453125, -831.6279296875, 9.0938940048218, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2940.5673828125, -831.6201171875, 9.0900907516479, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2941.4716796875, -816.62744140625, 9.0900907516479, 0, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2941.4682617188, -796.11645507813, 9.0650911331177, 0, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2926.6396484375, -794.9912109375, 9.0900907516479, 0, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2909.671875, -794.9755859375, 9.0920906066895, 0, 0, 179.95056152344, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2906.1201171875, -794.966796875, 9.0900907516479, 0, 0, 179.94506835938, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2934.3349609375, -831.9189453125, 6.2022352218628, 0, 0, 224.91760253906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.8154296875, -832.05114746094, 4.5436730384827, 0, 0, 359.99182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2934.34375, -794.9072265625, 4.4522333145142, 0, 0, 44.876342773438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2926.5771484375, -794.7373046875, 4.5436758995056, 0, 0, 179.95056152344, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5732421875, -832.1005859375, 0.49367746710777, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5732421875, -832.1005859375, -2.2313222885132, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5732421875, -832.1005859375, -4.9563231468201, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5732421875, -832.1005859375, -7.6813244819641, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.5732421875, -832.1005859375, -10.406328201294, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8486328125, -832.091796875, 0.49367746710777, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8486328125, -832.091796875, -2.2313232421875, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.8486328125, -832.091796875, -4.9563241004944, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12109375, -832.0791015625, 0.49367681145668, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2931.12109375, -832.0791015625, -2.2313239574432, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.392578125, -832.06640625, 0.49367681145668, 0, 0, 359.74182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.3198242188, -831.90460205078, 0.49367746710777, 0, 0, 179.20178222656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.3193359375, -831.904296875, -2.2313222885132, 0, 0, 179.19799804688, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.3193359375, -831.904296875, -4.9563221931458, 0, 0, 179.19799804688, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.3193359375, -831.904296875, -7.6813216209412, 0, 0, 179.19799804688, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.3193359375, -831.904296875, -10.406339645386, 0, 0, 179.19799804688, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2937.5866699219, -831.86511230469, 0.49367746710777, 0, 0, 179.45178222656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2937.5859375, -831.8642578125, -2.2313203811646, 0, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2937.5859375, -831.8642578125, -4.9563250541687, 0, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2933.8500976563, -831.83258056641, 0.49367681145668, 0, 0, 179.20178222656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2933.849609375, -831.83203125, -2.2313241958618, 0, 0, 179.19799804688, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2930.1333007813, -831.78784179688, 0.49367681145668, 0, 0, 179.20178222656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(621, 2924.6599121094, -836.42474365234, 3.1293029785156, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(645, 2921.814453125, -848.9833984375, 5.1675477027893, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(645, 2911.68359375, -786.5849609375, 8.5175476074219, 0, 0, 280.2392578125, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(710, 2916.8862304688, -781.94665527344, 18.213050842285, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3510, 2916.1657714844, -791.92126464844, 9.8343143463135, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(621, 2923.9956054688, -860.38891601563, -1.8706970214844, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(710, 2930.3647460938, -761.61480712891, 17.752620697021, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(647, 2913.5520019531, -783.77856445313, 11.657711982727, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(647, 2913.5668945313, -788.52905273438, 11.657711982727, 0, 0, 49.850006103516, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(805, 2909.4975585938, -790.01330566406, 11.185195922852, 0, 0, 19.940002441406, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(805, 2914.4477539063, -769.66021728516, 11.185195922852, 0, 0, 59.814697265625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(869, 2911.8649902344, -791.04583740234, 10.482151985168, 0, 0, 29.910003662109, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(869, 2911.6057128906, -783.70391845703, 10.482151985168, 0, 0, 49.844787597656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(8648, 2904.2482910156, -815.17687988281, 10.902546882629, 0, 0, 359.75, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(13011, 2928.7104492188, -830.69097900391, 11.232831001282, 0, 0, 89.730010986328, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(5130, 2947.77734375, -813.345703125, 7.078914642334, 0, 0, 315.11535644531, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(11496, 2951.2043457031, -813.22039794922, 3.9000024795532, 0, 0, 180.02197265625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(11496, 2956.1989746094, -813.21905517578, 3.9000024795532, 0, 0, 0.00518798828125, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1437, 2960.97265625, -815.57824707031, -0.44676610827446, 7.75, 0.25, 89.730041503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2952.9738769531, -806.31072998047, 4.28009557724, 90, 0, 89.961547851563, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2959.7529296875, -806.3525390625, 4.28009557724, 90, 0, 89.9560546875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2945.951171875, -805.9375, 4.28009557724, 90, 0, 89.9560546875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(17026, 2944.0964355469, -800.171875, -24.344438552856, 0, 0, 330.09008789063, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(17071, 2950.3581542969, -806.70458984375, -8.4936723709106, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(17071, 2963.2299804688, -796.84735107422, -8.4936723709106, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(17026, 2960.568359375, -802.09460449219, -41.584438323975, 0, 0, 334.05969238281, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(896, 2953.7387695313, -810.89038085938, -8.9610290527344, 334.7099609375, 0, 49.850006103516, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(896, 2947.681640625, -813.681640625, -8.9610290527344, 334.70397949219, 0, 109.65454101563, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(896, 2954.3720703125, -819.71899414063, -8.9610290527344, 334.70397949219, 0, 39.870025634766, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(896, 2959.521484375, -819.93560791016, -20.411026000977, 334.70397949219, 0, 129.59939575195, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.3149414063, -799.34643554688, 9.0436754226685, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.3229980469, -799.34063720703, 9.0436754226685, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.3422851563, -806.66217041016, 9.0186758041382, 0.5, 0, 359.98913574219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2919.3461914063, -799.33483886719, 9.0436754226685, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.2939453125, -806.66174316406, 9.0186758041382, 0.4998779296875, 0, 359.98352050781, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2937.095703125, -827.32305908203, 9.0436754226685, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3095, 2928.1169433594, -827.32098388672, 9.0436754226685, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.8784179688, -822.30499267578, 9.0436744689941, 90, 0, 89.730041503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2925.1599121094, -822.28991699219, 9.0446748733521, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.8952636719, -818.57800292969, 9.0436744689941, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.9125976563, -814.84924316406, 9.0436744689941, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.9306640625, -811.12127685547, 9.0436744689941, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2925.1767578125, -818.57702636719, 9.0446748733521, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2925.1767578125, -814.84924316406, 9.0446748733521, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2925.1767578125, -811.12127685547, 9.0446748733521, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2930.1896972656, -811.94793701172, 8.6150979995728, 0, 0, 89.730041503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2930.189453125, -811.947265625, 8.9900922775269, 0, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.1079101563, -822.89581298828, 9.0436744689941, 90, 0, 179.45520019531, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.1330566406, -820.15447998047, 9.0436744689941, 90, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.1608886719, -817.43096923828, 9.0436744689941, 90, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.1838378906, -814.69049072266, 9.0436744689941, 90, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.2104492188, -811.94989013672, 9.0436744689941, 90, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2937.791015625, -811.8623046875, 8.5900983810425, 0, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2937.791015625, -811.8623046875, 9.0150918960571, 0, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2924.9169921875, -822.517578125, 8.9900922775269, 0, 0, 179.45068359375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2924.9169921875, -822.517578125, 8.6150979995728, 0, 0, 179.44519042969, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2923.6796875, -823.26953125, 9.640082359314, 90, 0, 179.44519042969, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2924.2421875, -811.3984375, 8.6150979995728, 0, 0, 179.44519042969, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2924.2421875, -811.3984375, 9.0275087356567, 0, 0, 179.44067382813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2938.35546875, -795.03277587891, 7.2686767578125, 0, 0, 359.66836547852, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2934.6284179688, -795.00842285156, 7.2686767578125, 0, 0, 359.66491699219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2930.9057617188, -794.98419189453, 7.2686767578125, 0, 0, 359.66491699219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2927.1811523438, -794.96038818359, 7.2686767578125, 0, 0, 359.66839599609, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.4526367188, -794.93817138672, 7.2686767578125, 0, 0, 359.66491699219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2919.7270507813, -794.93182373047, 7.2686767578125, 0, 0, 359.66491699219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2923.80078125, -794.9169921875, 4.543673992157, 0, 0, 359.66491699219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2934.34375, -794.9072265625, 4.4522333145142, 0, 0, 224.33386230469, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2941.6787109375, -802.2734375, 4.4522333145142, 0, 0, 134.60821533203, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2941.708984375, -816.9765625, 4.4522333145142, 0, 0, 134.60821533203, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3858, 2934.3349609375, -831.9189453125, 6.2022352218628, 0, 0, 44.377563476563, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3857, 2941.7373046875, -828.103515625, 6.6272912025452, 0, 0, 134.60821533203, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5183105469, -795.47772216797, 7.2686767578125, 0, 0, 270.51806640625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5458984375, -799.20275878906, 7.2686767578125, 0, 0, 270.51635742188, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5393066406, -802.93060302734, 7.2686767578125, 0, 0, 269.76635742188, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5314941406, -806.65209960938, 7.2686767578125, 0, 0, 270.013671875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5266113281, -810.37854003906, 7.2686767578125, 0, 0, 270.01098632813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5249023438, -814.10473632813, 7.2686767578125, 0, 0, 270.01098632813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5319824219, -817.83074951172, 7.2686767578125, 0, 0, 270.01098632813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5437011719, -821.55755615234, 7.2686767578125, 0, 0, 270.01098632813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.5529785156, -825.28350830078, 7.2686767578125, 0, 0, 270.01098632813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2941.57421875, -828.53515625, 7.2686767578125, 0, 0, 267.26098632813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2940.9985351563, -831.73889160156, 7.2686767578125, 0, 0, 180.27661132813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2937.2729492188, -831.75048828125, 7.2686767578125, 0, 0, 180.27465820313, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2933.5517578125, -831.77093505859, 7.2686767578125, 0, 0, 180.27465820313, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2929.8251953125, -831.79034423828, 7.2686767578125, 0, 0, 179.52465820313, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2926.09765625, -831.77081298828, 7.2686767578125, 0, 0, 179.52209472656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2922.3720703125, -831.74993896484, 7.2686767578125, 0, 0, 179.77209472656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2926.5725097656, -831.77917480469, 4.5436749458313, 0, 0, 179.52209472656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2395, 2926.3232421875, -831.88366699219, 8.5936756134033, 0, 90, 89.792144775391, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2986, 2926.3056640625, -830.44140625, 5.9904713630676, 90, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2938.990234375, -794.76129150391, 10.709551811218, 0, 0, 359.75, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2933.3942871094, -794.72076416016, 10.709551811218, 0, 0, 359.5, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2927.8200683594, -794.68060302734, 10.709551811218, 0, 0, 359.5, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2922.224609375, -794.65466308594, 10.709551811218, 0, 0, 359.49462890625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2916.6489257813, -794.62927246094, 10.709551811218, 0, 0, 359.74462890625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2907.4736328125, -794.62890625, 10.709551811218, 0, 0, 359.99182128906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2911.0732421875, -794.62890625, 10.709551811218, 0, 0, 359.98901367188, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2941.791015625, -797.66131591797, 10.709551811218, 0, 0, 270.01745605469, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2941.7907714844, -803.23767089844, 10.709551811218, 0, 0, 270.01647949219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2941.7653808594, -808.86267089844, 10.709551811218, 0, 0, 269.76647949219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2941.6892089844, -828.94738769531, 10.709551811218, 0, 0, 269.76379394531, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2941.7126464844, -823.34716796875, 10.709551811218, 0, 0, 269.76379394531, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2941.736328125, -817.74633789063, 10.709551811218, 0, 0, 269.76379394531, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2938.9045410156, -831.89056396484, 10.709551811218, 0, 0, 180.03399658203, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2933.3032226563, -831.89898681641, 10.709551811218, 0, 0, 180.03295898438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2927.74609375, -831.88189697266, 10.709551811218, 0, 0, 180.03295898438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1408, 2923.3298339844, -831.8818359375, 10.709551811218, 0, 0, 180.03295898438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2986, 2930.9641113281, -829.29217529297, 3.0960600376129, 180.11999511719, 0.5, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2114, 2926.8093261719, -803.58679199219, 10.195852279663, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2114, 2926.5390625, -803.029296875, 10.195852279663, 71.455078125, 0, 59.815063476563, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(947, 2926.8330078125, -803.6708984375, 12.202465057373, 0, 0, 270.26916503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1481, 2940.0383300781, -830.69488525391, 10.750667572021, 0, 0, 220.42041015625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2103, 2916.8098144531, -790.80798339844, 10.033430099487, 0, 0, 139.58004760742, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2104, 2926.2270507813, -816.52099609375, 10.040838241577, 0, 0, 89.980041503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2229, 2926.2788085938, -815.51000976563, 10.049541473389, 0, 0, 89.730041503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(17969, 2926.2875976563, -813.92602539063, 7.6413102149963, 0, 0, 180.04052734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2229, 2926.2568359375, -817.33514404297, 10.049541473389, 0, 0, 89.725341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2229, 2926.2490234375, -829.68524169922, 10.049541473389, 0, 0, 149.54528808594, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2229, 2926.5129394531, -800.16912841797, 10.049541473389, 0, 0, 39.870361328125, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1461, 2959.4431152344, -805.93737792969, 4.9012141227722, 0, 0, 330.09008789063, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1598, 2938.3596191406, -791.87854003906, 0, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1643, 2918.0080566406, -790.55383300781, 10.037899017334, 0, 0, 230.39038085938, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1641, 2917.6306152344, -787.14428710938, 10.036287307739, 0, 0, 310.15014648438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1543, 2917.8410644531, -791.40753173828, 10.037242889404, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(16151, 2927.3852539063, -824.85339355469, 10.374536514282, 0, 0, 180.54052734375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1512, 2928.3415527344, -826.91528320313, 11.177407264709, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1541, 2927.8818359375, -823.51300048828, 11.206438064575, 0, 0, 89.730010986328, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1543, 2928.2072753906, -825.72174072266, 10.979954719543, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2856, 2928.3786621094, -822.72033691406, 10.979954719543, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(910, 2909.5739746094, -830.75903320313, 11.241031646729, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2425, 2926.4855957031, -828.00329589844, 10.999955177307, 0, 0, 89.775085449219, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2600, 2941.0932617188, -796.11688232422, 10.821813583374, 0, 0, 119.64001464844, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1478, 2909.0383300781, -800.66204833984, 10.683049201965, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2904.2766113281, -800.42114257813, 11.038877487183, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2904.1284179688, -829.94720458984, 11.73886680603, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2904.1684570313, -822.43176269531, 11.73886680603, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2904.1875, -814.64099121094, 11.73886680603, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2904.2338867188, -806.91479492188, 11.73886680603, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2960.0617675781, -820.49127197266, 4.7000041007996, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2959.9990234375, -805.84643554688, 4.7000041007996, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2947.2797851563, -806.01916503906, 4.7000041007996, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1215, 2947.3395996094, -820.59552001953, 4.7000041007996, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2964, 2937.2602539063, -799.04571533203, 10.049541473389, 0, 0, 270.27026367188, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2996, 2937.3449707031, -799.47320556641, 10.979491233826, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2999, 2936.9287109375, -799.09423828125, 10.979491233826, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3002, 2937.6237792969, -799.18432617188, 10.979491233826, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3003, 2937.3645019531, -798.90386962891, 10.979887962341, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3004, 2936.6850585938, -799.3916015625, 11.58775138855, 276.63000488281, 0, 69.790008544922, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3101, 2936.8979492188, -799.90234375, 10.979491233826, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3104, 2937.6281738281, -798.24090576172, 10.979491233826, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(842, 2915.3193359375, -786.16766357422, 10.165724754333, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1543, 2918.2648925781, -786.79864501953, 10.037242889404, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(841, 2919.0263671875, -788.70208740234, 10.166373252869, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(3525, 2918.9970703125, -788.65655517578, 9.3788919448853, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1985, 2919.4182128906, -820.40850830078, 18.418100357056, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2628, 2922.1481933594, -820.93658447266, 14.539377212524, 0, 0, 179.4599609375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2629, 2916.5812988281, -821.03051757813, 14.539377212524, 0, 0, 179.4599609375, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2915, 2921.7885742188, -819.44384765625, 14.660539627075, 0, 0, 320.1201171875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2913, 2917.03125, -821.53021240234, 15.456178665161, 90, 0, 270.27026367188, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1646, 2952.0837402344, -815.18542480469, 4.4374303817749, 0, 0, 99.655029296875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1646, 2952.072265625, -812.4345703125, 4.4374303817749, 0, 0, 73.711486816406, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1815, 2950.6323242188, -814.36676025391, 4.1000008583069, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1543, 2951.0544433594, -814.13543701172, 4.5964546203613, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1544, 2951.4460449219, -813.59832763672, 4.5964546203613, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1255, 2936.2697753906, -830.58001708984, 10.621438980103, 0, 0, 29.910003662109, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1255, 2935.8278808594, -828.73138427734, 10.621438980103, 0, 0, 9.9647827148438, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1255, 2936.3405761719, -826.45361328125, 10.621438980103, 0, 0, 330.08459472656, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2993, 2941.693359375, -831.85260009766, 13.42255115509, 0, 353.31005859375, 68.789978027344, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2680, 2926.4025878906, -830.94653320313, 5.525294303894, 0, 0, 99.700012207031, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2406, 2941.68359375, -811.55364990234, 11.299774169922, 336.18005371094, 0, 300.18017578125, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2404, 2941.1877441406, -810.91046142578, 10.324789047241, 346.10504150391, 271.14501953125, 267.43005371094, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1432, 2938.9833984375, -804.74011230469, 10.049541473389, 0, 0, 0, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2121, 2940.8557128906, -803.44708251953, 10.312814712524, 265.375, 0, 330.09008789063, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(2114, 2925.2770996094, -802.33874511719, 14.685678482056, 71.455078125, 0, 29.905059814453, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(625, 2938.9877929688, -797.18438720703, 10.899528503418, 0, 0, 240.3603515625, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(645, 2910.4228515625, -773.79028320313, 8.5175476074219, 0, 0, 340.05908203125, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(645, 2927.7497558594, -843.06115722656, 2.9175419807434, 0, 0, 49.850006103516, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2941.0161132813, -816.65478515625, 7.5188956260681, 90, 0, 89.730041503906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2941.04296875, -799.62805175781, 7.5188956260681, 90, 0, 89.975341796875, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2940.9792480469, -796.23474121094, 7.5188956260681, 90, 0, 90.722534179688, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2926.3840332031, -795.72192382813, 7.5188956260681, 90, 0, 180.44958496094, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2909.3764648438, -795.83099365234, 7.5188956260681, 90, 0, 180.44494628906, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2940.37109375, -831.20495605469, 7.5188956260681, 90, 0, 359.99536132813, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(14397, 2923.3403320313, -831.2138671875, 7.5188956260681, 90, 0, 359.99450683594, .worldid = 0, .streamdistance = 180);
	CreateDynamicObject(1251, 2919.3784179688, -823.75500488281, 18.422344207764, 0.25, 266.89007568359, 0, .worldid = 0, .streamdistance = 180);
	// Nick - Order ID: Executive Administrator - House ID: 3435(EXTERIOR)
	CreateDynamicObject(19452, 340.59, -218.87, 2.00,   -25.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 338.61, -221.71, 2.00,   -25.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 342.60, -216.00, 2.00,   -25.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 345.98, -226.88, 5.05,   -12.50, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 347.96, -224.03, 5.05,   -12.50, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 349.93, -221.23, 5.05,   -12.50, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 351.37, -220.31, 3.70,   12.50, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 338.59, -223.65, 0.80,   25.00, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 344.35, -215.24, 0.80,   25.00, 0.00, 234.00, .streamdistance = 150);
	CreateDynamicObject(19452, 345.68, -228.64, 3.70,   12.50, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 353.68, -232.30, 6.75,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 355.67, -229.43, 6.75,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 357.68, -226.57, 6.75,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 361.51, -237.77, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 351.68, -235.16, 6.75,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 349.68, -238.03, 6.75,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 347.67, -240.89, 6.75,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 345.73, -243.67, 6.74,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 346.47, -235.02, 4.70,   0.00, 0.00, 144.50, .streamdistance = 150);
	CreateDynamicObject(19452, 339.82, -236.17, 4.70,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 343.74, -246.52, 6.74,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 338.66, -237.01, 6.10,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 336.66, -239.88, 6.10,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(3253, 338.32, -238.06, 6.22,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19360, 334.96, -234.59, 4.70,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19360, 333.16, -237.18, 4.70,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(1337, 335.04, -238.72, 6.82,   0.00, 0.00, -33.00, .streamdistance = 150);
	CreateDynamicObject(1339, 335.70, -239.17, 6.82,   0.00, 0.00, -33.00, .streamdistance = 150);
	CreateDynamicObject(19452, 336.06, -241.19, 4.70,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19433, 339.64, -244.59, 4.70,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 363.51, -234.91, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 365.50, -232.04, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 359.51, -240.64, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 357.52, -243.51, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 355.52, -246.37, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 353.52, -249.23, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 351.52, -252.09, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 341.74, -249.37, 6.74,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 349.52, -254.94, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 339.74, -252.22, 6.74,   -8.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 347.52, -257.81, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 373.45, -237.51, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 371.44, -240.36, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 369.43, -243.24, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 367.44, -246.10, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 365.45, -248.95, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 363.46, -251.83, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 361.43, -254.69, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 359.43, -257.56, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 357.41, -260.43, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 355.40, -263.30, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 353.39, -266.17, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 345.50, -260.67, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(13816, 371.36, -253.44, 5.00,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 343.50, -263.54, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19360, 338.28, -246.54, 4.70,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19433, 336.91, -248.49, 4.70,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19433, 336.00, -249.80, 4.70,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 339.53, -253.30, 5.36,   -8.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1697, 392.46, -258.10, 12.24,   0.00, 0.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(1697, 389.03, -253.95, 12.24,   0.00, 0.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(1697, 385.26, -248.94, 12.24,   0.00, 0.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(19452, 351.38, -269.05, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1536, 360.87, -250.22, 7.50,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1536, 362.67, -247.61, 7.50,   0.00, 0.00, 235.00, .streamdistance = 150);
	CreateDynamicObject(3095, 362.20, -249.37, 5.81,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 358.96, -225.73, 5.39,   8.00, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 366.56, -231.16, 6.04,   0.00, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 341.50, -266.40, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1536, 358.68, -261.69, 7.50,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 349.37, -271.89, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19425, 350.15, -229.69, 6.20,   -8.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19425, 352.03, -227.00, 6.20,   -8.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19425, 353.94, -224.29, 6.20,   -8.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 339.51, -269.26, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 347.38, -274.77, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 345.40, -277.64, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 337.50, -272.12, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(950, 338.72, -241.02, 6.72,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(3886, 359.39, -287.56, 0.05,   0.00, 0.00, 40.00, .streamdistance = 150);
	CreateDynamicObject(3934, 366.15, -255.32, 12.30,   0.00, 0.00, -35.00, .streamdistance = 150);
	CreateDynamicObject(3095, 373.97, -232.37, 5.93,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 335.52, -274.97, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 343.40, -280.50, 7.41,   0.00, 90.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 340.62, -259.81, 6.00,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 335.11, -267.68, 6.00,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19433, 331.90, -272.25, 6.00,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 335.26, -275.70, 6.00,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 343.10, -281.21, 6.00,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 349.74, -279.92, 6.00,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 355.28, -272.03, 6.00,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19360, 358.95, -266.78, 6.00,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19360, 360.80, -264.16, 5.60,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 343.10, -281.21, 2.50,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 335.26, -275.70, 2.50,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 349.74, -279.92, 2.50,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 355.28, -272.03, 2.50,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19360, 358.95, -266.78, 2.50,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19360, 360.80, -264.16, 2.10,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 383.65, -243.09, 5.60,   0.00, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 391.45, -248.66, 5.60,   0.00, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 392.78, -255.34, 5.60,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 387.26, -263.23, 5.60,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 381.74, -271.11, 5.60,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19360, 378.14, -276.26, 5.60,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 373.35, -274.56, 5.60,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 365.51, -269.08, 5.60,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19360, 360.31, -265.42, 5.60,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19360, 360.31, -265.42, 2.10,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 365.51, -269.08, 2.10,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19452, 373.35, -274.56, 2.10,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19360, 378.14, -276.26, 2.10,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 381.76, -271.12, 2.10,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 387.26, -263.23, 2.10,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 392.78, -255.34, 2.10,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 391.45, -248.66, 2.10,   0.00, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 373.35, -274.56, -1.40,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19360, 378.14, -276.26, -1.40,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 381.76, -271.12, -1.40,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 387.26, -263.23, -1.40,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 337.25, -265.73, 9.25,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19366, 333.60, -270.97, 9.25,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 337.25, -265.73, 12.75,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 343.87, -264.58, 12.75,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19366, 348.80, -268.03, 12.75,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19366, 333.60, -270.97, 12.75,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 336.58, -274.97, 9.25,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19458, 336.58, -274.97, 12.75,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19366, 341.43, -278.40, 12.75,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19458, 347.35, -272.81, 12.75,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19366, 343.67, -278.06, 12.75,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19366, 341.43, -278.40, 9.25,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(19366, 343.67, -278.06, 9.25,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 347.35, -272.81, 9.25,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 346.73, -271.98, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 343.89, -270.01, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 341.04, -268.01, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19458, 338.20, -266.00, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19366, 343.05, -277.24, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19366, 340.29, -275.29, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19366, 337.44, -273.31, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19366, 334.59, -271.29, 14.35,   0.00, 90.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(3361, 362.21, -270.73, 5.18,   0.00, 0.00, 235.00, .streamdistance = 150);
	CreateDynamicObject(3361, 358.70, -275.80, 1.07,   0.00, 0.00, 235.00, .streamdistance = 150);
	CreateDynamicObject(3361, 368.13, -234.41, 9.68,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(1647, 385.63, -263.24, 7.50,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1646, 384.80, -264.44, 7.63,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1645, 383.97, -265.61, 7.63,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1645, 383.17, -266.71, 7.63,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1647, 382.42, -267.75, 7.50,   0.00, 0.00, 55.00, .streamdistance = 150);
	CreateDynamicObject(1481, 375.92, -273.83, 7.85,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(2406, 379.21, -269.65, 7.80,   295.00, -4.00, 69.00, .streamdistance = 150);
	CreateDynamicObject(18632, 360.74, -291.90, 1.00,   -11.00, 180.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(18632, 360.51, -291.31, 1.00,   11.00, 180.00, 0.00, .streamdistance = 150);
	CreateDynamicObject(19452, 383.65, -243.09, 2.10,   0.00, 0.00, 234.50, .streamdistance = 150);
	CreateDynamicObject(19452, 381.42, -237.71, 5.64,   0.00, 0.00, 145.00, .streamdistance = 150);
	CreateDynamicObject(19452, 380.18, -231.05, 5.64,   0.00, 0.00, 55.00, .streamdistance = 150);

	// Nick's House(Tony Savita) - Order ID: Exeuctive Administrator - House ID: 3435
	CreateDynamic3DTextLabel("Sativa Residence",0x880000AA,-1447.57287598,-1305.27624512,101.0,12.0);
	CreateDynamicObject(3648,-1396.75878906,-1223.28417969,108.07105255,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3359,-1397.28442383,-1207.83923340,104.37220764,0.00000000,0.00000000,268.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3497,-1402.17663574,-1208.94262695,109.33592224,0.00000000,0.00000000,90.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(11393,-1396.83581543,-1203.54101562,106.05539703,0.00000000,0.00000000,358.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3015,-1400.6290283203,-1204.5076904297,104.74490356445,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1452,-1395.43823242,-1229.81054688,107.16266632,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(2521,-1395.45336914,-1229.80236816,106.16969299,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1481,-1389.95373535,-1223.11901855,106.52928162,0.00000000,0.00000000,90.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1463,-1378.27832031,-1228.90783691,106.80716705,0.00000000,0.00000000,90.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(18688,-1378.59570312,-1229.06042480,105.60595703,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(3407,-1447.57287598,-1305.27624512,99.47910309,0.00000000,0.00000000,304.99145508, .interiorid = -1, .worldid = -1, .streamdistance = 150);
	CreateDynamicObject(1337,-1446.54943848,-1306.02832031,100.19672394,0.00000000,0.00000000,292.99145508, .interiorid = -1, .worldid = -1, .streamdistance = 150);

	// Sean Fitzpatrick - Order ID: 17883 - House ID: N/A- Dynamic Door ID: 291
	CreateDynamicObject(14846, 1328.43, -1563.13, 5000.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1557, 1313.20, -1569.34, 4997.56,   0.00, 0.00, 90.00);
	CreateDynamicObject(1557, 1313.20, -1566.30, 4997.56,   0.00, 0.00, 270.00);
	CreateDynamicObject(14900, 1311.58, -1568.85, 4999.16,   0.00, 0.00, 270.00);
	CreateDynamicObject(18001, 1319.51, -1571.55, 4999.26,   0.00, 0.00, 180.00);
	CreateDynamicObject(18001, 1319.51, -1571.90, 4999.26,   0.00, 0.00, 0.00);
	CreateDynamicObject(1502, 1315.38, -1571.70, 4997.56,   0.00, 0.00, 180.00);
	CreateDynamicObject(16637, 1311.99, -1571.78, 4999.07,   0.00, 0.00, 270.00);
	CreateDynamicObject(14842, 1321.80, -1583.01, 4999.43,   0.00, 0.00, 0.00);
	CreateDynamicObject(1706, 1319.07, -1563.83, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(1706, 1321.86, -1563.83, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(1821, 1323.61, -1566.28, 4997.56,   0.00, 0.00, 90.00);
	CreateDynamicObject(1808, 1320.99, -1563.61, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2855, 1323.20, -1565.86, 4998.03,   0.00, 0.00, 0.00);
	CreateDynamicObject(1706, 1314.60, -1563.86, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(1775, 1313.30, -1565.55, 4998.66,   0.00, 0.00, 90.00);
	CreateDynamicObject(2817, 1314.40, -1568.32, 4997.56,   0.00, 0.00, 90.00);
	CreateDynamicObject(1722, 1323.45, -1568.90, 4997.56,   0.00, 0.00, 90.00);
	CreateDynamicObject(1722, 1323.45, -1570.00, 4997.56,   0.00, 0.00, 90.00);
	CreateDynamicObject(1722, 1323.45, -1571.00, 4997.56,   0.00, 0.00, 90.00);
	CreateDynamicObject(1722, 1320.78, -1569.01, 4997.56,   0.00, 0.00, 180.00);
	CreateDynamicObject(1722, 1319.50, -1569.01, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1318.00, -1569.01, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1316.50, -1569.01, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1316.50, -1567.80, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1318.00, -1567.80, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1319.50, -1567.80, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1320.78, -1567.80, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1320.78, -1566.50, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1319.50, -1566.50, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1318.00, -1566.50, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(1722, 1316.50, -1566.50, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(2067, 1319.60, -1574.84, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1319.59, -1575.49, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1319.00, -1574.84, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1319.00, -1575.49, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1318.44, -1574.84, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1318.44, -1575.49, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1317.87, -1574.84, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1317.87, -1575.49, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1317.30, -1574.84, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1317.30, -1575.49, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1316.72, -1574.84, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2067, 1316.72, -1575.49, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(1714, 1320.34, -1573.57, 4997.56,   0.00, 0.00, 179.99);
	CreateDynamicObject(2167, 1314.00, -1578.91, 4997.56,   0.00, 0.00, 180.00);
	CreateDynamicObject(2164, 1321.86, -1578.81, 4997.56,   0.00, 0.00, 180.00);
	CreateDynamicObject(14455, 1315.44, -1578.89, 4999.23,   0.00, 0.00, 0.00);
	CreateDynamicObject(2198, 1319.64, -1572.50, 4997.56,   0.00, 0.00, 0.00);
	CreateDynamicObject(2185, 1322.01, -1576.34, 4997.56,   0.00, 0.00, 90.00);
	CreateDynamicObject(2605, 1313.76, -1575.15, 4997.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(1846, 1332.73, -1554.98, 5000.95,   90.00, 0.00, 90.00);
	CreateDynamicObject(2233, 1333.91, -1553.44, 4998.96,   0.00, 0.00, 270.00);
	CreateDynamicObject(2233, 1333.99, -1557.10, 4998.96,   0.00, 0.00, 269.99);
	CreateDynamicObject(1761, 1330.03, -1551.94, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(1761, 1332.08, -1557.60, 4998.96,   0.00, 0.00, 180.00);
	CreateDynamicObject(1762, 1328.67, -1554.30, 4998.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(1762, 1328.67, -1556.30, 4998.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(1817, 1331.46, -1555.27, 4998.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(2852, 1331.03, -1554.91, 4999.47,   0.00, 0.00, 0.00);
	CreateDynamicObject(2344, 1330.66, -1554.22, 4999.48,   0.00, 0.00, 0.00);
	CreateDynamicObject(14651, 1331.09, -1559.82, 5001.20,   0.00, 0.00, 90.00);
	CreateDynamicObject(3102, 1330.06, -1560.07, 5000.11,   0.00, 0.00, 0.00);
	CreateDynamicObject(3103, 1331.07, -1560.17, 5000.11,   0.00, 0.00, 0.00);
	CreateDynamicObject(3101, 1330.48, -1560.17, 5000.11,   0.00, 0.00, 0.00);
	CreateDynamicObject(1432, 1323.10, -1561.11, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(1302, 1325.01, -1547.65, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(16637, 1321.20, -1554.63, 5001.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(16637, 1321.20, -1550.81, 5001.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(16151, 1322.41, -1554.79, 4999.46,   0.00, 0.00, 180.00);
	CreateDynamicObject(1432, 1331.05, -1549.42, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(2136, 1319.47, -1538.52, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(2139, 1318.48, -1538.55, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(2357, 1329.70, -1539.23, 4999.36,   0.00, 0.00, 90.00);
	CreateDynamicObject(1714, 1329.73, -1536.44, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(1715, 1331.18, -1537.73, 4998.96,   0.00, 0.00, 270.00);
	CreateDynamicObject(1715, 1331.18, -1539.00, 4998.96,   0.00, 0.00, 269.99);
	CreateDynamicObject(1715, 1331.18, -1540.20, 4998.96,   0.00, 0.00, 269.99);
	CreateDynamicObject(1715, 1331.18, -1541.30, 4998.96,   0.00, 0.00, 269.99);
	CreateDynamicObject(1715, 1329.66, -1542.14, 4998.96,   0.00, 0.00, 180.00);
	CreateDynamicObject(1715, 1328.00, -1540.20, 4998.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(1715, 1328.00, -1541.30, 4998.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(1715, 1328.00, -1539.00, 4998.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(1715, 1328.00, -1537.73, 4998.96,   0.00, 0.00, 90.00);
	CreateDynamicObject(2491, 1326.67, -1535.80, 4998.46,   0.00, 0.00, 0.00);
	CreateDynamicObject(2491, 1326.67, -1535.80, 4997.21,   0.00, 0.00, 0.00);
	CreateDynamicObject(2118, 1332.56, -1535.24, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(3965, 1333.36, -1532.76, 5000.01,   0.00, 0.00, 140.00);
	CreateDynamicObject(2222, 1332.74, -1535.23, 4999.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(2138, 1321.46, -1538.55, 4998.97,   0.00, 0.00, 0.00);
	CreateDynamicObject(2305, 1317.53, -1538.58, 4998.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(2305, 1323.37, -1538.58, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(2139, 1322.44, -1538.55, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(2137, 1317.52, -1539.60, 4998.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(2135, 1317.52, -1540.59, 4998.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(2140, 1323.57, -1541.86, 4998.96,   0.00, 0.00, 270.00);
	CreateDynamicObject(2140, 1323.57, -1540.86, 4998.96,   0.00, 0.00, 269.99);
	CreateDynamicObject(2137, 1317.52, -1541.60, 4998.97,   0.00, 0.00, 90.00);
	CreateDynamicObject(2139, 1320.64, -1541.37, 4998.96,   0.00, 0.00, 0.00);
	CreateDynamicObject(2139, 1320.67, -1540.35, 4998.96,   0.00, 0.00, 180.00);
	CreateDynamicObject(2245, 1320.70, -1540.82, 5000.29,   0.00, 0.00, 0.00);
	CreateDynamicObject(14858, 1318.82, -1560.11, 5007.78,   0.00, 0.00, 0.00);
	CreateDynamicObject(2439, 1294.16, -1578.72, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(2439, 1295.16, -1578.72, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(2440, 1296.15, -1578.72, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(2440, 1293.17, -1578.69, 5002.63,   0.00, 0.00, 270.00);
	CreateDynamicObject(1714, 1294.72, -1577.45, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(14455, 1297.21, -1581.59, 5004.30,   0.00, 0.00, 90.00);
	CreateDynamicObject(1714, 1293.80, -1580.26, 5002.63,   0.00, 0.00, 158.00);
	CreateDynamicObject(1714, 1295.62, -1580.21, 5002.63,   0.00, 0.00, 202.00);
	CreateDynamicObject(2439, 1289.23, -1578.64, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(2439, 1290.23, -1578.64, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(2440, 1288.22, -1578.61, 5002.63,   0.00, 0.00, 270.00);
	CreateDynamicObject(2440, 1291.23, -1578.64, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(1714, 1289.52, -1577.29, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(1714, 1288.79, -1580.33, 5002.63,   0.00, 0.00, 158.00);
	CreateDynamicObject(1714, 1290.56, -1580.40, 5002.63,   0.00, 0.00, 200.00);
	CreateDynamicObject(2439, 1284.68, -1578.17, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(2439, 1283.68, -1578.17, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(2440, 1282.73, -1578.13, 5002.63,   0.00, 0.00, 269.99);
	CreateDynamicObject(2440, 1285.65, -1578.15, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(1714, 1283.12, -1579.98, 5002.63,   0.00, 0.00, 158.00);
	CreateDynamicObject(1714, 1285.27, -1580.09, 5002.63,   0.00, 0.00, 200.00);
	CreateDynamicObject(1714, 1284.11, -1576.99, 5002.63,   0.00, 0.00, 0.00);
	CreateDynamicObject(14455, 1292.08, -1582.23, 5004.30,   0.00, 0.00, 90.00);
	CreateDynamicObject(18764, 1336.71, -1571.42, 4998.28,   0.00, 0.00, 0.00);

    // Admin Johnson's House - Order ID: Added Per Devin - House ID: 4411 (EXTERIOR)
    CreateDynamicObject(6300,-1525.3994141,-2186.6992188,-7.6999998,0.0000000,0.0000000,64.7369385, .worldid = 0, .streamdistance = 150); //object(pier04_law2) (1)
	CreateDynamicObject(3599,-1505.1992188,-2243.3496094,2.8000000,0.0000000,0.0000000,246.2475586, .worldid = 0, .streamdistance = 150); //object(hillhouse02_la) (1)
	CreateDynamicObject(3599,-1496.8994141,-2247.0000000,2.8000000,0.0000000,0.0000000,246.2475586, .worldid = 0, .streamdistance = 150); //object(hillhouse02_la) (2)
	CreateDynamicObject(3599,-1488.5996094,-2250.5996094,2.8000000,0.0000000,0.0000000,246.2475586, .worldid = 0, .streamdistance = 150); //object(hillhouse02_la) (3)
	CreateDynamicObject(3749,-1506.6992188,-2173.3994141,6.3000002,0.0000000,0.0000000,333.9898682, .worldid = 0, .streamdistance = 150); //object(clubgate01_lax) (1)
	CreateDynamicObject(987,-1498.9000244,-2191.1999512,0.5000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (1)
	CreateDynamicObject(987,-1503.5000000,-2232.5000000,-1.3000000,0.0000000,0.0000000,84.2431641, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (2)
	CreateDynamicObject(987,-1514.6999512,-2169.8000488,0.5000000,0.0000000,0.0000000,217.4999390, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (6)
	CreateDynamicObject(3886,-1516.5000000,-2230.2998047,-0.5000000,0.0000000,0.0000000,154.4897461, .worldid = 0, .streamdistance = 150); //object(ws_jettynol_sfx) (2)
	CreateDynamicObject(987,-1524.1999512,-2177.1000977,0.5000000,0.0000000,0.0000000,243.4963379, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (7)
	CreateDynamicObject(987,-1529.5000000,-2187.7998047,0.5000000,0.0000000,0.0000000,242.9901123, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (8)
	CreateDynamicObject(987,-1534.8994141,-2198.5000000,0.5000000,0.0000000,0.0000000,243.4954834, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (9)
	CreateDynamicObject(987,-1540.1992188,-2209.1992188,0.5000000,0.0000000,0.0000000,245.2423096, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(3109,-1504.2998047,-2233.0000000,1.2000000,0.0000000,0.0000000,335.9948730, .worldid = 0, .streamdistance = 150); //object(imy_la_door) (2)
	CreateDynamicObject(3528,-1504.2998047,-2169.8994141,9.3999996,0.0000000,0.0000000,63.4954834, .worldid = 0, .streamdistance = 150); //object(vgsedragon) (1)
	CreateDynamicObject(3524,-1498.5999756,-2175.1000977,4.0000000,30.0000000,0.0000000,153.4953613, .worldid = 0, .streamdistance = 150); //object(skullpillar01_lvs) (2)
	CreateDynamicObject(3524,-1512.9000244,-2168.1999512,4.0000000,29.9981689,0.0000000,153.4899902, .worldid = 0, .streamdistance = 150); //object(skullpillar01_lvs) (3)
	CreateDynamicObject(987,-1498.9000244,-2203.1999512,0.5000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (11)
	CreateDynamicObject(6300,-1512.7998047,-2334.3994141,-7.5999999,0.0000000,0.0000000,184.7406006, .worldid = 0, .streamdistance = 150); //object(pier04_law2) (1)
	CreateDynamicObject(3886,-1522.7998047,-2291.5996094,-0.5000000,0.0000000,0.0000000,4.4934082, .worldid = 0, .streamdistance = 150); //object(ws_jettynol_sfx) (2)
	CreateDynamicObject(11490,-1509.5996094,-2325.3994141,0.4000000,0.0000000,0.0000000,184.2462158, .worldid = 0, .streamdistance = 150); //object(des_ranch) (1)
	CreateDynamicObject(11491,-1510.4257812,-2314.3847656,1.8980000,0.0000000,0.0000000,184.2462158, .worldid = 0, .streamdistance = 150); //object(des_ranchbits1) (1)
	CreateDynamicObject(17045,-1541.0000000,-2315.7998047,2.0999999,0.0000000,0.0000000,23.9996338, .worldid = 0, .streamdistance = 150); //object(cuntw_stwnyel) (1)
	CreateDynamicObject(3109,-1511.4000244,-2244.6999512,4.9000001,0.0000000,0.0000000,246.4893799, .worldid = 0, .streamdistance = 150); //object(imy_la_door) (2)
	CreateDynamicObject(3945,-1509.2998047,-2242.3994141,2.7000000,0.0000000,179.9945068,156.2475586, .worldid = 0, .streamdistance = 150); //object(alpha_fence) (1)
	CreateDynamicObject(3945,-1503.5999756,-2240.1999512,5.8000002,0.0000000,0.0000000,246.2475586, .worldid = 0, .streamdistance = 150); //object(alpha_fence) (2)
	CreateDynamicObject(3603,-1491.1992188,-2207.0996094,6.3000002,0.0000000,0.0000000,264.4958496, .worldid = 0, .streamdistance = 150); //object(bevman_law2) (1)
	CreateDynamicObject(3618,-1529.5996094,-2207.5996094,3.0000000,0.0000000,0.0000000,64.4842529, .worldid = 0, .streamdistance = 150); //object(nwlaw2husjm3_law2) (1)
	CreateDynamicObject(2957,-1532.6999512,-2198.1999512,1.1000000,0.0000000,0.0000000,244.7500000, .worldid = 0, .streamdistance = 150); //object(chinatgaragedoor) (1)
	CreateDynamicObject(1437,-1506.0996094,-2322.8994141,0.4000000,0.0000000,0.0000000,273.9990234, .worldid = 0, .streamdistance = 150); //object(dyn_ladder_2) (1)
	CreateDynamicObject(1776,-1512.9000244,-2329.5000000,3.0000000,0.0000000,0.0000000,183.2500153, .worldid = 0, .streamdistance = 150); //object(cj_candyvendor) (1)
	CreateDynamicObject(1775,-1511.3994141,-2329.5000000,3.0000000,0.0000000,0.0000000,181.9995117, .worldid = 0, .streamdistance = 150); //object(cj_sprunk1) (3)
	CreateDynamicObject(18368,-1498.7998047,-2256.2998047,-4.1300001,0.0000000,0.0000000,276.9927979, .worldid = 0, .streamdistance = 150); //object(cs_mountplat) (1)
	CreateDynamicObject(1463,-1510.0996094,-2259.6992188,0.6000000,0.0000000,0.0000000,321.9982910, .worldid = 0, .streamdistance = 150); //object(dyn_woodpile2) (1)
	CreateDynamicObject(1724,-1511.5999756,-2257.3999023,0.3000000,0.0000000,0.0000000,10.0000000, .worldid = 0, .streamdistance = 150); //object(mrk_seating1b) (1)
	CreateDynamicObject(1724,-1508.0000000,-2258.6999512,0.3000000,0.0000000,0.0000000,289.9951172, .worldid = 0, .streamdistance = 150); //object(mrk_seating1b) (2)
	CreateDynamicObject(2715,-1528.0000000,-2218.0000000,2.7000000,0.0000000,359.2500000,336.5000000, .worldid = 0, .streamdistance = 150); //object(cj_don_poster) (1)
	CreateDynamicObject(1724,-1511.3000488,-2261.8000488,0.3000000,0.0000000,0.0000000,140.7470093, .worldid = 0, .streamdistance = 150); //object(mrk_seating1b) (4)
	CreateDynamicObject(1472,-1508.3000488,-2265.0000000,0.7000000,0.0000000,0.0000000,180.0000000, .worldid = 0, .streamdistance = 150); //object(dyn_porch_1) (1)
	CreateDynamicObject(1472,-1508.3000488,-2266.1000977,1.5000000,0.0000000,0.0000000,179.9945068, .worldid = 0, .streamdistance = 150); //object(dyn_porch_1) (2)
	CreateDynamicObject(2937,-1508.2998047,-2268.0996094,1.9000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(kmb_plank) (2)
	CreateDynamicObject(3525,-1510.0000000,-2259.8000488,0.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(exbrtorch01) (1)
	CreateDynamicObject(3525,-1510.5000000,-2259.3999023,0.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(exbrtorch01) (2)
	CreateDynamicObject(3525,-1512.9000244,-2251.8999023,2.2000000,0.0000000,0.0000000,242.0000000, .worldid = 0, .streamdistance = 150); //object(exbrtorch01) (3)
	CreateDynamicObject(3525,-1504.6999512,-2233.3999023,2.2000000,0.0000000,0.0000000,241.9958496, .worldid = 0, .streamdistance = 150); //object(exbrtorch01) (4)
	CreateDynamicObject(3525,-1503.8000488,-2231.1000977,2.2000000,0.0000000,0.0000000,241.9958496, .worldid = 0, .streamdistance = 150); //object(exbrtorch01) (5)
	CreateDynamicObject(3525,-1514.0000000,-2243.3000488,1.9000000,0.0000000,0.0000000,184.4958496, .worldid = 0, .streamdistance = 150); //object(exbrtorch01) (6)
	CreateDynamicObject(3406,-1516.5000000,-2246.6000977,-1.7000000,0.0000000,0.0000000,66.7500000, .worldid = 0, .streamdistance = 150); //object(cxref_woodjetty) (1)
	CreateDynamicObject(3406,-1511.0000000,-2243.6999512,-1.7000000,0.0000000,0.0000000,336.7474365, .worldid = 0, .streamdistance = 150); //object(cxref_woodjetty) (2)
	CreateDynamicObject(2406,-1499.5999756,-2259.6999512,1.6000000,0.0000000,0.0000000,300.0000000, .worldid = 0, .streamdistance = 150); //object(cj_surf_board3) (1)
	CreateDynamicObject(2404,-1500.4000244,-2259.3000488,1.6000000,355.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(cj_surf_board) (1)
	CreateDynamicObject(1641,-1514.1999512,-2249.3999023,0.4000000,0.0000000,0.0000000,255.2500000, .worldid = 0, .streamdistance = 150); //object(beachtowel03) (1)
	CreateDynamicObject(1640,-1515.0999756,-2251.5000000,0.4000000,0.0000000,0.0000000,56.0000000, .worldid = 0, .streamdistance = 150); //object(beachtowel04) (1)
	CreateDynamicObject(1598,-1514.8000488,-2248.5000000,0.7000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(beachball) (1)
	CreateDynamicObject(1281,-1514.1999512,-2250.6999512,0.2000000,12.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 150); //object(parktable1) (1)
	CreateDynamicObject(3603,-1484.1992188,-2207.7998047,6.3000002,0.0000000,0.0000000,264.4921875, .worldid = 0, .streamdistance = 150); //object(bevman_law2) (3)
	CreateDynamicObject(746,-1487.1999512,-2192.5000000,3.3000000,0.0000000,0.0000000,280.0000000, .worldid = 0, .streamdistance = 150); //object(sm_scrub_rock2) (1)
	CreateDynamicObject(746,-1486.0000000,-2192.6999512,3.3000000,0.0000000,0.0000000,279.9975586, .worldid = 0, .streamdistance = 150); //object(sm_scrub_rock2) (2)
	CreateDynamicObject(746,-1484.3000488,-2192.5000000,3.4000001,0.0000000,0.0000000,319.9975586, .worldid = 0, .streamdistance = 150); //object(sm_scrub_rock2) (3)
	CreateDynamicObject(8400,-1504.3994141,-2205.7998047,-3.5000000,0.0000000,0.0000000,264.4958496, .worldid = 0, .streamdistance = 150); //object(nightclub02_lvs) (1)
	CreateDynamicObject(746,-1483.0000000,-2192.6000977,3.4000001,0.0000000,0.0000000,279.9932861, .worldid = 0, .streamdistance = 150); //object(sm_scrub_rock2) (4)
	CreateDynamicObject(970,-1507.5999756,-2195.6000977,1.3000000,0.0000000,0.0000000,354.0000000, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (1)
	CreateDynamicObject(970,-1503.5000000,-2196.0300293,1.3000000,0.0000000,0.0000000,353.9959717, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (2)
	CreateDynamicObject(970,-1509.9000244,-2197.5000000,1.3000000,0.0000000,0.0000000,264.4959717, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (3)
	CreateDynamicObject(970,-1510.3000488,-2201.6000977,1.3000000,0.0000000,0.0000000,264.4958496, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (5)
	CreateDynamicObject(970,-1509.3994141,-2215.2998047,1.3000000,0.0000000,0.0000000,353.9959717, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (6)
	CreateDynamicObject(970,-1505.3000488,-2215.7399902,1.3000000,0.0000000,0.0000000,353.9959717, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (7)
	CreateDynamicObject(970,-1511.4000244,-2213.0000000,1.3000000,0.0000000,0.0000000,264.4958496, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (8)
	CreateDynamicObject(970,-1511.0000000,-2208.8999023,1.3000000,0.0000000,0.0000000,264.4958496, .worldid = 0, .streamdistance = 150); //object(fencesmallb) (9)
	CreateDynamicObject(1825,-1506.8000488,-2212.6999512,0.7000000,0.0000000,0.0000000,320.0000000, .worldid = 0, .streamdistance = 150); //object(kb_table_chairs1) (1)
	CreateDynamicObject(1825,-1509.5000000,-2212.3000488,0.7000000,0.0000000,0.0000000,339.9987793, .worldid = 0, .streamdistance = 150); //object(kb_table_chairs1) (2)
	CreateDynamicObject(1825,-1507.9000244,-2209.6000977,0.7000000,0.0000000,0.0000000,279.9975586, .worldid = 0, .streamdistance = 150); //object(kb_table_chairs1) (3)
	CreateDynamicObject(3920,-1501.6999512,-2196.0000000,8.3000002,0.0000000,0.0000000,84.2500000, .worldid = 0, .streamdistance = 150); //object(lib_veg3) (1)
	CreateDynamicObject(3920,-1503.5999756,-2215.8999023,8.3000002,0.0000000,0.0000000,84.2500000, .worldid = 0, .streamdistance = 150); //object(lib_veg3) (2)
	CreateDynamicObject(640,-1511.5000000,-2209.5000000,1.1000000,0.0000000,0.0000000,354.5000000, .worldid = 0, .streamdistance = 150); //object(kb_planter_bush2) (1)
	CreateDynamicObject(640,-1510.6999512,-2201.0000000,1.1000000,0.0000000,0.0000000,354.4957275, .worldid = 0, .streamdistance = 150); //object(kb_planter_bush2) (2)
	CreateDynamicObject(1360,-1503.6999512,-2202.8999023,1.5000000,0.0000000,0.0000000,265.2500000, .worldid = 0, .streamdistance = 150); //object(cj_bush_prop3) (1)
	CreateDynamicObject(1360,-1504.3000488,-2208.8000488,1.5000000,0.0000000,0.0000000,264.9957275, .worldid = 0, .streamdistance = 150); //object(cj_bush_prop3) (2)
	CreateDynamicObject(1364,-1502.4000244,-2198.6999512,1.5000000,0.0000000,0.0000000,264.2500000, .worldid = 0, .streamdistance = 150); //object(cj_bush_prop) (1)
	CreateDynamicObject(3802,-1504.5999756,-2204.1999512,3.5999999,0.0000000,0.0000000,175.7500000, .worldid = 0, .streamdistance = 150); //object(sfx_plant03) (1)
	CreateDynamicObject(3802,-1504.9000244,-2207.3999023,3.5999999,0.0000000,0.0000000,175.7482910, .worldid = 0, .streamdistance = 150); //object(sfx_plant03) (2)
	CreateDynamicObject(1481,-1508.8000488,-2196.8999023,1.5000000,0.0000000,0.0000000,40.0000000, .worldid = 0, .streamdistance = 150); //object(dyn_bar_b_q) (1)
	CreateDynamicObject(2100,-1510.6999512,-2214.5000000,0.7000000,0.0000000,0.0000000,130.0000000, .worldid = 0, .streamdistance = 150); //object(med_hi_fi_2) (1)
	CreateDynamicObject(2361,-1507.4000244,-2196.3000488,0.7000000,0.0000000,0.0000000,354.0000000, .worldid = 0, .streamdistance = 150); //object(cj_ice_fridge_1) (1)
	CreateDynamicObject(2452,-1505.4000244,-2196.3999023,0.6000000,0.0000000,0.0000000,354.0000000, .worldid = 0, .streamdistance = 150); //object(cj_ff_fridge2) (1)
	CreateDynamicObject(14806,-1503.4000244,-2213.1999512,1.8000000,0.0000000,0.0000000,265.0000000, .worldid = 0, .streamdistance = 150); //object(bdupshifi) (1)
	CreateDynamicObject(1516,-1509.3000488,-2198.1999512,0.7000000,0.0000000,0.0000000,354.5000000, .worldid = 0, .streamdistance = 150); //object(dyn_table_03) (1)
	CreateDynamicObject(3461,-1525.8000488,-2206.6000977,1.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (1)
	CreateDynamicObject(3461,-1509.9000244,-2195.1000977,1.6000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (2)
	CreateDynamicObject(3461,-1518.8000488,-2255.1999512,1.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (3)
	CreateDynamicObject(3461,-1511.7998047,-2215.2998047,1.6000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (4)
	CreateDynamicObject(987,-1545.0996094,-2220.0000000,0.3000000,0.0000000,0.0000000,249.7412109, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1549.1992188,-2231.1992188,0.0000000,0.0000000,0.0000000,255.9869385, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1552.0999756,-2242.8000488,0.0000000,0.0000000,0.0000000,265.9869385, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1553.0000000,-2254.6999512,0.0000000,0.0000000,0.0000000,267.2344971, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1553.5000000,-2266.6000977,0.7000000,0.0000000,0.0000000,275.2314453, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1552.5000000,-2278.5000000,0.7000000,0.0000000,0.0000000,278.4794922, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1550.6999512,-2290.3000488,1.9000000,0.0000000,0.0000000,275.4759521, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1549.8000488,-2302.0000000,3.5999999,0.0000000,0.0000000,287.7211914, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1546.1999512,-2313.3999023,3.5999999,0.0000000,0.0000000,298.2209473, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(2047,-1506.4000244,-2329.3999023,3.8000000,0.0000000,0.0000000,183.9999847, .worldid = 0, .streamdistance = 150); //object(cj_flag1) (1)
	CreateDynamicObject(987,-1540.5999756,-2323.8999023,3.5999999,0.0000000,0.0000000,310.7183838, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1532.8000488,-2333.0000000,3.5999999,0.0000000,0.0000000,326.2183838, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1522.9000244,-2339.6000977,3.5999999,0.0000000,0.0000000,344.2170410, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1511.5000000,-2343.0000000,3.0000000,0.0000000,0.0000000,16.2103271, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1500.0000000,-2339.6999512,2.2000000,0.0000000,0.0000000,30.2103271, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1489.6999512,-2333.6999512,1.9000000,0.0000000,0.0000000,64.2041016, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1484.5000000,-2323.0000000,1.2000000,0.0000000,0.0000000,80.1947021, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1484.5000000,-2299.8000488,0.8000000,0.0000000,0.0000000,93.4438477, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1485.1999512,-2287.8999023,1.6000000,0.0000000,0.0000000,108.6932373, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(987,-1489.0000000,-2276.6000977,0.8000000,0.0000000,0.0000000,120.1932678, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(1709,-1518.2998047,-2332.0996094,0.5000000,0.0000000,0.0000000,4.2490234, .worldid = 0, .streamdistance = 150); //object(kb_couch08) (1)
	CreateDynamicObject(987,-1494.8994141,-2266.3994141,-2.0000000,0.0000000,0.0000000,108.4373779, .worldid = 0, .streamdistance = 150); //object(elecfence_bar) (10)
	CreateDynamicObject(1463,-1516.2998047,-2333.6992188,0.8000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(dyn_woodpile2) (2)
	CreateDynamicObject(3461,-1504.1999512,-2312.1999512,2.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (5)
	CreateDynamicObject(3461,-1515.4000244,-2313.0000000,2.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (6)
	CreateDynamicObject(3806,-1542.4000244,-2306.5000000,0.8000000,0.0000000,0.0000000,23.7500000, .worldid = 0, .streamdistance = 150); //object(sfx_winplant07) (1)
	CreateDynamicObject(3806,-1540.4000244,-2311.0000000,0.8000000,0.0000000,0.0000000,23.7467041, .worldid = 0, .streamdistance = 150); //object(sfx_winplant07) (2)
	CreateDynamicObject(3806,-1538.4000244,-2315.6999512,0.8000000,0.0000000,0.0000000,23.4967041, .worldid = 0, .streamdistance = 150); //object(sfx_winplant07) (3)
	CreateDynamicObject(3806,-1536.3000488,-2320.3000488,0.8000000,0.0000000,0.0000000,23.7467041, .worldid = 0, .streamdistance = 150); //object(sfx_winplant07) (4)
	CreateDynamicObject(3806,-1534.4000244,-2324.6999512,0.8000000,0.0000000,0.0000000,22.7467041, .worldid = 0, .streamdistance = 150); //object(sfx_winplant07) (5)
	CreateDynamicObject(3256,-1508.5999756,-2249.6999512,-26.7000008,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(refchimny01) (1)
	CreateDynamicObject(9159,-1541.5000000,-2259.1999512,13.8999996,0.0000000,0.0000000,4.7460938, .worldid = 0, .streamdistance = 150); //object(pirtshp02_lvs) (1)
	CreateDynamicObject(3598,-1486.5996094,-2307.1992188,2.5999999,0.0000000,0.0000000,94.4934082, .worldid = 0, .streamdistance = 150); //object(hillhouse01_la) (1)
	CreateDynamicObject(2964,-1509.8994141,-2324.3994141,1.9000000,0.0000000,0.0000000,3.9990234, .worldid = 0, .streamdistance = 150); //object(k_pooltablesm) (1)
	CreateDynamicObject(8493,-1541.5000000,-2259.1999512,13.8999996,0.0000000,0.0000000,4.7500000, .worldid = 0, .streamdistance = 150); //object(pirtshp01_lvs) (1)
	CreateDynamicObject(3004,-1509.6999512,-2323.8000488,3.4000001,280.0000000,90.9999390,5.9999390, .worldid = 0, .streamdistance = 150); //object(k_poolq2) (1)
	CreateDynamicObject(3093,-1538.9000244,-2289.3000488,4.0000000,0.0000000,0.0000000,94.2500000, .worldid = 0, .streamdistance = 150); //object(cuntgirldoor) (1)
	CreateDynamicObject(16151,-1539.5999756,-2295.0000000,5.0999999,0.0000000,0.0000000,274.7486572, .worldid = 0, .streamdistance = 150); //object(ufo_bar) (1)
	CreateDynamicObject(3003,-1509.1999512,-2324.5000000,2.8499999,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(k_poolballcue) (1)
	CreateDynamicObject(3002,-1510.5000000,-2324.5000000,2.8499999,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(k_poolballspt01) (1)
	CreateDynamicObject(2964,-1540.9000244,-2274.8999023,1.6000000,0.0000000,0.0000000,5.2500000, .worldid = 0, .streamdistance = 150); //object(k_pooltablesm) (2)
	CreateDynamicObject(3001,-1510.4000244,-2324.1999512,2.8499999,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(k_poolballstp07) (1)
	CreateDynamicObject(3000,-1509.5999756,-2324.8000488,2.8499999,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(k_poolballstp06) (1)
	CreateDynamicObject(2965,-1540.5999756,-2275.0000000,2.5000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(k_pooltriangle01) (1)
	CreateDynamicObject(3004,-1541.0999756,-2275.1999512,2.5000000,0.0000000,0.0000000,58.0000000, .worldid = 0, .streamdistance = 150); //object(k_poolq2) (2)
	CreateDynamicObject(2996,-1509.5000000,-2324.1999512,2.8499999,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(k_poolballstp02) (1)
	CreateDynamicObject(11472,-1536.8000488,-2273.3000488,-1.4000000,0.0000000,0.0000000,186.2500000, .worldid = 0, .streamdistance = 150); //object(des_swtstairs1) (1)
	CreateDynamicObject(11472,-1535.1999512,-2267.3249512,-2.8000000,0.0000000,0.0000000,276.0000000, .worldid = 0, .streamdistance = 150); //object(des_swtstairs1) (2)
	CreateDynamicObject(3461,-1516.3000488,-2333.8999023,-0.6000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (7)
	CreateDynamicObject(3461,-1515.9000244,-2333.6999512,-0.6000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (8)
	CreateDynamicObject(3461,-1516.6999512,-2333.6999512,-0.6000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (9)
	CreateDynamicObject(3461,-1507.5000000,-2330.6000977,2.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (10)
	CreateDynamicObject(3461,-1510.5000000,-2318.1999512,0.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (11)
	CreateDynamicObject(3461,-1510.0000000,-2318.1000977,0.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(tikitorch01_lvs) (12)
	CreateDynamicObject(3334,-1514.5000000,-2321.3999023,2.2000000,0.0000000,0.0000000,4.0000000, .worldid = 0, .streamdistance = 150); //object(big_cock_sign) (1)
	CreateDynamicObject(3934,-1498.0000000,-2313.6000977,0.5000000,0.0000000,0.0000000,94.9960938, .worldid = 0, .streamdistance = 150); //object(helipad01) (1)
	CreateDynamicObject(2232,-1544.1999512,-2254.6000977,4.0000000,0.0000000,0.0000000,5.0000000, .worldid = 0, .streamdistance = 150); //object(med_speaker_4) (1)
	CreateDynamicObject(2232,-1538.0000000,-2289.3000488,5.0000000,0.0000000,0.0000000,185.2500305, .worldid = 0, .streamdistance = 150); //object(med_speaker_4) (2)
	CreateDynamicObject(11489,-1525.4000244,-2322.6000977,0.4000000,0.0000000,0.0000000,184.7500000, .worldid = 0, .streamdistance = 150); //object(dam_statues) (1)
	CreateDynamicObject(2232,-1541.0000000,-2289.5000000,5.0000000,0.0000000,359.5000000,182.9959717, .worldid = 0, .streamdistance = 150); //object(med_speaker_4) (3)
	CreateDynamicObject(2232,-1541.0000000,-2254.2998047,4.0000000,0.0000000,0.0000000,6.2457275, .worldid = 0, .streamdistance = 150); //object(med_speaker_4) (4)
	CreateDynamicObject(1826,-1542.0000000,-2254.4001465,3.4000001,0.0000000,0.0000000,185.2500000, .worldid = 0, .streamdistance = 150); //object(kb_table1) (1)
	CreateDynamicObject(3515,-1525.6999512,-2317.6000977,0.0000000,0.0000000,0.0000000,4.0000000, .worldid = 0, .streamdistance = 150); //object(vgsfountain) (1)
	CreateDynamicObject(3886,-1477.3000488,-2133.8999023,-0.5000000,0.0000000,0.0000000,326.9897461, .worldid = 0, .streamdistance = 150); //object(ws_jettynol_sfx) (2)
	CreateDynamicObject(14820,-1542.5999756,-2254.5000000,4.3000002,0.0000000,0.0000000,4.0000000, .worldid = 0, .streamdistance = 150); //object(dj_stuff) (1)
	CreateDynamicObject(3886,-1471.5999756,-2125.1000977,-0.5000000,0.0000000,0.0000000,146.9860840, .worldid = 0, .streamdistance = 150); //object(ws_jettynol_sfx) (2)
	CreateDynamicObject(1825,-1540.4000244,-2291.8999023,5.0999999,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 150); //object(kb_table_chairs1) (4)
	CreateDynamicObject(1825,-1543.1999512,-2292.0000000,5.0999999,0.0000000,0.0000000,130.0000000, .worldid = 0, .streamdistance = 150); //object(kb_table_chairs1) (5)
	CreateDynamicObject(1608,-1539.1999512,-2228.8000488,-1.2000000,0.0000000,0.0000000,303.9953613, .worldid = 0, .streamdistance = 150); //object(shark) (1)
	CreateDynamicObject(3939,-1528.0996094,-2193.0000000,2.0999999,0.0000000,0.0000000,334.4952393, .worldid = 0, .streamdistance = 150); //object(hanger01) (1)
	CreateDynamicObject(3939,-1525.2299805,-2187.0000000,2.0999999,0.0000000,0.0000000,334.4952393, .worldid = 0, .streamdistance = 150); //object(hanger01) (4)
	CreateDynamicObject(3939,-1522.4000244,-2181.0000000,2.0999999,0.0000000,0.0000000,334.4952393, .worldid = 0, .streamdistance = 150); //object(hanger01) (5)
	CreateDynamicObject(7921,-1510.0999756,-2205.3000488,-0.8000000,0.0000000,0.0000000,174.5000000, .worldid = 0, .streamdistance = 150); //object(vgwstnewall6904) (1)
	CreateDynamicObject(3109,-1503.0000000,-2258.0000000,1.5000000,0.0000000,0.0000000,65.7448730, .worldid = 0, .streamdistance = 150); //object(imy_la_door) (2)
	CreateDynamicObject(2264,-1506.8000488,-2256.8999023,1.6000000,0.0000000,0.0000000,336.2500000, .worldid = 0, .streamdistance = 150); //object(frame_slim_5) (1)
	CreateDynamicObject(2263,-1508.3000488,-2256.3000488,1.5000000,0.0000000,0.0000000,336.2500000, .worldid = 0, .streamdistance = 150); //object(frame_slim_4) (1)
	CreateDynamicObject(2265,-1509.6999512,-2255.6999512,1.5000000,0.0000000,0.0000000,336.2500000, .worldid = 0, .streamdistance = 150); //object(frame_slim_6) (1)

	// Donald J Trump - Order ID: Free per EA's - House ID: 1412(EXTERIOR)
	CreateDynamicObject(10444,1339.97753906,-649.64843750,108.00000000,0.00000000,0.00000000,289.99511719, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1596,1332.42187500,-636.82910156,115.58958435,0.00000000,0.00000000,234.49780273, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3928,1354.09887695,-630.57287598,112.09489441,0.00000000,0.00000000,109.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(8653,1324.43615723,-625.83923340,108.72391510,0.00000000,0.00000000,288.99536133, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3361,1345.68664551,-627.97528076,110.00000000,0.00000000,0.00000000,199.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(8653,1333.40332031,-622.54687500,108.72391510,0.00000000,0.00000000,108.99536133, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1231,1347.47460938,-617.78393555,110.86320496,0.00000000,0.00000000,18.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1231,1310.40002441,-630.59997559,110.86320496,0.00000000,0.00000000,17.99560547, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1775,1320.57360840,-638.73022461,109.23194122,0.00000000,0.00000000,288.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1223,1366.22875977,-614.71911621,109.13281250,0.00000000,0.00000000,195.99995422, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2047,1332.29101562,-633.78906250,111.34203339,0.00000000,0.00000000,199.99511719, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3471,1334.06604004,-632.10748291,109.40943909,0.00000000,0.00000000,108.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3471,1329.74108887,-633.55145264,109.40943909,0.00000000,0.00000000,107.99560547, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3265,1276.23046875,-616.35937500,102.10256195,0.00000000,0.00000000,207.99865723, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3263,1285.16308594,-611.25683594,101.29179382,0.00000000,0.00000000,209.99816895, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2921,1329.62145996,-634.72167969,111.80736542,0.00000000,0.00000000,286.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(18368,1327.58129883,-667.87042236,103.65701294,0.00000000,0.00000000,282.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(11496,1316.69458008,-664.38781738,107.94999695,0.00000000,0.00000000,76.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1281,1314.48889160,-662.25885010,108.95037842,0.00000000,0.00000000,345.99743652, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(988,1328.31152344,-665.39746094,107.98999786,90.00000000,179.99450684,77.99743652, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1481,1311.07312012,-660.50646973,108.85311890,0.00000000,0.00000000,22.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3472,1324.61425781,-662.29980469,105.75000000,0.00000000,0.00000000,267.99499512, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(3472,1310.44726562,-658.92858887,105.75000000,0.00000000,0.00000000,245.99499512, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1223,1364.97998047,-610.13543701,109.13281250,0.00000000,0.00000000,195.99609375, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1223,1367.47326660,-619.30206299,109.13281250,0.00000000,0.00000000,195.99609375, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2802,1318.02612305,-663.47528076,108.48025513,0.00000000,0.00000000,172.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2802,1321.48632812,-664.04840088,108.48025513,0.00000000,0.00000000,7.99649048, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(2800,1318.05004883,-663.40002441,108.65000153,0.00000000,0.00000000,240.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1645,1340.71130371,-660.92279053,108.46704102,0.00000000,0.00000000,18.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1645,1342.67041016,-660.56890869,108.46704102,0.00000000,0.00000000,1.99508667, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1645,1338.90893555,-661.80407715,108.46704102,0.00000000,0.00000000,35.99401855, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1646,1345.55981445,-652.32537842,108.47233582,0.00000000,0.00000000,288.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1646,1346.19921875,-654.08923340,108.47233582,0.00000000,0.00000000,287.99560547, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1280,1354.83776855,-663.39044189,113.43624878,0.00000000,0.00000000,110.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(11327,1312.08105469,-635.41021729,107.91893768,0.00000000,0.00000000,198.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(984,1270.37341309,-619.44738770,102.18245697,0.00000000,0.00000000,290.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(984,1270.37304688,-619.44726562,103.43245697,0.00000000,0.00000000,289.99511719, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1461,1336.81628418,-653.27752686,108.93611145,0.00000000,0.00000000,18.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1598,1329.85900879,-653.33660889,108.06816864,316.03369141,2.77926636,355.93023682, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(951,1350.34265137,-666.42578125,113.78507996,0.00000000,0.00000000,348.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(642,1339.51184082,-660.85186768,109.55812073,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1478,1284.46850586,-609.91888428,101.29600525,0.00000000,0.00000000,207.99998474, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,1334.29138184,-604.98474121,107.13957977,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,1344.03515625,-607.72363281,108.13278961,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,1324.38061523,-610.21325684,106.77281952,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,1315.46008301,-616.11370850,106.42301941,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,1305.05139160,-621.58178711,105.77761841,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,1286.18164062,-613.04150391,105.77326965,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(1215,1277.05944824,-617.44427490,105.77526093,0.00000000,0.00000000,0.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);
	CreateDynamicObject(984,1324.05371094,-653.99304199,108.45382690,0.00000000,0.00000000,19.00000000, .interiorid = -1, .worldid = -1, .streamdistance = 200);

	// Obi Wan Kulm - Order ID: 47035 - House ID: N/A(EXTERIOR/CCP)
    CreateDynamicObject(18450, 208.5, 155.60000610352, 2.2000000476837, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 257.7998046875, 203.69921875, 2.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 217.7998046875, 203.69921875, 2.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 217.7998046875, 223.599609375, 2.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 257.7998046875, 223.599609375, 2.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 217.80000305176, 243.5, 2.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 257.79998779297, 243.5, 2.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 198.3994140625, 230.599609375, 4.5, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 220.7998046875, 253.19921875, 4.5, 0, 0, 89.994506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 277.19921875, 230.5, 4.5, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 254.8994140625, 194, 4.5, 0, 0, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3749, 208.5, 195.69999694824, 8.3999996185303, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 239.89999389648, 194, 4.5, 0, 0, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 274.7998046875, 251.3994140625, 5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 218.099609375, 6.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 234.69999694824, 8, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 274.89999389648, 234.69999694824, 8, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 229.19999694824, 234.69999694824, 5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 229.2998046875, 251.3994140625, 4.9000000953674, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 229.30000305176, 246.10000610352, 10, 0, 90, 89.999938964844, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 229.30000305176, 240, 10, 0, 90, 89.999938964844, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 234.30000305176, 234.80000305176, 10, 0, 90, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 245.19921875, 234.7998046875, 10, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 247, 234.80000305176, 10, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 229.60000610352, 10, 0, 90, 269.99447631836, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 223.30000305176, 10, 0, 90, 269.9889831543, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 257.20001220703, 218.10000610352, 10, 0, 90, 359.98904418945, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 268, 218.10000610352, 10, 0, 90, 359.98345947266, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 269.79998779297, 218.10000610352, 10, 0, 90, 359.98345947266, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 275, 223.19999694824, 10, 0, 90, 89.983520507813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 275, 234.10000610352, 10, 0, 90, 89.983520507813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 275, 244.80000305176, 10, 0, 90, 89.983520507813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 275, 246.19999694824, 10, 0, 90, 89.983520507813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 269.89999389648, 251.39999389648, 10, 0, 90, 179.98345947266, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 251.39999389648, 8, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 259, 251.39999389648, 10, 0, 90, 179.98345947266, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 248.19999694824, 251.39999389648, 10, 0, 90, 179.98345947266, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 237.7998046875, 251.3994140625, 10, 0, 90, 179.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 234.60000610352, 251.30000305176, 10, 0, 90, 179.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 234.19999694824, 239.69999694824, 10.5, 0, 179.99993896484, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 234.19921875, 247.19921875, 10.47500038147, 0, 179.99450683594, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 234.69999694824, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 274.89999389648, 234.69999694824, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 274.79998779297, 251.39999389648, 14.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 251.39999389648, 14.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 257.70001220703, 234.80000305176, 10, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 268.099609375, 234.7998046875, 10, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 269.89999389648, 234.80000305176, 10, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 240.5, 10, 0, 90, 269.9889831543, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 246.30000305176, 10, 0, 90, 269.9889831543, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 246.30000305176, 18.5, 0, 102, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252, 239.60000610352, 17.10000038147, 0, 101.99710083008, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 274.89999389648, 239.5, 17.10000038147, 0, 101.99710083008, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 274.89999389648, 246.39999389648, 18.5, 0, 101.99710083008, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 269.89999389648, 234.80000305176, 15.89999961853, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 260.29998779297, 234.80000305176, 15.89999961853, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 257.10000610352, 234.80000305176, 15.89999961853, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 257.39999389648, 251.39999389648, 19.5, 0, 90, 179.98345947266, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 267.89999389648, 251.39999389648, 19.5, 0, 90, 179.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 269.60000610352, 251.39999389648, 19.5, 0, 90, 179.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 275, 218.099609375, 6.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(14407, 245.60000610352, 248.19999694824, 5.1999998092651, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(14407, 248.7998046875, 248.19921875, 7.0999999046326, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.79998779297, 225, 9.8000001907349, 0, 285.99993896484, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.7998046875, 231.19921875, 9.6999998092651, 0, 285.99609375, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 240.69921875, 251.5, 3, 0, 13.99658203125, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.5, 234.69999694824, 8, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.5, 234.69999694824, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.60000610352, 251.19999694824, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.60000610352, 251.19999694824, 5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.5, 240.30000305176, 15.89999961853, 0, 90, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 247.10000610352, 251.19999694824, 15.89999961853, 0, 90, 179.98345947266, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 246.60000610352, 234.69999694824, 15.89999961853, 0, 90, 179.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.5, 246.19999694824, 15.89999961853, 0, 90, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 237.60000610352, 239.69999694824, 10.47500038147, 0, 179.99450683594, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 237.60000610352, 247.19999694824, 10.450000762939, 0, 179.99450683594, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.69921875, 241.69921875, 9.6999998092651, 0, 285.99609375, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.70001220703, 247.69999694824, 9.6000003814697, 0, 285.99609375, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 242, 242.099609375, 9.6999998092651, 0, 285.99609375, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.7998046875, 225, 1.8999999761581, 0, 285.99609375, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.7998046875, 229.8994140625, 1.8999999761581, 0, 285.99609375, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.7998046875, 244.19921875, 1.8999999761581, 0, 285.99609375, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.7998046875, 249.099609375, 1.8999999761581, 0, 285.99609375, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 241.19921875, 241.19921875, 1.8999999761581, 0, 285.99609375, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 241.19999694824, 245.89999389648, 1.8999999761581, 0, 285.99609375, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 252.39999389648, 220.5, 4.8000001907349, 90, 179.9560546875, 180.04396057129, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 252.39999389648, 224.5, 4.8000001907349, 90, 180.04943847656, 179.94506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 252.39999389648, 228.5, 4.8000001907349, 90, 179.9560546875, 180.03295898438, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 252.39999389648, 232.39999389648, 4.8000001907349, 90, 179.95056152344, 180.03295898438, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 249.60000610352, 234.60000610352, 10.10000038147, 90, 179.9560546875, 270.02197265625, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 245.60000610352, 234.60000610352, 10.10000038147, 90, 179.95056152344, 270.02197265625, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 243.60000610352, 234.60000610352, 10.10000038147, 90, 180.04943847656, 269.92309570313, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 246.80000305176, 234.60000610352, 2.5999999046326, 0, 0, 89.961547851563, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 235.39999389648, 234.39999389648, 4.5, 0, 0, 89.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 235.39999389648, 234.39999389648, 8.5, 0, 0, 89.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 229.80000305176, 237, 4.8000001907349, 90, 180.05491638184, 179.91760253906, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 229.7998046875, 241, 4.8000001907349, 90, 180.05491638184, 179.89562988281, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 229.80000305176, 245, 4.8000001907349, 90, 180.05491638184, 179.90112304688, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 229.80000305176, 249, 4.8000001907349, 90, 180.04943847656, 179.90112304688, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 241.60000610352, 240.19999694824, 10.5, 0, 0, 179.95056152344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 241.60000610352, 240.19999694824, 14.5, 0, 0, 179.95056152344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 241.60000610352, 245.39999389648, 10.5, 0, 0, 179.95056152344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 241.60000610352, 245.39999389648, 14.5, 0, 0, 179.95056152344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.5, 239.69999694824, 9.1000003814697, 0, 90, 89.983520507813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.5, 245.60000610352, 9.1000003814697, 0, 90, 89.983520507813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 241.5, 245.60000610352, 9.5, 0, 90, 89.983520507813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.29998779297, 220.5, 4.8000001907349, 90, 179.95056152344, 180.04396057129, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.29998779297, 224.5, 4.8000001907349, 90, 179.95056152344, 180.04396057129, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.2998046875, 228.5, 4.8000001907349, 90, 180.0439453125, 179.94506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.29998779297, 232.5, 4.8000001907349, 90, 179.9560546875, 180.03297424316, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.29998779297, 237.10000610352, 11.199999809265, 90, 179.95056152344, 180.03295898438, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.29998779297, 241.10000610352, 11.89999961853, 90, 180.0439453125, 179.93414306641, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.29998779297, 245.10000610352, 12.39999961853, 90, 180.04943847656, 179.92309570313, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 275.29998779297, 249.10000610352, 13.5, 90, 179.9560546875, 180.01100158691, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 272.39999389648, 251.5, 14.39999961853, 90, 180.04943847656, 269.912109375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 272.39999389648, 251.5, 3.0999999046326, 90, 179.94506835938, 270.01098632813, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 268.39999389648, 251.5, 14.39999961853, 90, 179.9560546875, 269.99453735352, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 264.39999389648, 251.5, 14.39999961853, 90, 180.04943847656, 269.89562988281, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 260.39999389648, 251.5, 14.39999961853, 90, 179.9560546875, 269.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 256.3994140625, 251.5, 14.39999961853, 90, 179.94506835938, 269.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 253.69999694824, 251.5, 14.39999961853, 90, 179.9560546875, 269.96154785156, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 249.60000610352, 251.5, 9.8999996185303, 90, 180.0439453125, 269.87368774414, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 245.60000610352, 251.5, 9.8999996185303, 90, 180.0439453125, 269.87368774414, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 243.30000305176, 251.5, 9.8999996185303, 90, 180.0439453125, 269.87365722656, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 268.39999389648, 251.5, 3.0999999046326, 90, 179.95056152344, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 264.39999389648, 251.5, 3.0999999046326, 90, 180.0439453125, 269.89562988281, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 260.39999389648, 251.5, 3.0999999046326, 90, 179.95056152344, 269.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 256.3994140625, 251.5, 3.0999999046326, 90, 179.94506835938, 269.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 253.69921875, 251.5, 3.0999999046326, 90, 179.94506835938, 269.96160888672, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 242.80000305176, 246.19999694824, 15.800000190735, 0, 90, 179.95068359375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 246.80000305176, 246.19999694824, 15.800000190735, 0, 90, 179.95056152344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 250.80000305176, 246.19999694824, 15.800000190735, 0, 90, 179.95056152344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 247.10000610352, 238.60000610352, 15.800000190735, 0, 90, 269.95053100586, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 247.10000610352, 236.10000610352, 15.800000190735, 0, 90, 269.94506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252.10000610352, 246.30000305176, 15.800000190735, 0, 90, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 252.10000610352, 240, 15.800000190735, 0, 90, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 256.20001220703, 234.69999694824, 14.39999961853, 0, 0, 89.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 269.8994140625, 234.599609375, 14.39999961853, 0, 0, 89.950561523438, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 256.20001220703, 234.69999694824, 10.39999961853, 0, 0, 89.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 269.89999389648, 234.60000610352, 10.39999961853, 0, 0, 89.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 269.89999389648, 234.80000305176, 8.8999996185303, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 259, 234.80000305176, 8.8999996185303, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 257.5, 234.80000305176, 8.8999996185303, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 251.89999389648, 245.39999389648, 17, 0, 0, 179.95056152344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 254.39999389648, 246, 18.39999961853, 346.00708007813, 270.44995117188, 179.97827148438, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 258.39999389648, 245.89999389648, 18.5, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 262.39999389648, 245.89999389648, 18.5, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 266.39999389648, 245.89999389648, 18.5, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 270.39999389648, 245.89999389648, 18.5, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 273.10000610352, 245.89999389648, 18.5, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 256.39999389648, 247, 18.700000762939, 0.4837646484375, 103.99163818359, 269.9407043457, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 256.39999389648, 239, 16.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 254.5, 239.89999389648, 16.799999237061, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 260.5, 247, 18.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 264.39999389648, 247, 18.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 268.5, 247, 18.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 272.39999389648, 247, 18.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 260.5, 239, 16.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 264.39999389648, 238.89999389648, 16.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 268.5, 238.89999389648, 16.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3498, 272.39999389648, 238.89999389648, 16.700000762939, 0.4833984375, 103.99108886719, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 258.39999389648, 239.89999389648, 16.799999237061, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 262.39999389648, 239.89999389648, 16.799999237061, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 266.3994140625, 239.8994140625, 16.799999237061, 345.99792480469, 270.44494628906, 179.97253417969, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 270.39999389648, 239.89999389648, 16.799999237061, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3851, 273.10000610352, 240, 16.799999237061, 346.00341796875, 270.44494628906, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3934, 235.39999389648, 243.30000305176, 10.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 243.599609375, 246.19921875, 5.8000001907349, 0, 270, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 247.8994140625, 250.19921875, 5.6999998092651, 0, 270, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 243.60000610352, 250.19999694824, 0.80000001192093, 0, 270, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 275.2998046875, 240.3994140625, 2.2999999523163, 0, 13.99658203125, 180.99975585938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1536, 245.30000305176, 234.60000610352, 2.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1536, 248.2998046875, 234.599609375, 2.5, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1536, 241.60000610352, 241.69999694824, 10.5, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1536, 241.60000610352, 238.69999694824, 10.5, 0, 0, 89.989013671875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1536, 261.29998779297, 251.5, 2.5, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1536, 258.2998046875, 251.5, 2.5, 0, 0, 359.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2357, 266.599609375, 245.8994140625, 10.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2357, 266.60000610352, 244.60000610352, 10.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2357, 262.39999389648, 245.89999389648, 10.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2357, 262.39999389648, 244.60000610352, 10.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(17068, 274.19921875, 270.099609375, 0.10000000149012, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3113, 263.79998779297, 255.69999694824, -0.40000000596046, 0, 285.99609375, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(17068, 265.20001220703, 270.10000610352, 0.10000000149012, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 259.39999389648, 267.10000610352, -1.3999999761581, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 263.7998046875, 267.19921875, -4.0999999046326, 0, 90, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 259.5, 271.20001220703, -4.0999999046326, 0, 90, 89.999938964844, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 255.39999389648, 267.20001220703, -4.0999999046326, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 259.60000610352, 263.29998779297, -4.0999999046326, 0, 90, 269.99447631836, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2780, 260, 268, -7.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(14416, 272.20001220703, 259.10000610352, -0.5, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(14416, 268.20001220703, 259.10000610352, -0.5, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 229.60000610352, 253.19999694824, 4.5, 0, 0, 89.994506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 266.20001220703, 256.5, -1.8999999761581, 0, 90, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 274.2998046875, 256.3994140625, -1.8999999761581, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 261.8994140625, 256.69921875, -1.8999999761581, 0, 90, 269.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 257, 256.69921875, -1.8999999761581, 0, 90, 269.9889831543, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 259.70001220703, 201.30000305176, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 260.2998046875, 220.5, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 260.10000610352, 240.39999389648, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 260.2998046875, 258.19921875, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 222.30000305176, 201.39999389648, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 222.80000305176, 218.5, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 220.69999694824, 237.69999694824, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8661, 220.80000305176, 245.19999694824, -3.2999999523163, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 274.29998779297, 232.69999694824, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 274.29998779297, 229.89999389648, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 274.29998779297, 227.10000610352, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 274.29998779297, 224.30000305176, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 274.29998779297, 221.5, 11, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 272.60000610352, 218.89999389648, 11, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 269.79998779297, 218.89999389648, 11, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 267, 218.89999389648, 11, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 264.20001220703, 218.89999389648, 11, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 261.39999389648, 218.89999389648, 11, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 258.60000610352, 218.89999389648, 11, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 255.80000305176, 218.89999389648, 11, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 252.89999389648, 219.89999389648, 11, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 252.89999389648, 222.69999694824, 11, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 252.89999389648, 225.5, 11, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 252.89999389648, 228.39999389648, 11, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(638, 252.89999389648, 231.39999389648, 11, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3524, 255.19999694824, 271.39999389648, 0.5, 0, 0, 46, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3524, 255.10000610352, 263, 0.5, 0, 0, 139.99975585938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 268.10000610352, 247.30000305176, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 266.89999389648, 247.30000305176, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 265.89999389648, 247.30000305176, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 265, 247.30000305176, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 264, 247.30000305176, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 263.10000610352, 247.30000305176, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 262.099609375, 247.2998046875, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 260.79998779297, 247.30000305176, 10.300000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 259.60000610352, 245.89999389648, 10.300000190735, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 259.60000610352, 244.80000305176, 10.300000190735, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 260.70001220703, 243.19999694824, 10.300000190735, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 261.70001220703, 243.19999694824, 10.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 262.70001220703, 243.19999694824, 10.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 263.60000610352, 243.19999694824, 10.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 264.70001220703, 243.19999694824, 10.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 265.70001220703, 243.19999694824, 10.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 266.70001220703, 243.19999694824, 10.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 268, 243.19999694824, 10.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 269.39999389648, 245.89999389648, 10.300000190735, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1714, 269.39999389648, 244.60000610352, 10.300000190735, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2229, 254.80000305176, 257.70001220703, 0.40000000596046, 0, 0, 149.99633789063, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2229, 265.5, 257.5, 0.40000000596046, 0, 0, 219.990234375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2101, 266, 259.10000610352, 0.30000001192093, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 264.20001220703, 256.20001220703, 3.2000000476837, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 260, 256.20001220703, 3.2000000476837, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 255.80000305176, 256.20001220703, 3.2000000476837, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 253.69999694824, 254, 3.2000000476837, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 275, 254.099609375, 3.2000000476837, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 272.29998779297, 218.10000610352, 11.10000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 268.10000610352, 218.10000610352, 11.10000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 263.70001220703, 218.10000610352, 11.10000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 259.39999389648, 218.10000610352, 11.10000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 255, 218.10000610352, 11.10000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 275, 220.80000305176, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 275, 225, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 275, 229.19999694824, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 275, 233.30000305176, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 252, 220.69999694824, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 252, 224.89999389648, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 252, 229.10000610352, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 252, 233.30000305176, 11.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7520, 212.5, 226.5, 2.7999999523163, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2745, 272.79998779297, 248.80000305176, 11.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3471, 244.60000610352, 233.5, 3.4000000953674, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3471, 248.89999389648, 233.5, 3.4000000953674, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1255, 264, 259.70001220703, 0.89999997615814, 0, 0, 120, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1255, 262.5, 259.60000610352, 0.89999997615814, 0, 0, 119.99813842773, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1255, 261, 259.5, 0.89999997615814, 0, 0, 119.99816894531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1255, 259.29998779297, 259.39999389648, 0.89999997615814, 0, 0, 119.99816894531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1255, 257.60000610352, 259.29998779297, 0.89999997615814, 0, 0, 119.99816894531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(10183, 271.39999389648, 214.39999389648, 2.5, 0, 0, 315.99975585938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2289, 237.10000610352, 250.89999389648, 7.5999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2286, 234.39999389648, 250.89999389648, 7.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2276, 231.69999694824, 250.39999389648, 7.3000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2267, 232.89999389648, 250.80000305176, 5.6999998092651, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2264, 235.5, 250.39999389648, 5.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2258, 236.19999694824, 250.80000305176, 4.3000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2164, 267.5, 250.69999694824, 10.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2164, 265.70001220703, 250.69999694824, 10.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1828, 234.60000610352, 248, 2.5999999046326, 0, 0, 54, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1643, 242.69999694824, 240.10000610352, 10.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(10183, 247.30000305176, 227.69999694824, 2.5, 0, 0, 45.749755859375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3462, 242.5, 237.19999694824, 11.800000190735, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3462, 242.5, 243.5, 11.800000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1723, 273.5, 235.80000305176, 10.39999961853, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1723, 270.39999389648, 235.80000305176, 10.39999961853, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1723, 267.29998779297, 235.80000305176, 10.39999961853, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1828, 255.89999389648, 245.5, 10.300000190735, 0, 0, 146, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 198.39999389648, 216.30000305176, 4.5, 0, 0, 359.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7191, 277.20001220703, 216.69999694824, 4.5, 0, 0, 359.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8879, 272.89999389648, 196.60000610352, 8.6000003814697, 0, 0, 50, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8879, 200.19999694824, 204, 8.6000003814697, 0, 0, 269.99877929688, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8879, 238.39999389648, 195.80000305176, 8.6000003814697, 0, 0, 359.99877929688, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8879, 227, 235.30000305176, 8.6000003814697, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8880, 205.30000305176, 204, 9.3999996185303, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8880, 238.39999389648, 200.89999389648, 9.3999996185303, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8880, 269, 199.89999389648, 9.3999996185303, 0, 0, 50, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(8880, 227.80000305176, 230.39999389648, 9.3999996185303, 0, 0, 189.99877929688, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(18608, 271.70001220703, 233, 8.8999996185303, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(18608, 264.89999389648, 232.80000305176, 8.8999996185303, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(18608, 258.5, 232.69999694824, 8.8999996185303, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(11392, 265.39999389648, 233.69999694824, 2.5999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(10282, 269.20001220703, 247.60000610352, 3.5, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(11392, 262.10000610352, 232, 2.5999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(925, 264.89999389648, 242.89999389648, 3.5999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1348, 267.10000610352, 243.10000610352, 3.2000000476837, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(958, 273.7998046875, 242.19921875, 3.4000000953674, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(959, 273.79998779297, 242.19999694824, 3.4000000953674, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1420, 274.39999389648, 232.89999389648, 2.5999999046326, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1420, 274.39999389648, 232.89999389648, 3.5, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1420, 274.39999389648, 232, 3.5, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1420, 274.39999389648, 232, 2.5999999046326, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2775, 274.5, 238.30000305176, 5.5, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1079, 274.5, 249.89999389648, 5.9000000953674, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1079, 274.5, 248.80000305176, 5.9000000953674, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1080, 274.5, 247.69999694824, 5.9000000953674, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1080, 274.5, 246.60000610352, 5.9000000953674, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1081, 274.5, 245.5, 5.9000000953674, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1081, 274.5, 244.39999389648, 5.9000000953674, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1976, 246.80000305176, 234.60000610352, 6.0999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3077, 272.89999389648, 241.69999694824, 10.300000190735, 0, 0, 50, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(16377, 273.20001220703, 235.69999694824, 3.5999999046326, 0, 0, 54, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 272.60000610352, 235, 4.0999999046326, 0, 90, 1.9940185546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 272.60000610352, 240.60000610352, 4.0999999046326, 0, 90, 1.9940185546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 266.10000610352, 240.60000610352, 4.0999999046326, 0, 90, 1.9940185546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 266.10000610352, 235.10000610352, 4.0999999046326, 0, 90, 1.9940185546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 272.20001220703, 250.60000610352, 4.0999999046326, 0, 90, 1.9940185546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 272.20001220703, 245.10000610352, 4.0999999046326, 0, 90, 1.9940185546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 266.79998779297, 250.60000610352, 4.0999999046326, 0, 90, 1.9994201660156, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 271.60000610352, 233.89999389648, 3, 90, 180, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 269.20001220703, 233.89999389648, 3, 90, 179.99450683594, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 269.20001220703, 231.80000305176, 3, 90, 179.99450683594, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 271.60000610352, 231.80000305176, 3, 90, 179.99450683594, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 266.79998779297, 233.69999694824, 2.7000000476837, 77.996459960938, 0, 89.994506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 270.5, 231.39999389648, 2.7999999523163, 90, 180, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 270.5, 233.69999694824, 2.7999999523163, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 269.20001220703, 233.19999694824, 3, 90, 180.00549316406, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 269.20001220703, 232.5, 3, 90, 180.00549316406, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 271.60000610352, 232.5, 3, 90, 180.00549316406, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 271.60000610352, 233.19999694824, 3, 90, 180.00549316406, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 268.5, 231.69999694824, 2.9000000953674, 90, 179.30389404297, 180.69612121582, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 268.5, 233.30000305176, 2.9000000953674, 90, 180.69717407227, 179.29730224609, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 269.29998779297, 233.30000305176, 2.9000000953674, 90, 180.69161987305, 179.29736328125, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 269.29998779297, 231.69999694824, 2.9000000953674, 90, 179.30841064453, 180.68057250977, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 272.29998779297, 231.69999694824, 2.9000000953674, 90, 180.69171142578, 179.29180908203, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 271.5, 231.69999694824, 2.9000000953674, 90, 180.68627929688, 179.29180908203, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 271.5, 233.30000305176, 2.9000000953674, 90, 180.68615722656, 179.29187011719, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2062, 272.29998779297, 233.30000305176, 2.9000000953674, 90, 180.68664550781, 179.29138183594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 270.5, 233.80000305176, 2.7999999523163, 90, 179.99450683594, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 247.89999389648, 246.19999694824, 5.8000001907349, 0, 270, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2775, 274.5, 232.5, 5.8000001907349, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2775, 274.5, 232.5, 4.9000000953674, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(959, 272, 229.69999694824, 3.4000000953674, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(958, 272, 229.69999694824, 3.4000000953674, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1688, 268.5, 229.60000610352, 3.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1687, 274, 238.10000610352, 3.4000000953674, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 202.60000610352, 252.60000610352, 1, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 211.80000305176, 252.69999694824, 1, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 220.89999389648, 252.5, 1, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 230.10000610352, 252.60000610352, 1, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 239.19999694824, 252.30000305176, 1, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 248.39999389648, 252.39999389648, 1, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 252.5, 252, -2, 0, 90, 359.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7017, 235, 253.80000305176, -2.4000000953674, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7017, 277.39999389648, 230.39999389648, -2.5, 0, 0, 89.994506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.60000610352, 257.60000610352, 1, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.89999389648, 248.39999389648, 1, 0, 0, 359.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.79998779297, 239.30000305176, 1, 0, 0, 179.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 277, 230.30000305176, 1, 0, 0, 359.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.70001220703, 221.19999694824, 1, 0, 0, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.7998046875, 212, 1, 0, 0, 359.96704101563, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.5, 202.8994140625, 1, 0, 0, 179.96154785156, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.63677978516, 198.26638793945, 1.0249999761581, 0, 0, 359.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7017, 200.60000610352, 217.30000305176, -2.4000000953674, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 199.5, 249.60000610352, 1, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 199.30000305176, 240.5, 1, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 199.5, 231.30000305176, 1, 0, 0, 359.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 199.19999694824, 222.19999694824, 1, 0, 0, 179.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.89999389648, 266.20001220703, -1.6000000238419, 90, 180.69522094727, 359.29934692383, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 199.39999389648, 213, 1, 0, 0, 359.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 199.10000610352, 203.89999389648, 1, 0, 0, 179.97802734375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 199.19999694824, 198, 1, 0, 0, 359.97253417969, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 202.10000610352, 195.19999694824, 0.60000002384186, 0, 0, 89.967041015625, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 273.60000610352, 194.80000305176, 1, 0, 0, 269.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(7017, 241, 195, -2.5, 0, 0, 359.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.60000610352, 197.80000305176, 1, 0, 0, 359.9560546875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 276.60000610352, 262.5, 1, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 264.60000610352, 195, 1, 0, 0, 89.950561523438, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 255.5, 194.8994140625, 1.0249999761581, 0, 0, 269.93957519531, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 246.39999389648, 195.19999694824, 1, 0, 0, 89.939575195313, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 237.2998046875, 195.099609375, 1.0249999761581, 0, 0, 269.92858886719, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 228.19999694824, 195.30000305176, 1, 0, 0, 89.928588867188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3865, 219.099609375, 195.19921875, 1.0499999523163, 0, 0, 269.92858886719, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(897, 251, 267.60000610352, -2.5, 0, 0, 325.25, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(897, 249, 259.20001220703, -2.5, 0, 0, 326.74987792969, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(897, 249, 255.10000610352, -2.5, 0, 0, 326.74987792969, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(897, 263.89999389648, 272.20001220703, -5.6999998092651, 0, 0, 233.74475097656, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(897, 252.30000305176, 273.29998779297, -3.2000000476837, 0, 0, 280.2392578125, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 274.79998779297, 256.39999389648, -1.8999999761581, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 275.29998779297, 256.39999389648, -1.8999999761581, 0, 90, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 275, 258.29998779297, 3.2000000476837, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3095, 269.60000610352, 262.79998779297, -4.3000001907349, 0, 90, 269.98352050781, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 276.10000610352, 218.10000610352, 6.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3499, 251.19999694824, 218.10000610352, 6.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2960, 266.79998779297, 245.10000610352, 4.0999999046326, 0, 90, 1.9994201660156, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1649, 244.30000305176, 246.10000610352, 7.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1649, 248.69999694824, 246.19999694824, 7.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2596, 274.20001220703, 249.5, 4.9000000953674, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2596, 274.20001220703, 248.89999389648, 4.9000000953674, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2596, 274.20001220703, 248.30000305176, 4.9000000953674, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2596, 274.20001220703, 247.69999694824, 4.9000000953674, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2232, 241.69999694824, 246, 3.0999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2232, 241.69999694824, 246, 4.3000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2232, 241.69999694824, 246, 5.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2232, 251.30000305176, 246, 3.0999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2232, 251.30000305176, 246, 4.3000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2232, 251.30000305176, 246, 5.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1481, 273, 233, 10.89999961853, 0, 0, 309.99633789063, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1703, 244.89999389648, 240.5, 2.5, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1703, 247.5, 240.5, 2.5, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1703, 250.10000610352, 240.5, 2.5, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2679, 266.79998779297, 232.10000610352, 2.7000000476837, 77.991943359375, 0, 89.994506835938, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(897, 259.79998779297, 274.70001220703, -3.5, 0, 0, 235.98962402344, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2940, 244.60000610352, 249.19999694824, -0.10000000149012, 290, 180, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2940, 245.10000610352, 246.39999389648, 2, 287.9951171875, 179.99389648438, 179.99389648438, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2940, 247.89999389648, 246.39999389648, 2, 287.99014282227, 179.98901367188, 179.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2940, 247.89999389648, 246.39999389648, 3, 287.99014282227, 179.98901367188, 179.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2940, 245.10000610352, 246.39999389648, 3, 287.99014282227, 179.98901367188, 179.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1649, 248.69999694824, 246.10000610352, 7.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1649, 244.2998046875, 246.099609375, 4.1999998092651, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2528, 245.89999389648, 249.69999694824, 2.5999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2523, 247.60000610352, 249.69999694824, 2.5999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2517, 246.5, 247.39999389648, 2.5999999046326, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(14677, 246.39999389648, 251.89999389648, 4.9000000953674, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2395, 252.19999694824, 247.10000610352, 6.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1491, 252.10000610352, 246.69999694824, 2.5999999046326, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2395, 252.19999694824, 248.19999694824, 5.0999999046326, 0, 90, 89.999938964844, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2395, 252.19999694824, 247.10000610352, 5.0999999046326, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(632, 232.5, 235.89999389648, 3.0999999046326, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1768, 271.60000610352, 231.19999694824, 10.39999961853, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1768, 271.60000610352, 228.30000305176, 10.39999961853, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1768, 268.79998779297, 226.19999694824, 10.39999961853, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1768, 268.70001220703, 229.10000610352, 10.39999961853, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2637, 270.20001220703, 230.80000305176, 10.800000190735, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2637, 270.20001220703, 228.69999694824, 10.800000190735, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2637, 270.20001220703, 226.60000610352, 10.800000190735, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2229, 268.5, 234.19999694824, 10.300000190735, 0, 0, 359.990234375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2229, 273.20001220703, 224.39999389648, 10.39999961853, 0, 0, 219.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1649, 248.67712402344, 246.15187072754, 4.1999998092651, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(4585, 261.50744628906, 213.17933654785, -102.83911895752, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(4585, 230.7615814209, 213.15571594238, -102.8641204834, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(4585, 214.40591430664, 201.71166992188, -102.83911895752, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(4585, 261.44525146484, 247.12373352051, -103.01412963867, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(4585, 233.35751342773, 247.0451965332, -103.03913116455, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(4585, 214.62733459473, 247.07217407227, -103.06413269043, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(4585, 215.45855712891, 227.58187866211, -103.08913421631, 0, 0, 0, .worldid = 0, .streamdistance = 200);

	// Taiyu Li  Order ID: 2779 - House ID: N/A(DYNAMIC DOOR)
	// Exterior Mapping
	CreateDynamicObject(9482, -2428.55, 99.97, 40.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3038, -2428.04, 99.92, 41.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2921, -2482.59, 110.00, 37.36,   0.00, 0.00, 0.00);
	CreateDynamicObject(1264, -2507.12, 104.81, 34.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(1264, -2506.81, 103.38, 34.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(1264, -2506.17, 104.13, 34.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(1265, -2506.82, 102.35, 34.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(1265, -2505.75, 103.27, 34.64,   0.00, 0.00, 0.00);
	CreateDynamicObject(1227, -2506.52, 100.55, 35.02,   0.00, 0.00, 97.00);
	CreateDynamicObject(1481, -2489.75, 109.98, 25.53,   0.00, 0.00, 224.08);
	CreateDynamicObject(16151, -2489.34, 140.07, 25.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(1255, -2499.59, 146.18, 25.44,   0.00, 0.00, 270.00);
	CreateDynamicObject(1255, -2497.09, 146.34, 25.44,   0.00, 0.00, 270.00);
	CreateDynamicObject(1255, -2494.72, 145.52, 25.44,   0.00, 0.00, 223.22);
	CreateDynamicObject(1670, -2490.31, 139.85, 25.82,   0.00, 0.00, 97.85);
	CreateDynamicObject(1670, -2489.34, 143.48, 25.82,   0.00, 0.00, 201.64);
	CreateDynamicObject(1679, -2493.85, 111.04, 25.32,   0.00, 0.00, 26.92);
	CreateDynamicObject(1679, -2489.95, 115.63, 25.32,   0.00, 0.00, 54.11);
	CreateDynamicObject(8674, -2479.55, 164.18, 35.94,   0.00, 0.00, 54.91);
	CreateDynamicObject(8674, -2478.06, 166.27, 35.94,   0.00, 0.00, 54.91);
	CreateDynamicObject(8674, -2478.06, 166.27, 38.82,   0.00, 0.00, 54.91);
	CreateDynamicObject(8674, -2479.55, 164.18, 38.82,   0.00, 0.00, 54.91);
	CreateDynamicObject(8674, -2482.24, 104.72, 35.94,   0.00, 0.00, 0.00);
	CreateDynamicObject(8674, -2482.24, 104.72, 38.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(8674, -2492.55, 104.71, 35.94,   0.00, 0.00, 0.00);
	CreateDynamicObject(8674, -2492.55, 104.71, 38.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(8674, -2498.79, 104.72, 35.94,   0.00, 0.00, 0.00);
	CreateDynamicObject(8674, -2498.79, 104.72, 38.82,   0.00, 0.00, 0.00);
	CreateDynamicObject(8674, -2503.96, 106.19, 35.11,   0.00, 90.00, 90.00);
	CreateDynamicObject(8674, -2503.97, 107.38, 35.11,   0.00, 90.00, 90.00);
	CreateDynamicObject(8674, -2505.43, 108.86, 35.11,   0.00, 90.00, 180.00);
	CreateDynamicObject(8674, -2507.29, 108.88, 35.11,   0.00, 90.00, 180.00);
	CreateDynamicObject(8674, -2508.72, 118.76, 26.37,   0.00, 0.00, 90.00);
	CreateDynamicObject(8674, -2508.71, 129.06, 26.37,   0.00, 0.00, 90.00);
	CreateDynamicObject(8674, -2508.72, 139.36, 26.37,   0.00, 0.00, 90.00);
	CreateDynamicObject(2780, -2502.31, 138.55, 18.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(2780, -2502.21, 128.98, 18.00,   0.00, 0.00, 90.00);
	CreateDynamicObject(2780, -2500.63, 118.68, 18.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1679, -2486.93, 118.22, 31.58,   0.00, 0.00, 54.11);
	CreateDynamicObject(1679, -2486.93, 140.92, 31.58,   0.00, 0.00, 54.11);
	CreateDynamicObject(1255, -2489.78, 158.07, 31.69,   0.00, 0.00, 210.95);
	CreateDynamicObject(1255, -2487.73, 156.47, 31.69,   0.00, 0.00, 210.95);
	CreateDynamicObject(1255, -2485.15, 154.87, 31.69,   0.00, 0.00, 210.95);
	CreateDynamicObject(3749, -2439.29, 99.55, 39.24,   0.00, 0.00, 90.00);
	CreateDynamicObject(2909, -2477.07, 108.64, 36.05,   90.00, 0.00, 180.00);
	CreateDynamicObject(2909, -2508.60, 109.65, 23.63,   90.00, 0.00, 2.67);

	//Andrew Cook - Exterior Custm Coding [Order ID 50337]
	CreateDynamicObject(987, 1117.0999755859, 1843.1999511719, 9.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1105.0999755859, 1843.1999511719, 9.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1093.0999755859, 1843.1999511719, 9.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1081.0999755859, 1843.1999511719, 9.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1069.0999755859, 1843.1999511719, 9.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1057.0999755859, 1843.1999511719, 9.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.5, 1843.1999511719, 9.8000001907349, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.5, 1855.0999755859, 9.8000001907349, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.5, 1867.0999755859, 9.8999996185303, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.5, 1879.0999755859, 9.8999996185303, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.3994140625, 1891, 9.8000001907349, 0, 0, 269.98901367188, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.4000244141, 1902.9000244141, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.4000244141, 1914.8000488281, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.4000244141, 1926.6999511719, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.4000244141, 1938.6999511719, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1047.4000244141, 1942.5999755859, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1059.3000488281, 1942.5999755859, 9.8000001907349, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1066.1999511719, 1942.5999755859, 9.8000001907349, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1067.1999511719, 1943, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1067.1999511719, 1943, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1067.1999511719, 1943, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1066.4772949219, 1942.9896240234, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1065.8000488281, 1943, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1065.0782470703, 1942.9870605469, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1064.4000244141, 1943, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1063.6589355469, 1942.9704589844, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1066.4771728516, 1942.9898681641, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1065.8000488281, 1943, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1065.0777587891, 1942.9879150391, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1064.4000244141, 1943, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1063.6787109375, 1942.9857177734, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1066.455078125, 1942.9780273438, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1065.8000488281, 1943, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1065.0778808594, 1942.9876708984, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1064.4000244141, 1943, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1063.6788330078, 1942.9854736328, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1083.9000244141, 1942.9000244141, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1084.6181640625, 1942.8825683594, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1085.3000488281, 1942.9000244141, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1086.0419921875, 1942.8723144531, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1086.6999511719, 1942.9000244141, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1083.9000244141, 1942.9000244141, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1083.9000244141, 1942.9000244141, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1084.6185302734, 1942.8830566406, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1085.3000488281, 1942.9000244141, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1086.0208740234, 1942.8856201172, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1086.6999511719, 1942.9000244141, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1084.619140625, 1942.8837890625, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1085.3000488281, 1942.9000244141, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1086.6999511719, 1942.9000244141, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1086.0203857422, 1942.8854980469, 15.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1096.1999511719, 1942.5, 9.8000001907349, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1117.9000244141, 1975.5, 9.8000001907349, 0, 0, 270, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1117.9000244141, 1987.5, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1117.9000244141, 1999.5, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1117.9000244141, 2011.5, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1117.9000244141, 2023.5, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1117.9000244141, 2035.5, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1117.9000244141, 2042.5999755859, 9.8000001907349, 0, 0, 269.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1129.8000488281, 2042.6999511719, 9.8000001907349, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1141, 2042.6999511719, 9.8000001907349, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1142.0999755859, 2042.9000244141, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1141.3802490234, 2042.8834228516, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1146.4000244141, 2042.9000244141, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1147.1492919922, 2042.8840332031, 10.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1142.0999755859, 2042.9000244141, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1141.3322753906, 2042.8714599609, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1147.1176757813, 2042.8820800781, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9131, 1146.4000244141, 2042.9000244141, 13.199999809265, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(970, 1144.1999511719, 2043, 13.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1159.4000244141, 2042.6999511719, 9.8999996185303, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1171.3000488281, 2042.6999511719, 9.8999996185303, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 2042.6999511719, 9.8999996185303, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.4000244141, 2031, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 2018.9000244141, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 2006.9000244141, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 1995, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 1983, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 1971.0999755859, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 1959.0999755859, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 1947.0999755859, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 1935.0999755859, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1176.3000488281, 1923.0999755859, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1170.5999755859, 1912.6999511719, 9.8000001907349, 0, 0, 62, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1165.8000488281, 1903.5, 9.8000001907349, 0, 0, 61.995849609375, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1154, 1904.6999511719, 9.8000001907349, 0, 0, 355, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1149.0999755859, 1893.6999511719, 9.8000001907349, 0, 0, 66, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1144.1999511719, 1882.8000488281, 9.8000001907349, 0, 0, 65.994873046875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1139.4000244141, 1871.9000244141, 9.8000001907349, 0, 0, 65.994873046875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1134.5, 1861, 9.5, 0, 0, 65.994873046875, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1130.5999755859, 1849.5, 9.6999998092651, 0, 0, 72, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1129, 1843.1999511719, 9.8000001907349, 0, 0, 75, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1411, 1144.3000488281, 2043.4000244141, 15.89999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1411, 1086.1999511719, 1943.3000488281, 15.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1411, 1086.19921875, 1943.2998046875, 13, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1411, 1064.8000488281, 1943.4000244141, 15.800000190735, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1411, 1064.8000488281, 1943.4000244141, 13.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1108, 1945.0999755859, 9.8000001907349, 0, 0, 193, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1116.5, 1953.5999755859, 9.8000001907349, 0, 0, 225, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(987, 1118, 1963.5999755859, 9.8000001907349, 0, 0, 259, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(9241, 1097.4000244141, 1867.0999755859, 11, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3279, 1171.5, 2036.0999755859, 9.8000001907349, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3279, 1121.5, 2035, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3279, 1161.8000488281, 1912.0999755859, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3279, 1123.5999755859, 1850, 9.6999998092651, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(3279, 1054.5, 1847.6999511719, 9.8000001907349, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(16093, 1060.5, 1934.1999511719, 14.10000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(16638, 1061.5, 1934.3000488281, 12.300000190735, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2888, 1063.099609375, 1935.3994140625, 17.775007247925, 344.99816894531, 0, 309.99572753906, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2887, 1063.19921875, 1935.19921875, 17.800003051758, 344.99816894531, 0, 309.99572753906, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2886, 1067.3000488281, 1943.4000244141, 11.39999961853, 0, 0, 180, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2886, 1084.0999755859, 1943.3000488281, 11.39999961853, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2886, 1146.3000488281, 2043.3000488281, 11.300000190735, 0, 0, 179.99450683594, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(2921, 1085.5, 1943.3000488281, 15.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1616, 1146.9000244141, 2043.3000488281, 14.5, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1215, 1146.3000488281, 2043.3000488281, 10.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1215, 1142.0999755859, 2043.3000488281, 10.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1215, 1142.3000488281, 2036.1999511719, 10.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1215, 1147.0999755859, 2036.1999511719, 10.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1215, 1083.6999511719, 1943.3000488281, 10.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1215, 1067.4000244141, 1943.4000244141, 10.39999961853, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1087.0999755859, 1912.4000244141, 12.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1072.1999511719, 1912, 12.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1055.9000244141, 1912, 12.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1087, 1894.9000244141, 12.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1072.1999511719, 1895, 12.60000038147, 0, 0, 0, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1111.9000244141, 1930.6999511719, 12.60000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1111.6999511719, 1915.8000488281, 12.60000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1112, 1899.4000244141, 12.60000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1128.9000244141, 1899.4000244141, 12.60000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1129, 1915.8000488281, 12.60000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);
	CreateDynamicObject(1231, 1128.9000244141, 1930.5999755859, 12.60000038147, 0, 0, 90, .worldid = 0, .streamdistance = 200);

	//Russel Lock (Red) Custom Coding Project exterior [Order ID: 48455 ]
	CreateDynamicObject(11496,822.70898438,-213.41210938,20.10158539,0.00000000,0.00000000,269.98901367, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (19)
	CreateDynamicObject(11496,822.70959473,-206.38702393,20.10158539,0.00000000,0.00000000,269.99450684, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (20)
	CreateDynamicObject(11496,822.70898438,-201.42285156,20.10158539,0.00000000,0.00000000,89.99450684, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (21)
	CreateDynamicObject(11496,838.70703125,-201.42285156,20.10158539,0.00000000,0.00000000,89.99450684, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (22)
	CreateDynamicObject(11496,838.70776367,-206.38702393,20.10158539,0.00000000,0.00000000,269.99450684, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (23)
	CreateDynamicObject(11496,838.70703125,-213.41210938,20.10158539,0.00000000,0.00000000,269.98901367, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (24)
	CreateDynamicObject(11496,147.11892700,145.29293823,454.01950073,0.00000000,0.00000000,89.99450684, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (26)
	CreateDynamicObject(11496,854.69628906,-206.38671875,20.10158539,0.00000000,0.00000000,269.98901367, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (27)
	CreateDynamicObject(11496,854.69628906,-213.41210938,20.10158539,0.00000000,0.00000000,269.98901367, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (28)
	CreateDynamicObject(11496,832.70410156,-194.38574219,20.10158539,0.00000000,0.00000000,89.99450684, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (29)
	CreateDynamicObject(11496,844.67871094,-194.38574219,20.10138702,0.00000000,0.00000000,89.99450684, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (30)
	CreateDynamicObject(11490,838.71972656,-206.81445312,20.25155449,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(des_ranch) (4)
	CreateDynamicObject(11491,838.71093750,-195.76660156,21.75155449,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(des_ranchbits1) (2)
	CreateDynamicObject(1710,823.92968750,-203.58496094,20.30158424,0.00000000,0.00000000,167.99194336, .worldid = 0, .streamdistance = 170); //object(kb_couch07) (1)
	CreateDynamicObject(1764,826.00036621,-201.12168884,20.30158424,0.00000000,0.00000000,255.99792480, .worldid = 0, .streamdistance = 170); //object(low_couch_2) (1)
	CreateDynamicObject(3262,816.99090576,-179.83383179,17.77293777,0.00000000,0.00000000,190.00000000, .worldid = 0, .streamdistance = 170); //object(privatesign1) (1)
	CreateDynamicObject(3264,818.89306641,-180.31111145,17.82476807,0.00000000,0.00000000,200.00000000, .worldid = 0, .streamdistance = 170); //object(privatesign3) (1)
	CreateDynamicObject(3265,820.72753906,-179.29492188,18.12881660,0.00000000,0.00000000,219.99572754, .worldid = 0, .streamdistance = 170); //object(privatesign4) (1)
	CreateDynamicObject(3264,862.14721680,-181.62493896,15.57478333,0.00000000,0.00000000,139.99453735, .worldid = 0, .streamdistance = 170); //object(privatesign3) (3)
	CreateDynamicObject(3262,863.34045410,-181.85194397,14.96948242,0.00000000,0.00000000,189.99633789, .worldid = 0, .streamdistance = 170); //object(privatesign1) (3)
	CreateDynamicObject(3265,860.96948242,-181.47723389,15.65385437,0.00000000,0.00000000,219.99572754, .worldid = 0, .streamdistance = 170); //object(privatesign4) (2)
	CreateDynamicObject(6865,838.52496338,-198.31324768,27.46549988,0.00000000,0.00000000,221.50000000, .worldid = 0, .streamdistance = 170); //object(steerskull) (1)
	CreateDynamicObject(11544,838.59375000,-191.99316406,19.25392914,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(des_ntfrescape2) (1)
	CreateDynamicObject(3524,825.32501221,-190.52603149,18.41193199,0.00000000,0.00000000,230.00000000, .worldid = 0, .streamdistance = 170); //object(skullpillar01_lvs) (9)
	CreateDynamicObject(3524,851.91320801,-190.47032166,18.41193199,0.00000000,0.00000000,129.99877930, .worldid = 0, .streamdistance = 170); //object(skullpillar01_lvs) (10)
	CreateDynamicObject(3524,815.34277344,-197.56835938,18.41193199,0.00000000,0.00000000,229.99328613, .worldid = 0, .streamdistance = 170); //object(skullpillar01_lvs) (11)
	CreateDynamicObject(3524,861.94433594,-197.50292969,18.41193199,0.00000000,0.00000000,129.99572754, .worldid = 0, .streamdistance = 170); //object(skullpillar01_lvs) (12)
	CreateDynamicObject(1976,838.68847656,-198.14355469,23.11533928,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(w_test) (1)
	CreateDynamicObject(1463,838.70648193,-198.94081116,21.89157677,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_woodpile2) (7)
	CreateDynamicObject(1712,820.89550781,-200.17968750,20.30158424,0.00000000,0.00000000,19.99511719, .worldid = 0, .streamdistance = 170); //object(kb_couch05) (1)
	CreateDynamicObject(2315,822.52832031,-201.47460938,20.30158424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_tv_table4) (1)
	CreateDynamicObject(2852,822.52551270,-201.47515869,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(gb_bedmags02) (1)
	CreateDynamicObject(2816,823.22399902,-201.59782410,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(gb_bedmags01) (1)
	CreateDynamicObject(1543,824.26397705,-201.27110291,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (1)
	CreateDynamicObject(1543,822.21447754,-201.82638550,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (2)
	CreateDynamicObject(1543,822.18945312,-201.13597107,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (3)
	CreateDynamicObject(1543,823.82818604,-201.76966858,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (4)
	CreateDynamicObject(1665,824.22143555,-201.69659424,20.83267021,0.00000000,0.00000000,40.00000000, .worldid = 0, .streamdistance = 170); //object(propashtray1) (1)
	CreateDynamicObject(1665,823.17468262,-201.18827820,20.83267021,0.00000000,0.00000000,119.99572754, .worldid = 0, .streamdistance = 170); //object(propashtray1) (2)
	CreateDynamicObject(1665,822.26739502,-201.65376282,20.83267021,0.00000000,0.00000000,229.99267578, .worldid = 0, .streamdistance = 170); //object(propashtray1) (3)
	CreateDynamicObject(2350,825.15527344,-200.12109375,20.67373466,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_barstool_2) (1)
	CreateDynamicObject(2350,824.03027344,-199.50000000,20.52373695,0.00000000,90.99975586,139.99877930, .worldid = 0, .streamdistance = 170); //object(cj_barstool_2) (2)
	CreateDynamicObject(1414,826.00817871,-204.23889160,23.19057083,0.00000000,330.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_cor_sheet) (1)
	CreateDynamicObject(1414,853.06689453,-204.34353638,23.14060974,0.00000000,20.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_cor_sheet) (2)
	CreateDynamicObject(1411,821.07775879,-204.30603027,24.54490662,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (3)
	CreateDynamicObject(1411,826.32739258,-204.26782227,24.54490662,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (4)
	CreateDynamicObject(1411,853.50012207,-204.29364014,24.54490662,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (5)
	CreateDynamicObject(1411,848.36157227,-204.29364014,24.54490662,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (6)
	CreateDynamicObject(1411,853.52783203,-210.44837952,24.54490662,0.00000000,0.00000000,180.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (7)
	CreateDynamicObject(1411,848.35241699,-210.44837952,24.54490662,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (8)
	CreateDynamicObject(1411,821.05676270,-210.53097534,24.54490662,0.00000000,0.00000000,180.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (9)
	CreateDynamicObject(1411,826.25610352,-210.53097534,24.54490662,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (10)
	CreateDynamicObject(1411,847.61236572,-190.70524597,20.41988945,90.00000000,198.43493652,341.56509399, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1413,818.27423096,-207.38751221,21.58673096,0.00000000,0.00000000,270.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_3) (1)
	CreateDynamicObject(1414,830.85418701,-211.54855347,23.36914635,0.00000000,10.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_cor_sheet) (4)
	CreateDynamicObject(1414,847.09210205,-211.54707336,26.19413757,0.00000000,350.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_cor_sheet) (5)
	CreateDynamicObject(2898,838.67285156,-211.34960938,22.18130302,0.00000000,90.00000000,269.99993896, .worldid = 0, .streamdistance = 170); //object(funturf_law) (1)
	CreateDynamicObject(1649,838.71118164,-211.41072083,23.22024345,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wglasssmash) (1)
	CreateDynamicObject(1649,838.71093750,-211.41015625,23.22024345,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wglasssmash) (2)
	CreateDynamicObject(1649,838.71093750,-211.41015625,23.22024345,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wglasssmash) (3)
	CreateDynamicObject(1649,838.71093750,-211.41015625,23.22024345,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wglasssmash) (4)
	CreateDynamicObject(1649,838.71093750,-211.41015625,23.22024345,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(wglasssmash) (5)
	CreateDynamicObject(14791,821.50292969,-193.39843750,20.49451828,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(a_vgsgymboxa) (1)
	CreateDynamicObject(1411,821.59765625,-196.42480469,19.56990242,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (13)
	CreateDynamicObject(1411,821.43847656,-190.99121094,19.56990242,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (14)
	CreateDynamicObject(1411,818.86523438,-193.62109375,19.56990242,0.00000000,0.00000000,269.98901367, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (15)
	CreateDynamicObject(1411,824.28515625,-193.68164062,19.56990242,0.00000000,0.00000000,89.98901367, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (16)
	CreateDynamicObject(1414,821.40039062,-193.68847656,19.41556358,90.00000000,0.00000000,319.99328613, .worldid = 0, .streamdistance = 170); //object(dyn_cor_sheet) (6)
	CreateDynamicObject(11313,911.27813721,-189.72903442,11.43922806,0.00000000,0.00000000,270.00000000, .worldid = 0, .streamdistance = 170); //object(modshopdoor_sfse) (1)
	CreateDynamicObject(2232,832.46093750,-200.73144531,20.89945984,0.00000000,0.00000000,219.99572754, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (1)
	CreateDynamicObject(2232,832.89733887,-199.78674316,20.89945984,0.00000000,0.00000000,259.99572754, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (2)
	CreateDynamicObject(2232,846.37213135,-196.62121582,20.89945984,0.00000000,0.00000000,150.00000000, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (3)
	CreateDynamicObject(2232,846.37207031,-196.62109375,22.07444191,0.00000000,0.00000000,169.99633789, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (4)
	CreateDynamicObject(2232,845.74511719,-195.99316406,20.89945984,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (5)
	CreateDynamicObject(2229,819.21875000,-203.13064575,20.30158424,0.00000000,0.00000000,160.00000000, .worldid = 0, .streamdistance = 170); //object(swank_speaker) (1)
	CreateDynamicObject(2232,818.95013428,-203.41416931,20.89945984,0.00000000,0.00000000,190.00000000, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (6)
	CreateDynamicObject(2229,856.29003906,-204.67968750,21.45159721,0.00000000,0.00000000,139.99877930, .worldid = 0, .streamdistance = 170); //object(swank_speaker) (2)
	CreateDynamicObject(2232,856.65039062,-204.71582031,20.89945984,0.00000000,0.00000000,159.99938965, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (7)
	CreateDynamicObject(3035,850.87011719,-203.58496094,21.07172012,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tmp_bin) (1)
	CreateDynamicObject(11496,854.69628906,-201.42285156,20.10138512,0.00000000,0.00000000,89.98901367, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (27)
	CreateDynamicObject(2949,822.47717285,-210.40135193,20.30158424,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(kmb_lockeddoor) (2)
	CreateDynamicObject(3461,838.66699219,-199.15722656,20.40937424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (1)
	CreateDynamicObject(3461,839.06640625,-199.16601562,20.40937424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (2)
	CreateDynamicObject(3461,838.21679688,-199.14648438,20.40937424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (3)
	CreateDynamicObject(849,833.71069336,-187.24829102,18.52417374,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_urb_rub_3) (1)
	CreateDynamicObject(852,833.81549072,-185.83178711,18.16051674,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_urb_rub_4) (1)
	CreateDynamicObject(854,832.93682861,-186.47009277,18.39639473,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_urb_rub_3b) (2)
	CreateDynamicObject(1463,833.41607666,-185.73266602,18.51165581,0.00000000,0.00000000,30.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_woodpile2) (9)
	CreateDynamicObject(1463,834.59680176,-186.48683167,18.46165657,0.00000000,0.00000000,99.99813843, .worldid = 0, .streamdistance = 170); //object(dyn_woodpile2) (10)
	CreateDynamicObject(852,833.53198242,-186.26931763,18.43551254,0.00000000,0.00000000,330.00000000, .worldid = 0, .streamdistance = 170); //object(cj_urb_rub_4) (2)
	CreateDynamicObject(1463,833.71972656,-186.59526062,18.88665009,0.00000000,0.00000000,149.99755859, .worldid = 0, .streamdistance = 170); //object(dyn_woodpile2) (11)
	CreateDynamicObject(1463,833.25000000,-187.27246094,18.41162300,0.00000000,0.00000000,150.24630737, .worldid = 0, .streamdistance = 170); //object(dyn_woodpile2) (12)
	CreateDynamicObject(3461,833.63128662,-186.66133118,17.17105865,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (4)
	CreateDynamicObject(3461,833.08929443,-187.50787354,16.97106171,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (15)
	CreateDynamicObject(3461,833.31146240,-185.61282349,16.97106171,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (16)
	CreateDynamicObject(3461,834.83923340,-186.50086975,16.97106171,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (17)
	CreateDynamicObject(3461,833.09790039,-186.36592102,17.37105560,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (18)
	CreateDynamicObject(3461,834.17858887,-186.93258667,17.37105560,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (19)
	CreateDynamicObject(3461,834.43359375,-185.92260742,16.62106705,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(tikitorch01_lvs) (20)
	CreateDynamicObject(3265,842.14550781,-199.42834473,21.22882271,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(privatesign4) (1)
	CreateDynamicObject(1709,839.02148438,-195.64648438,21.75587082,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(kb_couch08) (2)
	CreateDynamicObject(1536,843.12414551,-211.41482544,20.25987434,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(gen_doorext15) (1)
	CreateDynamicObject(17950,911.28613281,-194.15039062,11.83851051,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cjsaveg) (1)
	CreateDynamicObject(11496,905.90979004,-142.18008423,0.58754903,0.00000000,0.00000000,99.99755859, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (2)
	CreateDynamicObject(11496,921.42993164,-139.99902344,0.58754903,0.00000000,0.00000000,95.99755859, .worldid = 0, .streamdistance = 170); //object(des_wjetty) (9)
	CreateDynamicObject(1368,905.54052734,-144.28547668,1.47728395,0.00000000,0.00000000,190.00000000, .worldid = 0, .streamdistance = 170); //object(cj_blocker_bench) (1)
	CreateDynamicObject(1368,910.65197754,-143.27925110,1.47728395,0.00000000,0.00000000,189.99755859, .worldid = 0, .streamdistance = 170); //object(cj_blocker_bench) (2)
	CreateDynamicObject(1368,916.09844971,-142.21179199,1.47728395,0.00000000,0.00000000,189.99755859, .worldid = 0, .streamdistance = 170); //object(cj_blocker_bench) (3)
	CreateDynamicObject(2241,913.41223145,-142.91204834,1.29134762,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(plant_pot_5) (1)
	CreateDynamicObject(2241,908.11090088,-143.92704773,1.29134762,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(plant_pot_5) (2)
	CreateDynamicObject(3498,931.32843018,-132.36177063,-2.96856308,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (4)
	CreateDynamicObject(3498,931.20587158,-129.90708923,-2.96856308,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (5)
	CreateDynamicObject(3498,894.49713135,-137.11846924,-2.96856308,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (6)
	CreateDynamicObject(3498,894.15124512,-135.12677002,-2.96856308,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (7)
	CreateDynamicObject(3498,931.20507812,-129.90625000,-6.54357338,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (8)
	CreateDynamicObject(3498,894.15039062,-135.12597656,-10.46856308,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (9)
	CreateDynamicObject(3666,931.19506836,-129.92419434,1.00123262,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(airuntest_las) (2)
	CreateDynamicObject(3666,894.13830566,-135.14546204,1.00123262,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(airuntest_las) (3)
	CreateDynamicObject(3666,931.31085205,-132.38211060,1.00123262,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(airuntest_las) (4)
	CreateDynamicObject(3666,894.44830322,-137.13996887,1.00123262,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(airuntest_las) (5)
	CreateDynamicObject(1557,842.87310791,-199.45350647,21.53437042,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(gen_doorext19) (2)
	CreateDynamicObject(3265,835.32037354,-199.41531372,21.22882271,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(privatesign4) (1)
	CreateDynamicObject(910,853.16650391,-203.64260864,21.57073975,0.00000000,0.00000000,180.00000000, .worldid = 0, .streamdistance = 170); //object(bust_cabinet_4) (1)
	CreateDynamicObject(1440,850.53997803,-202.35469055,20.82069969,0.00000000,0.00000000,180.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_box_pile_3) (1)
	CreateDynamicObject(17950,911.27911377,-194.15039062,11.83151054,0.00000000,0.00000000,180.00000000, .worldid = 0, .streamdistance = 170); //object(cjsaveg) (1)
	CreateDynamicObject(11631,842.61993408,-201.13905334,23.00527191,0.00000000,0.00000000,269.99450684, .worldid = 0, .streamdistance = 170); //object(ranch_desk) (1)
	CreateDynamicObject(1714,841.95428467,-201.47659302,21.75936699,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(kb_swivelchair1) (1)
	CreateDynamicObject(16151,853.22558594,-211.39062500,20.65157890,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(ufo_bar) (1)
	CreateDynamicObject(1411,842.43676758,-190.73144531,20.41988945,90.00000000,163.89672852,16.09783936, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,850.03967285,-190.69323730,20.41988945,90.00000000,162.45098877,17.54354858, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,834.80126953,-190.73144531,20.41988945,90.00000000,194.48031616,345.50869751, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1548,850.96337891,-212.34977722,21.26932335,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_drip_tray) (1)
	CreateDynamicObject(1411,829.62121582,-190.73262024,20.41988945,90.00000000,169.29730225,10.68618774, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,851.80920410,-192.50782776,20.41988945,90.00000000,194.47875977,255.51025391, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,851.80920410,-193.38055420,20.41988945,90.00000000,166.73962402,283.24389648, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,860.02502441,-197.76264954,20.41988945,90.00000000,195.49816895,344.49633789, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,856.05328369,-197.76196289,20.41988945,90.00000000,195.49621582,344.49279785, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1547,853.02294922,-212.35992432,21.27658081,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_b_pish_t) (1)
	CreateDynamicObject(1411,861.81054688,-199.56347656,20.41988945,90.00000000,192.30468750,257.66784668, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,861.81103516,-204.76307678,20.41988945,90.00000000,191.77362061,258.19897461, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,861.81054688,-209.93750000,20.41988945,90.00000000,191.29943848,258.66210938, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,861.81188965,-215.31210327,20.41988945,90.00000000,169.66125488,280.30026245, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1543,850.41571045,-212.37231445,21.28255653,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (6)
	CreateDynamicObject(1543,850.74383545,-212.36070251,21.28255653,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (7)
	CreateDynamicObject(1544,851.17889404,-212.32679749,21.25699806,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_1) (2)
	CreateDynamicObject(1544,851.45074463,-212.33735657,21.25699806,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_1) (3)
	CreateDynamicObject(1411,859.99981689,-217.02355957,20.41988945,90.00000000,170.27111816,189.68493652, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,854.82507324,-216.91441345,20.41988945,90.00000000,189.33795166,170.61254883, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,849.64788818,-216.95523071,20.41988945,90.00000000,189.09468079,170.85034180, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,844.47064209,-216.92073059,20.41988945,90.00000000,171.43212891,188.50750732, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,839.27105713,-216.92073059,20.41988945,90.00000000,171.79010010,188.14398193, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,834.09277344,-216.91992188,20.41988945,90.00000000,187.81677246,172.10632324, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1509,853.03613281,-212.36755371,21.45445251,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_wine_3) (1)
	CreateDynamicObject(1411,828.91326904,-216.92073059,20.41988945,90.00000000,187.54113770,172.38201904, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,823.73974609,-216.92073059,20.41988945,90.00000000,172.65167236,187.26593018, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,818.56561279,-216.92073059,20.41988945,90.00000000,187.17486572,172.73724365, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,817.36700439,-216.92073059,20.41988945,90.00000000,173.37451172,186.53211975, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(2315,858.91687012,-214.93025208,20.30158424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_tv_table4) (1)
	CreateDynamicObject(1712,858.04998779,-213.49748230,20.30158424,0.00000000,0.00000000,19.99511719, .worldid = 0, .streamdistance = 170); //object(kb_couch05) (1)
	CreateDynamicObject(1712,861.08013916,-216.47816467,20.30158424,0.00000000,0.00000000,185.99304199, .worldid = 0, .streamdistance = 170); //object(kb_couch05) (1)
	CreateDynamicObject(1712,860.94946289,-213.02062988,20.30158424,0.00000000,0.00000000,313.99475098, .worldid = 0, .streamdistance = 170); //object(kb_couch05) (1)
	CreateDynamicObject(1411,815.59777832,-215.31396484,20.41988945,90.00000000,173.62109375,96.28005981, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1543,860.67919922,-215.25439453,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (8)
	CreateDynamicObject(1543,859.37823486,-215.24131775,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (9)
	CreateDynamicObject(1411,815.59777832,-210.15447998,20.41988945,90.00000000,173.69470215,96.20092773, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1543,860.67102051,-214.57032776,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (10)
	CreateDynamicObject(1411,815.59765625,-204.98730469,20.41988945,90.00000000,173.76525879,96.11938477, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,815.59765625,-199.82089233,20.41988945,90.00000000,185.98815918,83.90206909, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1543,858.79382324,-214.55067444,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (11)
	CreateDynamicObject(2852,860.05181885,-214.91984558,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(gb_bedmags02) (2)
	CreateDynamicObject(2855,858.66070557,-215.14195251,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(gb_bedmags05) (1)
	CreateDynamicObject(2864,859.28973389,-214.88948059,20.79721642,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(gb_kitchplatecln04) (1)
	CreateDynamicObject(2010,824.36712646,-210.60308838,20.30438232,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(nu_plant3_ofc) (1)
	CreateDynamicObject(2010,822.14129639,-210.66987610,20.30438232,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(nu_plant3_ofc) (2)
	CreateDynamicObject(1557,834.54998779,-199.45341492,21.53437042,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(gen_doorext19) (1)
	CreateDynamicObject(2395,815.19531250,-196.99099731,20.33438110,270.00000000,179.71435547,179.70336914, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,815.19531250,-194.25140381,20.33438110,270.00000000,179.71984863,179.70886230, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,815.19531250,-191.51364136,20.33348083,270.00000000,180.01647949,180.00549316, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,818.92871094,-190.59960938,20.33138084,270.00000000,179.99450684,179.98352051, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(3498,834.28509521,-199.46015930,21.19622993,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (1)
	CreateDynamicObject(2395,815.19531250,-189.00000000,20.33438110,270.00000000,180.01647949,180.00549316, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(3498,843.14056396,-199.50254822,21.19622993,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(wdpillar01_lvs) (2)
	CreateDynamicObject(2395,818.92962646,-188.99957275,20.33438110,270.00000000,180.00299072,179.99200439, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,822.65631104,-188.99957275,20.33438110,270.00000000,180.00000000,179.98901367, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,822.65625000,-190.59960938,20.33138084,270.00000000,179.98352051,179.97253418, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(3524,834.23535156,-199.37500000,23.91192055,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(skullpillar01_lvs) (12)
	CreateDynamicObject(3524,843.20904541,-199.49911499,23.91192055,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(skullpillar01_lvs) (12)
	CreateDynamicObject(2395,814.66113281,-196.63964844,20.28438187,0.00000000,179.99450684,270.00000000, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,814.66149902,-192.91445923,20.28438187,0.00000000,179.99450684,270.00000000, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,814.65905762,-189.48910522,20.28438187,0.00000000,179.99450684,270.00000000, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,815.21539307,-186.18623352,20.28438187,0.00000000,179.99450684,180.00000000, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,818.93420410,-186.18623352,20.28438187,0.00000000,179.99450684,179.99450684, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,822.65856934,-186.18623352,20.28438187,0.00000000,179.99450684,179.99450684, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(2395,825.95800781,-186.74804688,20.28438187,0.00000000,179.99450684,89.99450684, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(1411,815.59765625,-194.64483643,20.41988945,90.00000000,174.10815430,95.77645874, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,815.59765625,-189.49395752,20.41988945,90.00000000,174.22674561,95.65237427, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,815.59765625,-188.89331055,20.41988945,90.00000000,174.39489746,95.47879028, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,817.37371826,-187.09419250,20.41988945,90.00000000,185.47882080,354.38940430, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,822.55169678,-187.06970215,20.41988945,90.00000000,174.59686279,5.26574707, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,823.27471924,-187.09419250,20.41988945,90.00000000,185.33453369,354.52264404, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1411,828.54766846,-190.70617676,20.41988945,90.00000000,169.29382324,10.68420410, .worldid = 0, .streamdistance = 170); //object(dyn_mesh_1) (12)
	CreateDynamicObject(1709,817.64666748,-194.27745056,20.30586624,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(kb_couch08) (2)
	CreateDynamicObject(2395,817.97796631,-197.16546631,20.28438187,0.00000000,179.99450684,359.99755859, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(1710,818.63214111,-188.51019287,20.30158424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(kb_couch07) (1)
	CreateDynamicObject(933,817.80908203,-214.41552734,20.30158424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_cableroll) (1)
	CreateDynamicObject(933,821.13000488,-215.33825684,20.30158424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_cableroll) (2)
	CreateDynamicObject(1543,817.10961914,-214.16696167,21.26527405,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (12)
	CreateDynamicObject(1543,817.85888672,-215.02862549,21.26527405,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (13)
	CreateDynamicObject(1543,820.81866455,-215.93087769,21.26527405,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (14)
	CreateDynamicObject(1543,821.75537109,-215.00646973,21.26527405,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (15)
	CreateDynamicObject(1543,820.65844727,-214.98052979,21.26527405,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (16)
	CreateDynamicObject(1543,818.24859619,-214.05032349,21.26527405,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (17)
	CreateDynamicObject(2670,820.89855957,-201.74417114,20.39363670,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_1) (1)
	CreateDynamicObject(2670,827.26745605,-193.61413574,20.39363670,0.00000000,0.00000000,62.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_1) (2)
	CreateDynamicObject(2670,836.25195312,-207.53320312,21.85141945,0.00000000,0.00000000,61.99584961, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_1) (3)
	CreateDynamicObject(2673,817.43109131,-190.85536194,20.37807274,0.00000000,0.00000000,60.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_5) (1)
	CreateDynamicObject(2674,819.63287354,-214.29875183,20.32332420,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_2) (1)
	CreateDynamicObject(2395,825.95782471,-187.29492188,20.28438187,0.00000000,179.99450684,89.99450684, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(3055,824.71875000,-193.01074219,17.43147659,0.00000000,0.00000000,270.00000000, .worldid = 0, .streamdistance = 170); //object(kmb_shutter) (1)
	CreateDynamicObject(3055,820.79901123,-196.97933960,17.43147659,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(kmb_shutter) (2)
	CreateDynamicObject(3055,818.41674805,-193.06622314,17.43147659,0.00000000,0.00000000,89.99450684, .worldid = 0, .streamdistance = 170); //object(kmb_shutter) (3)
	CreateDynamicObject(3055,820.75195312,-190.53906250,17.43147659,0.00000000,0.00000000,359.98901367, .worldid = 0, .streamdistance = 170); //object(kmb_shutter) (4)
	CreateDynamicObject(2671,854.78729248,-214.21147156,20.30158424,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_3) (1)
	CreateDynamicObject(2670,850.51214600,-213.93438721,20.39363670,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_1) (4)
	CreateDynamicObject(2673,852.74829102,-202.37962341,20.38941193,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_5) (2)
	CreateDynamicObject(3361,828.68121338,-187.41790771,18.16339302,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cxref_woodstair) (2)
	CreateDynamicObject(1437,857.62463379,-209.55412292,21.52656555,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_ladder_2) (1)
	CreateDynamicObject(1428,850.46282959,-207.39338684,29.36249733,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_ladder) (1)
	CreateDynamicObject(1729,829.55664062,-202.71875000,24.91829300,0.00000000,0.00000000,135.99975586, .worldid = 0, .streamdistance = 170); //object(mrk_seating3b) (1)
	CreateDynamicObject(1536,834.32495117,-211.36027527,20.25987434,0.00000000,0.00000000,180.00000000, .worldid = 0, .streamdistance = 170); //object(gen_doorext15) (1)
	CreateDynamicObject(1437,843.05419922,-204.05421448,21.10937691,8.00000000,0.00000000,268.75000000, .worldid = 0, .streamdistance = 170); //object(dyn_ladder_2) (2)
	CreateDynamicObject(1709,840.18066406,-209.54101562,21.75936699,0.00000000,0.00000000,179.99450684, .worldid = 0, .streamdistance = 170); //object(kb_couch08) (3)
	CreateDynamicObject(13360,834.19696045,-201.86712646,22.83086395,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(ce_catshackdoor) (1)
	CreateDynamicObject(1729,848.40667725,-202.77650452,24.91829300,0.00000000,0.00000000,205.99975586, .worldid = 0, .streamdistance = 170); //object(mrk_seating3b) (1)
	CreateDynamicObject(8947,836.91796875,-239.16601562,16.51546097,0.00000000,0.00000000,270.00000000, .worldid = 0, .streamdistance = 170); //object(vgelkup) (1)
	CreateDynamicObject(3928,843.20489502,-239.18032837,19.56900406,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(helipad) (1)
	CreateDynamicObject(3928,830.65002441,-239.18032837,19.56900406,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(helipad) (2)
	CreateDynamicObject(1712,834.67706299,-204.69567871,21.75936699,0.00000000,0.00000000,90.00000000, .worldid = 0, .streamdistance = 170); //object(kb_couch05) (2)
	CreateDynamicObject(2315,837.70507812,-208.72656250,21.75936699,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_tv_table4) (2)
	CreateDynamicObject(2232,842.59222412,-210.44412231,22.35724258,0.00000000,0.00000000,218.00000000, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (8)
	CreateDynamicObject(2229,841.79101562,-211.01953125,21.75936699,0.00000000,0.00000000,225.99975586, .worldid = 0, .streamdistance = 170); //object(swank_speaker) (3)
	CreateDynamicObject(2232,842.55505371,-210.42637634,23.55322456,0.00000000,0.00000000,250.00000000, .worldid = 0, .streamdistance = 170); //object(med_speaker_4) (9)
	CreateDynamicObject(2101,842.85858154,-209.72914124,21.75936699,0.00000000,0.00000000,252.00000000, .worldid = 0, .streamdistance = 170); //object(med_hi_fi_3) (1)
	CreateDynamicObject(1736,838.70562744,-199.85951233,25.18146706,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_stags_head) (1)
	CreateDynamicObject(2258,838.64508057,-199.59545898,23.63508606,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(frame_clip_5) (1)
	CreateDynamicObject(2673,842.12854004,-203.07067871,21.84719467,0.00000000,0.00000000,40.00000000, .worldid = 0, .streamdistance = 170); //object(proc_rubbish_5) (3)
	CreateDynamicObject(3594,843.28387451,-186.63006592,18.48395157,359.39999390,357.00000000,230.00000000, .worldid = 0, .streamdistance = 170); //object(la_fuckcar1) (1)
	CreateDynamicObject(1210,837.55615234,-208.92781067,22.35192871,90.00000000,90.00000000,280.00000000, .worldid = 0, .streamdistance = 170); //object(briefcase) (1)
	CreateDynamicObject(3425,867.56909180,-187.65254211,25.77436447,0.00000000,0.00000000,18.00000000, .worldid = 0, .streamdistance = 170); //object(nt_windmill) (1)
	CreateDynamicObject(1543,838.94500732,-208.98397827,22.22999954,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (5)
	CreateDynamicObject(1543,839.05004883,-209.01747131,22.22999954,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_2) (18)
	CreateDynamicObject(1544,839.22985840,-208.72274780,22.30499840,0.00000000,90.00000000,310.00000000, .worldid = 0, .streamdistance = 170); //object(cj_beer_b_1) (1)
	CreateDynamicObject(1520,839.36016846,-208.67327881,22.30499840,0.00000000,0.00000000,320.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_wine_bounce) (1)
	CreateDynamicObject(3044,838.94409180,-209.07972717,22.34465218,0.00000000,0.00000000,220.00000000, .worldid = 0, .streamdistance = 170); //object(cigar) (1)
	CreateDynamicObject(1510,838.75683594,-209.00405884,22.27000046,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_ashtry) (1)
	CreateDynamicObject(3044,838.74218750,-209.17774963,22.34465218,0.00000000,0.00000000,159.99572754, .worldid = 0, .streamdistance = 170); //object(cigar) (3)
	CreateDynamicObject(1547,838.27307129,-208.92935181,22.25499916,0.00000000,0.00000000,10.00000000, .worldid = 0, .streamdistance = 170); //object(cj_b_pish_t) (2)
	CreateDynamicObject(2103,838.39123535,-208.53096008,22.25499916,0.00000000,0.00000000,0.00000000, .worldid = 0, .streamdistance = 170); //object(low_hi_fi_1) (1)
	CreateDynamicObject(2395,825.40539551,-190.51133728,20.28438187,0.00000000,179.99450684,349.99450684, .worldid = 0, .streamdistance = 170); //object(cj_sports_wall) (2)
	CreateDynamicObject(1481,855.22119141,-212.35366821,21.20470619,0.00000000,0.00000000,180.00000000, .worldid = 0, .streamdistance = 170); //object(dyn_bar_b_q) (1)

	//Chris' Custom Exterior
	CreateDynamicObject(6300,933.31738281,36.24902344,83.00000000,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(pier04_law2) (1)
	CreateDynamicObject(6300,944.46582031,24.48828125,70.00000000,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(pier04_law2) (2)
	CreateDynamicObject(3378,955.57714844,32.77539062,84.30461121,329.99633789,0.00000000,0.00000000, .streamdistance = 200); //object(ce_beerpile01) (3)
	CreateDynamicObject(2395,957.94787598,44.96808243,78.65468597,299.99267578,0.00000000,179.99450684, .streamdistance = 200); //object(cj_sports_wall) (3)
	CreateDynamicObject(7191,952.78314209,23.07670784,80.02352142,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(7191,952.78723145,23.05613708,83.92352295,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (4)
	CreateDynamicObject(7191,952.79882812,23.04394531,87.88352203,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (5)
	CreateDynamicObject(7191,952.81347656,23.04003906,88.61352539,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (6)
	CreateDynamicObject(7191,958.38641357,23.12235069,80.02352142,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (8)
	CreateDynamicObject(7191,958.38641357,23.12235069,87.88352203,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (9)
	CreateDynamicObject(7191,958.37640381,23.15712738,88.28352356,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (10)
	CreateDynamicObject(2395,956.14190674,44.96559906,78.65468597,299.99267578,0.00000000,179.99450684, .streamdistance = 200); //object(cj_sports_wall) (4)
	CreateDynamicObject(2395,956.11181641,45.99285889,78.05468750,299.99267578,0.00000000,179.99450684, .streamdistance = 200); //object(cj_sports_wall) (19)
	CreateDynamicObject(2395,957.86657715,45.98937988,78.05468750,299.99267578,0.00000000,179.99450684, .streamdistance = 200); //object(cj_sports_wall) (14)
	CreateDynamicObject(7191,958.38641357,23.12235069,83.92352295,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (7)
	CreateDynamicObject(987,914.16320801,18.09761620,84.39350128,0.00000000,0.00000000,270.00000000, .streamdistance = 200); //object(elecfence_bar) (3)
	CreateDynamicObject(7191,958.38867188,40.93666077,80.02352142,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (8)
	CreateDynamicObject(860,955.62866211,3.76326466,90.84105682,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(sand_plant01) (1)
	CreateDynamicObject(859,957.03778076,5.84814930,90.88571930,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(sand_plant04) (1)
	CreateDynamicObject(871,954.31524658,8.25285339,91.23568726,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(veg_procfpatchwee) (1)
	CreateDynamicObject(871,956.40283203,8.39758205,91.23568726,0.00000000,0.00000000,28.00000000, .streamdistance = 200); //object(veg_procfpatchwee) (2)
	CreateDynamicObject(871,958.39117432,8.43706417,91.23568726,0.00000000,0.00000000,27.99865723, .streamdistance = 200); //object(veg_procfpatchwee) (3)
	CreateDynamicObject(871,957.05444336,2.01025748,91.23568726,0.00000000,0.00000000,27.99865723, .streamdistance = 200); //object(veg_procfpatchwee) (4)
	CreateDynamicObject(871,954.66998291,2.63806415,91.23568726,0.00000000,0.00000000,15.99865723, .streamdistance = 200); //object(veg_procfpatchwee) (5)
	CreateDynamicObject(870,954.55474854,5.35992336,91.12651062,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(veg_pflowers2wee) (1)
	CreateDynamicObject(870,957.42816162,4.99900103,91.12651062,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(veg_pflowers2wee) (2)
	CreateDynamicObject(13295,934.24133301,12.88240337,83.99479675,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(ce_terminal1) (1)
	CreateDynamicObject(8661,939.20721436,18.08712769,78.10828400,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(gnhtelgrnd_lvs) (1)
	CreateDynamicObject(8661,929.28955078,18.09814072,78.10928345,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(gnhtelgrnd_lvs) (2)
	CreateDynamicObject(906,947.41931152,25.01561928,78.73435974,0.00000000,256.00000000,274.00000000, .streamdistance = 200); //object(p_rubblebig) (1)
	CreateDynamicObject(906,939.66729736,25.07949829,78.73435974,0.00000000,235.73828125,226.73999023, .streamdistance = 200); //object(p_rubblebig) (5)
	CreateDynamicObject(906,935.34948730,24.77649879,78.73435974,0.00000000,327.73364258,342.73587036, .streamdistance = 200); //object(p_rubblebig) (6)
	CreateDynamicObject(906,934.65838623,24.45764542,78.73435974,0.00000000,327.73315430,154.73498535, .streamdistance = 200); //object(p_rubblebig) (7)
	CreateDynamicObject(906,931.66113281,24.59442902,78.73435974,0.00000000,327.72766113,154.73144531, .streamdistance = 200); //object(p_rubblebig) (8)
	CreateDynamicObject(906,927.41528320,24.78839684,78.73435974,0.00000000,327.72766113,58.73144531, .streamdistance = 200); //object(p_rubblebig) (9)
	CreateDynamicObject(906,917.69238281,32.19921875,78.73435974,0.00000000,327.72766113,58.72192383, .streamdistance = 200); //object(p_rubblebig) (12)
	CreateDynamicObject(2050,920.12829590,69.82226562,78.32686615,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(cj_target2) (1)
	CreateDynamicObject(2056,920.13714600,69.82226562,79.15583038,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(cj_target6) (1)
	CreateDynamicObject(2050,932.40246582,69.82394409,82.14697266,0.00000000,0.00000000,359.75000000, .streamdistance = 200); //object(cj_target2) (2)
	CreateDynamicObject(2049,932.38745117,70.03890228,80.34883881,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(cj_target1) (1)
	CreateDynamicObject(906,923.43505859,24.10161209,78.73435974,0.00000000,327.72766113,58.72741699, .streamdistance = 200); //object(p_rubblebig) (13)
	CreateDynamicObject(3607,945.53320312,58.60156250,97.16030121,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(bevman2_law2) (1)
	CreateDynamicObject(9345,954.99737549,3.27285576,90.56971741,0.00000000,1.49963379,273.24645996, .streamdistance = 200); //object(sfn_pier_grassbit) (1)
	CreateDynamicObject(9345,952.57824707,6.01122284,90.56971741,0.00000000,180.00000000,347.50000000, .streamdistance = 200); //object(sfn_pier_grassbit) (1)
	CreateDynamicObject(7191,936.25097656,62.71930695,80.02352142,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(7191,936.25097656,62.71875000,83.92352295,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(7191,936.19073486,49.80949402,89.00351715,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(7191,958.38867188,40.93652344,83.92352295,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (8)
	CreateDynamicObject(7191,914.12463379,39.78765106,80.02352142,0.00000000,0.00000000,180.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(7191,914.12402344,39.78710938,83.92352295,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(7191,914.12402344,39.78710938,87.88352203,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(17950,918.46557617,58.99143600,80.29951477,0.00000000,0.00000000,270.00000000, .streamdistance = 200); //object(cjsaveg) (1)
	CreateDynamicObject(17950,918.51733398,52.67621231,80.29951477,0.00000000,0.00000000,270.00000000, .streamdistance = 200); //object(cjsaveg) (2)
	CreateDynamicObject(18032,924.13104248,55.59278870,79.57346344,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(range_xtras2) (1)
	CreateDynamicObject(983,921.80841064,52.57633209,78.73824310,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit3) (2)
	CreateDynamicObject(983,921.80493164,59.05123138,78.73824310,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit3) (3)
	CreateDynamicObject(927,938.06414795,62.57381821,86.48782349,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(piping_detail) (1)
	CreateDynamicObject(3066,951.30273438,35.39062500,79.05468750,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(ammotrn_obj) (1)
	CreateDynamicObject(3567,963.09857178,48.55468369,78.85469055,0.00000000,0.00000000,180.00000000, .streamdistance = 200); //object(lasnfltrail) (1)
	CreateDynamicObject(3567,969.57055664,48.49716949,78.85469055,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(lasnfltrail) (2)
	CreateDynamicObject(2932,969.52795410,43.80160904,81.18915558,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kmb_container_blue) (1)
	CreateDynamicObject(2935,969.57958984,52.94645691,81.22116852,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kmb_container_yel) (1)
	CreateDynamicObject(3066,963.15270996,44.70501709,80.79151154,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(ammotrn_obj) (2)
	CreateDynamicObject(2934,963.10113525,53.65912247,81.18915558,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kmb_container_red) (1)
	CreateDynamicObject(3630,938.74688721,61.14754486,79.76955414,0.00000000,0.00000000,180.00000000, .streamdistance = 200); //object(crdboxes2_las) (1)
	CreateDynamicObject(5520,910.50909424,44.42607880,96.19941711,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(bdupshouse_lae) (1)
	CreateDynamicObject(1408,950.33831787,-2.20677400,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (1)
	CreateDynamicObject(1408,916.15332031,-2.20605469,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (2)
	CreateDynamicObject(1408,921.35351562,-2.20605469,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (3)
	CreateDynamicObject(1408,926.55371094,-2.20605469,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (4)
	CreateDynamicObject(1408,931.75292969,-2.20605469,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (5)
	CreateDynamicObject(1408,935.36328125,-2.20605469,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (6)
	CreateDynamicObject(1408,952.70233154,7.17009115,91.65005493,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (7)
	CreateDynamicObject(1408,952.69531250,0.28613281,91.65005493,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (9)
	CreateDynamicObject(1408,952.72631836,3.97001648,91.65005493,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (10)
	CreateDynamicObject(1408,955.45159912,9.99847507,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (11)
	CreateDynamicObject(1408,957.87036133,10.01863480,91.65005493,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(dyn_f_wood_2) (12)
	CreateDynamicObject(984,960.56365967,16.43669128,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (1)
	CreateDynamicObject(984,960.55371094,26.03677368,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (2)
	CreateDynamicObject(970,961.65533447,32.55821991,91.60617065,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fencesmallb) (1)
	CreateDynamicObject(984,963.67242432,38.99509811,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (3)
	CreateDynamicObject(984,963.69360352,51.84419632,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (4)
	CreateDynamicObject(984,963.69366455,64.60432434,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (5)
	CreateDynamicObject(984,957.27331543,74.75468445,91.69136810,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(fenceshit2) (6)
	CreateDynamicObject(984,944.45458984,74.74330902,91.69136810,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(fenceshit2) (7)
	CreateDynamicObject(984,931.67077637,74.76304626,91.69136810,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(fenceshit2) (8)
	CreateDynamicObject(984,918.83917236,74.74956512,91.69136810,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(fenceshit2) (9)
	CreateDynamicObject(984,909.26367188,74.75254822,91.69136810,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(fenceshit2) (10)
	CreateDynamicObject(984,963.66967773,68.46887970,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (11)
	CreateDynamicObject(984,902.97070312,68.34570312,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (12)
	CreateDynamicObject(984,902.95172119,55.58040237,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (13)
	CreateDynamicObject(984,902.97863770,42.77636719,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (14)
	CreateDynamicObject(984,902.98681641,38.96278381,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (15)
	CreateDynamicObject(942,950.25225830,61.35370255,80.49791718,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(cj_df_unit_2) (1)
	CreateDynamicObject(922,914.84838867,43.82742310,78.94023132,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(packing_carates1) (1)
	CreateDynamicObject(2050,914.91668701,50.13907242,80.49504089,0.00000000,0.00000000,90.25000000, .streamdistance = 200); //object(cj_target2) (3)
	CreateDynamicObject(2050,914.89929199,50.98884201,80.49504089,0.00000000,0.00000000,90.24719238, .streamdistance = 200); //object(cj_target2) (4)
	CreateDynamicObject(2050,914.90747070,51.91319656,80.49504089,0.00000000,0.00000000,90.24719238, .streamdistance = 200); //object(cj_target2) (5)
	CreateDynamicObject(2050,914.91601562,52.81300354,80.49504089,0.00000000,0.00000000,90.24719238, .streamdistance = 200); //object(cj_target2) (6)
	CreateDynamicObject(2050,914.87402344,53.63792038,80.49504089,0.00000000,0.00000000,90.24719238, .streamdistance = 200); //object(cj_target2) (7)
	CreateDynamicObject(2050,914.90856934,54.61235809,80.49504089,0.00000000,0.00000000,90.24719238, .streamdistance = 200); //object(cj_target2) (8)
	CreateDynamicObject(2049,914.86364746,56.73937225,80.45215607,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(cj_target1) (2)
	CreateDynamicObject(2049,914.83624268,57.56423569,80.45215607,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(cj_target1) (3)
	CreateDynamicObject(2049,914.85882568,58.43860245,80.45215607,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(cj_target1) (5)
	CreateDynamicObject(2049,914.85632324,59.28852844,80.45215607,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(cj_target1) (6)
	CreateDynamicObject(2049,914.82836914,60.13806534,80.45215607,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(cj_target1) (7)
	CreateDynamicObject(2049,914.85125732,60.91281509,80.45215607,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(cj_target1) (8)
	CreateDynamicObject(2049,914.82336426,61.66203690,80.45215607,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(cj_target1) (9)
	CreateDynamicObject(8990,936.94281006,46.91976166,91.75765228,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(bush11_lvs) (1)
	CreateDynamicObject(8990,953.27178955,47.19842148,91.75765228,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(bush11_lvs) (2)
	CreateDynamicObject(3660,937.02404785,7.65639019,93.14369202,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(lasairfbed_las) (1)
	CreateDynamicObject(3660,936.98004150,22.56543350,93.14369202,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(lasairfbed_las) (2)
	CreateDynamicObject(3660,949.01086426,7.67281866,93.14369202,0.00000000,0.00000000,270.00000000, .streamdistance = 200); //object(lasairfbed_las) (3)
	CreateDynamicObject(3660,948.46673584,22.53438187,93.14369202,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(lasairfbed_las) (4)
	CreateDynamicObject(3532,937.35723877,21.16753960,92.43560791,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(triadbush) (1)
	CreateDynamicObject(3920,937.76232910,46.50373077,98.98908234,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(lib_veg3) (2)
	CreateDynamicObject(3920,951.24804688,46.39841461,98.98908234,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(lib_veg3) (3)
	CreateDynamicObject(984,913.45568848,4.15009642,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (12)
	CreateDynamicObject(984,913.44268799,16.89507675,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (12)
	CreateDynamicObject(984,913.44940186,29.67284393,91.69136810,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fenceshit2) (12)
	CreateDynamicObject(3920,941.56262207,45.50816727,93.32931519,0.00000000,269.49993896,6.99990845, .streamdistance = 200); //object(lib_veg3) (5)
	CreateDynamicObject(3920,947.64007568,45.45749664,93.32931519,0.00000000,90.25021362,353.49832153, .streamdistance = 200); //object(lib_veg3) (6)
	CreateDynamicObject(2253,936.38262939,72.42992401,93.33782959,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(plant_pot_22) (1)
	CreateDynamicObject(2253,952.91418457,72.40090942,93.33782959,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(plant_pot_22) (2)
	CreateDynamicObject(2031,927.12274170,71.48333740,91.87874603,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(med_dinning_3) (1)
	CreateDynamicObject(18090,953.28247070,64.29217529,94.44211578,0.00000000,0.00000000,269.75000000, .streamdistance = 200); //object(bar_bar1) (1)
	CreateDynamicObject(3055,952.28063965,64.12122345,91.87874603,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kmb_shutter) (1)
	CreateDynamicObject(3055,953.88220215,64.10224152,91.87874603,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kmb_shutter) (2)
	CreateDynamicObject(1541,949.86077881,64.98105621,93.09477234,0.00000000,0.00000000,180.00000000, .streamdistance = 200); //object(cj_beer_taps_1) (1)
	CreateDynamicObject(1541,953.34936523,64.94785309,93.09477234,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(cj_beer_taps_1) (2)
	CreateDynamicObject(1545,954.05712891,64.18103790,93.68454742,0.00000000,0.00000000,180.25000000, .streamdistance = 200); //object(cj_b_optic1) (1)
	CreateDynamicObject(1703,952.73364258,71.58258057,91.87874603,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kb_couch02) (1)
	CreateDynamicObject(1703,960.35778809,71.45935059,91.87874603,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kb_couch02) (2)
	CreateDynamicObject(1703,956.68249512,71.58287048,91.87874603,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(kb_couch02) (3)
	CreateDynamicObject(2614,944.46258545,45.84562683,97.23095703,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(cj_us_flag) (1)
	CreateDynamicObject(2964,944.30389404,69.61491394,91.87874603,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(k_pooltablesm) (1)
	CreateDynamicObject(3497,941.55090332,66.12953186,95.95837402,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vgsxrefbballnet2) (1)
	CreateDynamicObject(6300,922.29199219,11.20117188,79.00000000,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(pier04_law2) (1)
	CreateDynamicObject(7191,952.59448242,27.56246185,88.61352539,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (6)
	CreateDynamicObject(7191,936.23120117,62.76469421,87.88352203,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(10558,940.46160889,37.77862930,80.07371521,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(tbnsfs) (1)
	CreateDynamicObject(10558,931.36694336,37.79026794,80.07371521,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(tbnsfs) (2)
	CreateDynamicObject(4100,908.68548584,2.38084531,90.53389740,0.00000000,0.00000000,272.00000000, .streamdistance = 200); //object(meshfence1_lan) (1)
	CreateDynamicObject(4100,892.78552246,17.12979698,90.53389740,0.00000000,0.00000000,279.24951172, .streamdistance = 200); //object(meshfence1_lan) (2)
	CreateDynamicObject(4100,882.22473145,25.92337036,90.53389740,0.00000000,0.00000000,281.74499512, .streamdistance = 200); //object(meshfence1_lan) (3)
	CreateDynamicObject(4100,870.85705566,33.40221405,90.53389740,0.00000000,0.00000000,291.74438477, .streamdistance = 200); //object(meshfence1_lan) (6)
	CreateDynamicObject(4100,870.85644531,33.40136719,87.73389435,0.00000000,0.00000000,291.74194336, .streamdistance = 200); //object(meshfence1_lan) (7)
	CreateDynamicObject(4100,864.19445801,43.33726501,87.73389435,0.00000000,0.00000000,233.74194336, .streamdistance = 200); //object(meshfence1_lan) (8)
	CreateDynamicObject(4100,869.88543701,48.18940735,87.73389435,0.00000000,0.00000000,119.73962402, .streamdistance = 200); //object(meshfence1_lan) (9)
	CreateDynamicObject(4100,881.09625244,40.90124893,87.73389435,0.00000000,0.00000000,93.73449707, .streamdistance = 200); //object(meshfence1_lan) (10)
	CreateDynamicObject(4100,864.19433594,43.33691406,90.53389740,0.00000000,0.00000000,233.73962402, .streamdistance = 200); //object(meshfence1_lan) (12)
	CreateDynamicObject(4100,869.88476562,48.18847656,90.53389740,0.00000000,0.00000000,119.73449707, .streamdistance = 200); //object(meshfence1_lan) (13)
	CreateDynamicObject(4100,881.09570312,40.90039062,90.53389740,0.00000000,0.00000000,93.72985840, .streamdistance = 200); //object(meshfence1_lan) (14)
	CreateDynamicObject(4100,890.96746826,31.35595703,90.53389740,0.00000000,0.00000000,98.47985840, .streamdistance = 200); //object(meshfence1_lan) (15)
	CreateDynamicObject(4100,901.24786377,22.21598244,90.53389740,0.00000000,0.00000000,98.47595215, .streamdistance = 200); //object(meshfence1_lan) (16)
	CreateDynamicObject(4100,907.81646729,16.36734390,90.53389740,0.00000000,0.00000000,98.47595215, .streamdistance = 200); //object(meshfence1_lan) (17)
	CreateDynamicObject(3515,899.84637451,41.10479736,87.05468750,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vgsfountain) (1)
	CreateDynamicObject(3472,937.40405273,3.90785694,91.25978088,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(circuslampost03) (1)
	CreateDynamicObject(3472,948.90332031,3.90722656,91.25978088,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(circuslampost03) (3)
	CreateDynamicObject(9833,917.22039795,0.93911433,93.25723267,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fountain_sfw) (1)
	CreateDynamicObject(9833,955.79058838,5.25138235,93.25723267,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(fountain_sfw) (2)
	CreateDynamicObject(2600,937.69476318,74.54307556,91.82695770,0.00000000,0.00000000,156.00000000, .streamdistance = 200); //object(cj_view_tele) (1)
	CreateDynamicObject(2600,950.44506836,74.44088745,91.82695770,0.00000000,0.00000000,176.49487305, .streamdistance = 200); //object(cj_view_tele) (2)
	CreateDynamicObject(7091,908.39984131,73.63060760,88.97818756,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(vegasflag02) (1)
	CreateDynamicObject(7091,958.83544922,73.71581268,88.97818756,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(vegasflag02) (2)
	CreateDynamicObject(8483,975.08410645,10.82978630,76.43601227,0.00000000,310.75000000,97.25000000, .streamdistance = 200); //object(pirateland02_lvs) (1)
	CreateDynamicObject(7191,936.25097656,62.71875000,88.88352203,0.00000000,0.00000000,90.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(7191,914.12402344,39.78710938,88.88352203,0.00000000,0.00000000,179.99450684, .streamdistance = 200); //object(vegasnnewfence2b) (3)
	CreateDynamicObject(703,930.97363281,1.64871812,91.04884338,0.00000000,0.00000000,328.00000000, .streamdistance = 200); //object(sm_veg_tree7_big) (1)
	CreateDynamicObject(703,920.55078125,3.01240849,91.04884338,0.00000000,0.00000000,327.99682617, .streamdistance = 200); //object(sm_veg_tree7_big) (2)
	CreateDynamicObject(672,933.80798340,7.40177536,91.04884338,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(sm_veg_tree5) (1)
	CreateDynamicObject(672,934.37719727,14.83780289,91.04884338,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(sm_veg_tree5) (2)
	CreateDynamicObject(672,935.40643311,21.39095497,91.04884338,0.00000000,0.00000000,102.00000000, .streamdistance = 200); //object(sm_veg_tree5) (3)
	CreateDynamicObject(672,934.82971191,29.02911568,91.04884338,0.00000000,0.00000000,139.99707031, .streamdistance = 200); //object(sm_veg_tree5) (4)
	CreateDynamicObject(715,917.34606934,25.44007111,99.40912628,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(veg_bevtree3) (1)
	CreateDynamicObject(715,927.61138916,25.90210533,99.40912628,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(veg_bevtree3) (2)
	CreateDynamicObject(821,925.76586914,0.94977283,92.33346558,0.00000000,0.00000000,310.00000000, .streamdistance = 200); //object(genveg_tallgrass05) (1)
	CreateDynamicObject(821,932.99090576,0.87283808,92.33346558,0.00000000,0.00000000,316.49572754, .streamdistance = 200); //object(genveg_tallgrass05) (2)
	CreateDynamicObject(821,934.17657471,6.58282614,92.33346558,0.00000000,0.00000000,62.99411011, .streamdistance = 200); //object(genveg_tallgrass05) (3)
	CreateDynamicObject(821,933.86614990,11.94229221,92.33346558,0.00000000,0.00000000,62.99011230, .streamdistance = 200); //object(genveg_tallgrass05) (4)
	CreateDynamicObject(821,934.52929688,17.43572044,92.33346558,0.00000000,0.00000000,62.99011230, .streamdistance = 200); //object(genveg_tallgrass05) (5)
	CreateDynamicObject(821,934.26770020,25.51926994,92.33346558,0.00000000,0.00000000,62.99011230, .streamdistance = 200); //object(genveg_tallgrass05) (6)
	CreateDynamicObject(823,916.45605469,10.32103729,91.59415436,0.00000000,0.00000000,130.24996948, .streamdistance = 200); //object(genveg_tallgrass07) (1)
	CreateDynamicObject(823,916.19409180,15.81385040,91.59415436,0.00000000,0.00000000,44.24841309, .streamdistance = 200); //object(genveg_tallgrass07) (2)
	CreateDynamicObject(823,916.64501953,21.42749023,91.59415436,0.00000000,0.00000000,232.24740601, .streamdistance = 200); //object(genveg_tallgrass07) (3)
	CreateDynamicObject(827,917.55450439,1.20382237,93.96994019,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(genveg_tallgrass11) (1)
	CreateDynamicObject(827,925.11120605,0.83571374,93.96994019,0.00000000,0.00000000,102.00000000, .streamdistance = 200); //object(genveg_tallgrass11) (2)
	CreateDynamicObject(827,930.13848877,1.92198467,93.96994019,0.00000000,0.00000000,123.99707031, .streamdistance = 200); //object(genveg_tallgrass11) (3)
	CreateDynamicObject(827,915.49169922,16.91219139,93.96994019,0.00000000,0.00000000,177.99169922, .streamdistance = 200); //object(genveg_tallgrass11) (4)
	CreateDynamicObject(827,914.77075195,8.92722225,93.96994019,0.00000000,0.00000000,177.98950195, .streamdistance = 200); //object(genveg_tallgrass11) (5)
	CreateDynamicObject(869,929.82501221,6.00376320,91.50450897,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(veg_pflowerswee) (1)
	CreateDynamicObject(869,926.81835938,5.91954994,91.50450897,0.00000000,0.00000000,56.00000000, .streamdistance = 200); //object(veg_pflowerswee) (2)
	CreateDynamicObject(869,924.55438232,6.48334408,91.50450897,0.00000000,0.00000000,55.99731445, .streamdistance = 200); //object(veg_pflowerswee) (3)
	CreateDynamicObject(869,921.63232422,7.72612953,91.50450897,0.00000000,0.00000000,145.99731445, .streamdistance = 200); //object(veg_pflowerswee) (4)
	CreateDynamicObject(869,919.73455811,10.51836205,91.50450897,0.00000000,0.00000000,115.99728394, .streamdistance = 200); //object(veg_pflowerswee) (5)
	CreateDynamicObject(869,919.09368896,14.11915112,91.50450897,0.00000000,0.00000000,89.99365234, .streamdistance = 200); //object(veg_pflowerswee) (6)
	CreateDynamicObject(869,919.15411377,17.86863327,91.50450897,0.00000000,0.00000000,89.98901367, .streamdistance = 200); //object(veg_pflowerswee) (7)
	CreateDynamicObject(869,919.20239258,20.86775208,91.50450897,0.00000000,0.00000000,259.98901367, .streamdistance = 200); //object(veg_pflowerswee) (8)
	CreateDynamicObject(869,932.63494873,8.74779320,91.50450897,0.00000000,0.00000000,259.98596191, .streamdistance = 200); //object(veg_pflowerswee) (9)
	CreateDynamicObject(869,933.06713867,12.27171898,91.50450897,0.00000000,0.00000000,263.98596191, .streamdistance = 200); //object(veg_pflowerswee) (10)
	CreateDynamicObject(869,932.47802734,15.52829742,91.50450897,0.00000000,0.00000000,263.98498535, .streamdistance = 200); //object(veg_pflowerswee) (11)
	CreateDynamicObject(869,932.84381104,18.98513031,91.50450897,0.00000000,0.00000000,263.98498535, .streamdistance = 200); //object(veg_pflowerswee) (12)
	CreateDynamicObject(869,933.80072021,22.32493210,91.50450897,0.00000000,0.00000000,225.98495483, .streamdistance = 200); //object(veg_pflowerswee) (13)
	CreateDynamicObject(869,933.80151367,25.77275848,91.50450897,0.00000000,0.00000000,111.98333740, .streamdistance = 200); //object(veg_pflowerswee) (14)
	CreateDynamicObject(1364,926.74664307,8.08112812,91.83880615,0.00000000,0.00000000,180.00000000, .streamdistance = 200); //object(cj_bush_prop) (1)
	CreateDynamicObject(1364,921.13909912,15.17160034,91.83880615,0.00000000,0.00000000,87.99450684, .streamdistance = 200); //object(cj_bush_prop) (2)
	CreateDynamicObject(1364,930.68933105,14.10139084,91.83880615,0.00000000,0.00000000,268.23950195, .streamdistance = 200); //object(cj_bush_prop) (3)
	CreateDynamicObject(18368,913.98352051,-25.48163795,88.96595001,0.00000000,0.00000000,253.50000000, .streamdistance = 200); //object(cs_mountplat) (1)
	CreateDynamicObject(18368,913.98339844,-25.48144531,88.96595001,0.00000000,0.00000000,253.49853516, .streamdistance = 200); //object(cs_mountplat) (2)
	CreateDynamicObject(7191,958.43847656,40.93164062,87.88352203,0.00000000,0.00000000,0.00000000, .streamdistance = 200); //object(vegasnnewfence2b) (8)

	// Jay_Gomezabino's Exterior Project (order ID 12943)
	CreateDynamicObject(11490,-339.53475952,-24.75227928,44.06593323,0.00000000,0.00000000,98.00000000); //object(des_ranch) (1)
	CreateDynamicObject(11491,-328.59893799,-23.20669556,45.54891968,0.00000000,0.00000000,98.00000000); //object(des_ranchbits1) (1)
	CreateDynamicObject(11496,-327.36581421,-24.28787804,43.89054871,0.00000000,0.00000000,8.00000000); //object(des_wjetty) (1)
	CreateDynamicObject(11496,-333.18298340,-33.31913757,43.89054871,0.00000000,0.00000000,7.99804688); //object(des_wjetty) (2)
	CreateDynamicObject(11496,-335.13830566,-19.48649025,43.89054871,0.00000000,0.00000000,7.99804688); //object(des_wjetty) (3)
	CreateDynamicObject(11496,-336.55328369,-9.41987038,43.88548660,0.00000000,0.00000000,7.99804688); //object(des_wjetty) (4)
	CreateDynamicObject(11496,-338.08374023,-34.01441956,43.89054871,0.00000000,0.00000000,187.99804688); //object(des_wjetty) (6)
	CreateDynamicObject(11496,-345.04019165,-34.99200439,43.89054871,0.00000000,0.00000000,187.99804688); //object(des_wjetty) (8)
	CreateDynamicObject(11496,-340.55545044,-42.03062057,43.88454819,0.00000000,0.00000000,277.99255371); //object(des_wjetty) (9)
	CreateDynamicObject(11496,-341.48425293,-10.10866070,43.88554764,0.00000000,0.00000000,187.99804688); //object(des_wjetty) (10)
	CreateDynamicObject(11496,-348.44006348,-11.08461857,43.88554764,0.00000000,0.00000000,187.99256897); //object(des_wjetty) (11)
	CreateDynamicObject(11496,-346.20770264,-26.90295792,43.88554764,0.00000000,0.00000000,187.99804688); //object(des_wjetty) (12)
	CreateDynamicObject(11496,-336.55273438,-9.41894531,37.08548355,0.00000000,0.00000000,7.99804688); //object(des_wjetty) (13)
	CreateDynamicObject(982,-349.54446411,-34.87224579,44.77410126,0.00000000,0.00000000,8.00000000); //object(fenceshit) (1)
	CreateDynamicObject(984,-352.21011353,-15.86205482,44.72222519,0.00000000,0.00000000,8.00000000); //object(fenceshit2) (1)
	CreateDynamicObject(984,-322.71701050,-25.16734123,44.72722626,0.00000000,0.00000000,8.00000000); //object(fenceshit2) (2)
	CreateDynamicObject(983,-323.56796265,-19.07803535,44.77410126,0.00000000,0.00000000,8.00000000); //object(fenceshit3) (2)
	CreateDynamicObject(983,-327.19116211,-16.35437775,44.77410126,0.00000000,0.00000000,278.00000000); //object(fenceshit3) (4)
	CreateDynamicObject(983,-327.80944824,-16.44266701,44.77410126,0.00000000,0.00000000,277.99804688); //object(fenceshit3) (5)
	CreateDynamicObject(983,-331.43872070,-13.68809319,44.77410126,0.00000000,0.00000000,8.00000000); //object(fenceshit3) (6)
	CreateDynamicObject(983,-332.33374023,-7.34766674,44.76903915,0.00000000,0.00000000,7.99804688); //object(fenceshit3) (7)
	CreateDynamicObject(983,-332.78335571,-4.18245220,44.76903915,0.00000000,0.00000000,7.99804688); //object(fenceshit3) (8)
	CreateDynamicObject(984,-339.58843994,-1.88111877,44.72216415,0.00000000,0.00000000,98.00000000); //object(fenceshit2) (3)
	CreateDynamicObject(984,-347.50384521,-2.99266434,44.72222519,0.00000000,0.00000000,278.00000000); //object(fenceshit2) (4)
	CreateDynamicObject(984,-341.40200806,-46.63797760,44.72122574,0.00000000,0.00000000,278.00000000); //object(fenceshit2) (5)
	CreateDynamicObject(983,-328.38119507,-35.62257385,44.77410126,0.00000000,0.00000000,7.99133301); //object(fenceshit3) (12)
	CreateDynamicObject(983,-335.39288330,-42.58993530,44.89853287,0.00000000,0.00000000,8.00000000); //object(fenceshit3) (13)
	CreateDynamicObject(983,-324.98211670,-31.95230484,44.77410126,0.00000000,0.00000000,278.00000000); //object(fenceshit3) (14)
	CreateDynamicObject(983,-325.68429565,-32.05858612,44.77410126,0.00000000,0.00000000,277.99804688); //object(fenceshit3) (15)
	CreateDynamicObject(984,-334.26403809,-39.68672562,44.72722626,0.00000000,0.00000000,278.00000000); //object(fenceshit2) (7)
	CreateDynamicObject(11544,-352.27810669,-6.10712051,43.04986954,0.00000000,0.00000000,278.00000000); //object(des_ntfrescape2) (1)
	CreateDynamicObject(983,-352.93176270,-10.62822533,44.76910019,0.00000000,0.00000000,8.00000000); //object(fenceshit3) (17)
	CreateDynamicObject(1463,-331.75732422,-23.57215309,45.87068558,0.00000000,0.00000000,98.00000000); //object(dyn_woodpile2) (1)
	CreateDynamicObject(3525,-332.15777588,-23.44037247,44.79261017,0.00000000,0.00000000,0.00000000); //object(exbrtorch01) (1)
	CreateDynamicObject(3525,-332.13150024,-24.03939819,44.79261017,0.00000000,0.00000000,0.00000000); //object(exbrtorch01) (2)
	CreateDynamicObject(1703,-337.55307007,-23.89168167,45.57374573,0.00000000,0.00000000,79.25000000); //object(kb_couch02) (1)
	CreateDynamicObject(1703,-336.65859985,-27.00909424,45.57374573,0.00000000,0.00000000,109.24987793); //object(kb_couch02) (2)
	CreateDynamicObject(3524,-345.15533447,-15.22465515,51.79587555,0.00000000,0.00000000,280.00000000); //object(skullpillar01_lvs) (1)
	CreateDynamicObject(3524,-342.80252075,-5.16975117,51.79587555,0.00000000,0.00000000,189.99755859); //object(skullpillar01_lvs) (2)
	CreateDynamicObject(3524,-342.37692261,-35.80785751,51.79587555,0.00000000,0.00000000,279.99755859); //object(skullpillar01_lvs) (3)
	CreateDynamicObject(3524,-337.74282837,-41.71685791,51.79587555,0.00000000,0.00000000,9.99206543); //object(skullpillar01_lvs) (4)
	CreateDynamicObject(1594,-335.91232300,-5.66713619,44.56247711,0.00000000,0.00000000,340.75000000); //object(chairsntable) (1)
	CreateDynamicObject(1594,-335.44100952,-10.14419079,44.56247711,0.00000000,0.00000000,28.74645996); //object(chairsntable) (2)
	CreateDynamicObject(2115,-343.58102417,-21.91686249,45.57374573,0.00000000,0.00000000,278.00000000); //object(low_dinning_1) (1)
	CreateDynamicObject(3524,-337.66333008,-14.28797340,51.79587555,0.00000000,0.00000000,99.99755859); //object(skullpillar01_lvs) (5)
	CreateDynamicObject(3524,-334.88760376,-34.67520905,51.79587555,0.00000000,0.00000000,99.99206543); //object(skullpillar01_lvs) (6)
	CreateDynamicObject(14476,-334.86318970,187.99789429,1927.20520020,0.00000000,0.00000000,0.00000000); //object(carlscrap) (1)
	CreateDynamicObject(2298,-336.77053833,183.50390625,1930.81457520,0.00000000,0.00000000,0.00000000); //object(swank_bed_7) (1)
	CreateDynamicObject(1764,-333.38583374,185.74482727,1927.21301270,0.00000000,0.00000000,186.00000000); //object(low_couch_2) (1)
	CreateDynamicObject(1764,-336.16802979,186.81031799,1927.23950195,0.00000000,0.00000000,95.99853516); //object(low_couch_2) (2)
	CreateDynamicObject(2311,-334.37905884,188.86505127,1927.21301270,0.00000000,0.00000000,276.00000000); //object(cj_tv_table2) (2)
	CreateDynamicObject(2296,-330.72583008,190.83711243,1927.21301270,0.00000000,0.00000000,270.00000000); //object(tv_unit_1) (2)
	CreateDynamicObject(1764,-335.85217285,190.53369141,1927.21752930,0.00000000,0.00000000,5.99304199); //object(low_couch_2) (3)
	CreateDynamicObject(1498,-333.97943115,182.13691711,1927.21301270,0.00000000,0.00000000,0.00000000); //object(gen_doorext03) (1)
	CreateDynamicObject(2876,-332.48748779,182.13031006,1927.05114746,0.00000000,0.00000000,0.00000000); //object(cj_pro_door_01) (1)
	CreateDynamicObject(2876,-332.48730469,182.12988281,1929.37744141,0.00000000,0.00000000,0.00000000); //object(cj_pro_door_01) (2)
	CreateDynamicObject(1498,-333.66006470,195.64198303,1927.21276855,0.00000000,0.00000000,0.00000000); //object(gen_doorext03) (3)
	CreateDynamicObject(2811,-337.72052002,193.13407898,1927.21301270,0.00000000,0.00000000,0.00000000); //object(gb_romanpot01) (1)
	CreateDynamicObject(2811,-337.93505859,182.93113708,1927.21301270,0.00000000,0.00000000,0.00000000); //object(gb_romanpot01) (2)
	CreateDynamicObject(2811,-331.12002563,184.83320618,1927.21301270,0.00000000,0.00000000,0.00000000); //object(gb_romanpot01) (3)
	CreateDynamicObject(2811,-330.85372925,187.94935608,1927.21301270,0.00000000,0.00000000,0.00000000); //object(gb_romanpot01) (4)
	CreateDynamicObject(1737,-336.29980469,182.88041687,1927.21301270,0.00000000,0.00000000,0.00000000); //object(med_dinning_5) (1)
	CreateDynamicObject(1734,-334.82391357,187.80992126,1930.68383789,0.00000000,0.00000000,0.00000000); //object(cj_mlight2) (1)
	CreateDynamicObject(2833,-337.26538086,186.83236694,1927.22363281,0.00000000,0.00000000,90.00000000); //object(gb_livingrug02) (1)
	CreateDynamicObject(2852,-335.35507202,182.83721924,1928.00842285,0.00000000,0.00000000,0.00000000); //object(gb_bedmags02) (1)
	CreateDynamicObject(2851,-336.21597290,182.81138611,1928.00842285,0.00000000,0.00000000,0.00000000); //object(gb_kitchdirt05) (1)
	CreateDynamicObject(1670,-334.31311035,188.41542053,1927.74353027,0.00000000,0.00000000,348.00000000); //object(propcollecttable) (1)
	CreateDynamicObject(1502,-337.28256226,181.33166504,1930.80761719,0.00000000,0.00000000,0.00000000); //object(gen_doorint04) (2)
	CreateDynamicObject(14638,-337.26852417,181.36001587,1933.30761719,0.00000000,0.00000000,270.00000000); //object(ab_mafsuitedoor) (2)
	CreateDynamicObject(14638,-335.75677490,178.25170898,1930.80761719,0.00000000,0.00000000,90.00000000); //object(ab_mafsuitedoor) (3)
	CreateDynamicObject(13028,-336.99880981,178.15917969,1932.72485352,0.00000000,0.00000000,270.25000000); //object(ce_spraydoor1) (1)
	CreateDynamicObject(2811,-329.05273438,179.03976440,1930.81457520,0.00000000,0.00000000,0.00000000); //object(gb_romanpot01) (6)
	CreateDynamicObject(2811,-338.18771362,179.02313232,1930.81457520,0.00000000,0.00000000,0.00000000); //object(gb_romanpot01) (7)
	CreateDynamicObject(2323,-332.63531494,182.77143860,1930.81457520,0.00000000,0.00000000,180.25000000); //object(cj_bedroom1) (1)
	CreateDynamicObject(2329,-336.88284302,182.08869934,1930.81457520,0.00000000,0.00000000,90.00000000); //object(low_cabinet_1_l) (2)
	CreateDynamicObject(2816,-337.46963501,186.37351990,1930.81457520,0.00000000,0.00000000,0.00000000); //object(gb_bedmags01) (1)
	CreateDynamicObject(2818,-336.96801758,178.75811768,1930.80761719,0.00000000,0.00000000,0.00000000); //object(gb_bedrug02) (1)
	CreateDynamicObject(2394,-337.93154907,182.61170959,1932.63366699,0.00000000,0.00000000,270.00000000); //object(cj_clothes_step_1) (1)
	CreateDynamicObject(2386,-332.47286987,181.72167969,1931.92541504,0.00000000,0.00000000,0.00000000); //object(cj_sweater_f_1) (1)
	CreateDynamicObject(2846,-334.77304077,182.76553345,1930.81457520,0.00000000,0.00000000,0.00000000); //object(gb_bedclothes05) (1)
	CreateDynamicObject(1481,-329.39904785,-19.09847832,46.25636292,0.00000000,0.00000000,0.00000000); //object(dyn_bar_b_q) (1)
	CreateDynamicObject(1255,-327.92962646,-27.42701340,46.12713623,0.00000000,0.00000000,124.00000000); //object(lounger) (2)
	CreateDynamicObject(1255,-328.19497681,-22.23535728,46.12713623,0.00000000,0.00000000,179.99719238); //object(lounger) (3)
	CreateDynamicObject(1255,-327.96203613,-24.53461456,46.12713623,0.00000000,0.00000000,193.99450684); //object(lounger) (4)
	CreateDynamicObject(14384,-273.71051025,172.77384949,1908.72473145,0.00000000,0.00000000,90.00000000); //object(kitchen_bits) (1)
	CreateDynamicObject(14471,-272.29342651,172.68186951,1908.96655273,0.00000000,0.00000000,0.00000000); //object(carls_moms_kit2) (1)
	CreateDynamicObject(8403,-260.42843628,160.30120850,1911.76159668,0.00000000,0.00000000,270.00000000); //object(shop03_lvs) (1)
	CreateDynamicObject(8403,-285.91616821,160.56536865,1911.76159668,0.00000000,0.00000000,180.00000000); //object(shop03_lvs) (2)
	CreateDynamicObject(8403,-281.30661011,185.11625671,1911.76159668,0.00000000,0.00000000,89.99450684); //object(shop03_lvs) (3)
	CreateDynamicObject(11389,2287.69335938,1315.31347656,13.03408432,0.00000000,0.00000000,0.00000000); //object(hubinterior_sfs) (1)

	// House 63 Objects -- Nashtel
	CreateDynamicObject(7191,2158.17382812,-1829.62292480,15.39672375,0.00000000,0.00000000,90.00000000); //object(vegasnnewfence2b) (1)
	CreateDynamicObject(1343,2193.41308594,-1880.27136230,14.50646210,0.00000000,0.00000000,0.00000000); //object(cj_dumpster3) (2)
	CreateDynamicObject(1343,2194.75195312,-1879.72387695,14.19707584,278.71987915,0.00000000,322.28530884); //object(cj_dumpster3) (3)
	CreateDynamicObject(997,2191.97924805,-1766.88952637,12.42531872,0.00000000,0.00000000,0.00000000); //object(lhouse_barrier3) (1)
	CreateDynamicObject(967,2180.88110352,-1766.89282227,12.37761784,0.00000000,0.00000000,90.00000000); //object(bar_gatebox01) (1)
	CreateDynamicObject(966,2181.89062500,-1766.87854004,12.36710358,0.00000000,0.00000000,180.00000000); //object(bar_gatebar01) (1)
	CreateDynamicObject(997,2188.87817383,-1766.88842773,12.42531872,0.00000000,0.00000000,0.00000000); //object(lhouse_barrier3) (1)
	CreateDynamicObject(997,2176.89428711,-1766.19262695,12.42531872,0.00000000,0.00000000,0.00000000); //object(lhouse_barrier3) (1)

	// SaC Parking lot
	CreateDynamicObject(6976, 651.18, -1783.69, 13.43,   0.00, 0.00, 75.58);
	CreateDynamicObject(5422, 654.65, -1788.00, 13.39,   0.00, 0.00, 74.61);
	CreateDynamicObject(5422, 669.07, -1791.92, 13.39,   0.00, 0.00, 75.14);
	CreateDynamicObject(16773, 663.68, -1790.39, 12.49,   0.00, 0.00, -14.97);
	CreateDynamicObject(8042, 661.04, -1790.28, 14.0,   0.00, 0.00, -88.77);
	CreateDynamicObject(10829, 662.69, -1778.74, 17.90,   0.00, 0.00, -15.11);
	CreateDynamicObject(10829, 677.31, -1782.72, 17.90,   0.00, 0.00, -15.11);
	CreateDynamicObject(10829, 691.85, -1786.64, 17.90,   0.00, 0.00, -15.11);
	CreateDynamicObject(10829, 720.86, -1794.46, 17.90,   0.00, 0.00, -15.11);
	CreateDynamicObject(3934, 707.37, -1790.82, 21.34,   0.00, 0.00, 75.00);
	CreateDynamicObject(3934, 721.89, -1794.69, 21.34,   0.00, 0.00, 75.00);
	CreateDynamicObject(3934, 663.70, -1778.90, 21.34,   0.00, 0.00, 75.00);
	CreateDynamicObject(3928, 673.39, -1782.46, 21.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3928, 674.13, -1782.39, 21.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3934, 678.35, -1782.92, 21.34,   0.00, 0.00, 75.00);
	CreateDynamicObject(3934, 692.87, -1786.84, 21.34,   0.00, 0.00, 75.00);
	CreateDynamicObject(10829, 706.39, -1790.56, 17.90,   0.00, 0.00, -15.11);

	CreateDynamicObject(7294, 535.78, -1640.55, (-36.21 + 1100.00),   0.00, 0.00, 180.00);
	CreateDynamicObject(16773, 581.84, -1643.14, (-41.45 + 1100.00),   0.00, 0.00, 90.00);
	CreateDynamicObject(1566, 556.56, -1597.24, (-42.35 + 1100.00),   0.00, 0.00, 90.00);
	CreateDynamicObject(967, 573.17, -1647.67, (-43.82 + 1100.00),   0.00, 0.00, 180.00);
	CreateDynamicObject(978, 576.73, -1637.92, (-42.99 + 1100.00),   0.00, 0.00, 360.00);
	CreateDynamicObject(1237, 559.11, -1598.20, (-43.87 + 1100.00),   0.00, 0.00, 0.00);
	CreateDynamicObject(1966, 556.35, -1594.95, (-41.22 + 1100.00),   0.00, 0.00, 270.00);
	CreateDynamicObject(1966, 556.34, -1588.10, (-41.22 + 1100.00),   0.00, 0.00, 90.00);
	CreateDynamicObject(978, 576.74, -1637.92, (-42.99 + 1100.00),   0.00, 0.00, 180.00);
	CreateDynamicObject(978, 576.73, -1646.40, (-42.99 + 1100.00),   0.00, 0.00, 360.00);
	CreateDynamicObject(978, 576.72, -1646.40, (-42.99 + 1100.00),   0.00, 0.00, 180.00);
	CreateDynamicObject(1237, 562.06, -1596.15, (-43.87 + 1100.00),   0.00, 0.00, 35.64);
	CreateDynamicObject(1237, 563.41, -1592.63, (-43.87 + 1100.00),   0.00, 0.00, 82.59);
	CreateDynamicObject(1237, 562.73, -1589.08, (-43.87 + 1100.00),   0.00, 0.00, 129.83);
	CreateDynamicObject(7294, 535.77, -1640.55, (-57.60 + 1100.00),   0.00, 0.00, 180.00);

	CreateDynamicObject(7244, 530.95, -1627.13, (-45.26 + 1100.00),   0.00, 0.00, 0.00);
	CreateDynamicObject(7184, 513.42, -1599.29, (-34.06 + 1100.00),   0.00, 0.00, 90.00);

	// SaC HQ OBJECTS
	CreateDynamicObject(14444, -2661.95, 1528.05, 906.00,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(14447, -2644.22, 1537.72, 910.93,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1598, -2649.97, 1533.54, 906.42,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(14414, -2634.17, 1526.28, 902.96,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(14448, -2645.51, 1536.64, 914.56,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(14415, -2661.91, 1528.02, 906.00,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(14780, -2644.73, 1521.12, 906.85,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(14782, -2637.52, 1515.62, 907.10,   0.00, 0.00, -180.00, 123015);
	CreateDynamicObject(2527, -2631.79, 1535.18, 910.50,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(2527, -2631.79, 1536.60, 910.50,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(2527, -2631.79, 1538.00, 910.50,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(2527, -2631.79, 1539.50, 910.50,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(2518, -2635.11, 1535.05, 910.68,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2518, -2634.11, 1535.07, 910.68,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2518, -2633.11, 1535.03, 910.68,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2628, -2650.58, 1540.87, 906.18,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2628, -2648.58, 1540.87, 906.18,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2628, -2646.58, 1540.87, 906.18,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2627, -2640.54, 1540.00, 910.53,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2627, -2642.50, 1540.00, 910.53,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2627, -2644.50, 1540.00, 910.53,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2627, -2638.50, 1540.00, 910.53,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2630, -2653.05, 1536.57, 906.28,   0.00, 0.00, -34.93, 123015);
	CreateDynamicObject(2630, -2655.00, 1536.57, 906.28,   0.00, 0.00, -34.93, 123015);
	CreateDynamicObject(2630, -2657.00, 1536.57, 906.28,   0.00, 0.00, -34.93, 123015);
	CreateDynamicObject(2629, -2642.50, 1541.05, 906.18,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2629, -2640.50, 1541.05, 906.18,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2629, -2638.50, 1541.05, 906.18,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2632, -2641.73, 1530.98, 906.18,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2632, -2644.73, 1530.98, 906.18,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2660, -2640.09, 1531.48, 907.86,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(16779, -2646.75, 1527.41, 912.72,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(16779, -2646.65, 1519.33, 912.72,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(16779, -2642.56, 1523.28, 912.72,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2700, -2641.52, 1541.51, 913.10,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(2700, -2643.52, 1541.51, 913.10,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(2700, -2639.52, 1541.51, 913.10,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(1514, -2652.65, 1525.08, 907.45,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1514, -2655.28, 1527.99, 907.45,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2362, -2652.18, 1524.12, 907.23,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2362, -2654.52, 1528.39, 907.23,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2002, -2637.15, 1524.06, 906.17,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(3497, -2636.95, 1525.86, 909.84,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2452, -2658.27, 1524.05, 906.15,   0.00, 0.00, 89.97, 123015);
	CreateDynamicObject(2657, -2651.40, 1539.22, 908.34,   0.00, -90.00, 90.00, 123015);
	CreateDynamicObject(2697, -2644.83, 1515.30, 908.73,   0.00, -71.00, 180.00, 123015);
	CreateDynamicObject(2661, -2651.65, 1521.22, 907.91,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2657, -2651.65, 1521.28, 909.46,   0.00, -26.00, 90.00, 123015);
	CreateDynamicObject(2655, -2658.60, 1522.69, 907.89,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2697, -2658.60, 1527.60, 909.51,   0.00, -94.00, 90.00, 123015);
	CreateDynamicObject(2660, -2660.02, 1531.31, 907.86,   0.00, 6.00, 180.00, 123015);
	CreateDynamicObject(2697, -2636.66, 1537.25, 913.33,   0.00, -90.00, -90.00, 123015);
	CreateDynamicObject(2661, -2636.67, 1528.95, 909.14,   0.00, 20.00, -90.00, 123015);
	CreateDynamicObject(2404, -2667.58, 1536.03, 908.10,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2406, -2652.37, 1522.00, 909.29,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2625, -2658.28, 1527.65, 907.47,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2404, -2658.37, 1526.34, 908.15,   -8.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2405, -2658.37, 1527.66, 908.15,   -8.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2410, -2658.38, 1528.96, 908.15,   0.00, 81.00, 0.00, 123015);
	CreateDynamicObject(2625, -2667.20, 1533.81, 907.13,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2654, -2666.93, 1536.06, 906.38,   0.00, 0.00, 1.67, 123015);
	CreateDynamicObject(2371, -2654.96, 1519.76, 906.15,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2462, -2658.57, 1521.73, 906.72,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2699, -2664.30, 1537.01, 906.78,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2383, -2654.68, 1515.62, 906.93,   0.00, -12.00, 90.00, 123015);
	CreateDynamicObject(2381, -2655.57, 1519.47, 906.83,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2373, -2668.01, 1532.90, 907.84,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2388, -2639.23, 1535.01, 910.50,   180.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2476, -2658.48, 1521.63, 908.50,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2400, -2654.79, 1515.34, 906.39,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2620, -2664.37, 1537.02, 908.16,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2624, -2665.46, 1539.04, 907.70,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2406, -2655.51, 1515.41, 908.60,   -18.00, 90.00, 180.00, 123015);
	CreateDynamicObject(2405, -2656.79, 1515.55, 907.36,   -76.00, 90.00, 180.00, 123015);
	CreateDynamicObject(2389, -2655.27, 1515.63, 907.77,   -13.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2654, -2666.57, 1541.32, 906.77,   0.00, 0.00, -269.33, 123015);
	CreateDynamicObject(2654, -2667.23, 1540.69, 907.00,   0.00, 0.00, -177.69, 123015);
	CreateDynamicObject(2705, -2664.02, 1536.31, 906.88,   0.00, 0.00, 107.43, 123015);
	CreateDynamicObject(2706, -2663.66, 1536.61, 906.88,   0.00, 0.00, 134.66, 123015);
	CreateDynamicObject(2705, -2664.60, 1536.33, 906.88,   0.00, 0.00, 89.54, 123015);
	CreateDynamicObject(2706, -2663.58, 1537.25, 906.88,   0.00, 0.00, 181.60, 123015);
	CreateDynamicObject(2706, -2663.93, 1537.70, 906.88,   0.00, 0.00, 241.56, 123015);
	CreateDynamicObject(2389, -2667.30, 1532.84, 909.23,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2396, -2667.29, 1534.21, 908.35,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2389, -2667.30, 1533.53, 909.23,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2396, -2667.30, 1534.81, 908.35,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2372, -2661.04, 1541.50, 906.15,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2381, -2661.69, 1541.28, 906.83,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1985, -2639.46, 1535.23, 909.10,   0.00, 0.00, -124.24, 123015);
	CreateDynamicObject(14782, -2651.14, 1515.60, 907.10,   0.00, 0.00, -180.00, 123015);
	CreateDynamicObject(942, -2662.59, 1524.09, 908.45,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1441, -2660.39, 1528.25, 906.84,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(2654, -2664.21, 1525.91, 906.38,   0.00, 0.00, 58.14, 123015);
	CreateDynamicObject(2410, -2665.25, 1528.92, 907.39,   0.00, 81.00, 0.00, 123015);
	CreateDynamicObject(2410, -2665.25, 1529.60, 907.39,   0.00, 81.00, 0.00, 123015);
	CreateDynamicObject(2654, -2661.16, 1523.96, 909.83,   0.00, 0.00, 316.12, 123015);
	CreateDynamicObject(2654, -2663.59, 1524.22, 909.83,   0.00, 0.00, 424.07, 123015);
	CreateDynamicObject(941, -2656.24, 1522.04, 900.27,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(954, -2669.68, 1515.74, 903.29,   0.00, 90.00, 90.00, 123015);
	CreateDynamicObject(954, -3321.75, 1517.44, 902.79,   0.00, -90.00, 90.00, 123015);
	CreateDynamicObject(954, -2669.67, 1517.66, 903.09,   0.00, 90.00, 90.00, 123015);
	CreateDynamicObject(954, -2669.68, 1515.82, 902.89,   0.00, -90.00, 90.00, 123015);
	CreateDynamicObject(14441, -2659.00, 1545.89, 903.58,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(14441, -2652.50, 1545.89, 903.58,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(14441, -2646.00, 1545.89, 903.58,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(14441, -2659.00, 1550.00, 903.58,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(14441, -2652.50, 1550.00, 903.58,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(14441, -2646.00, 1550.00, 903.58,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(14441, -2646.99, 1509.35, 903.58,   0.00, 0.00, -270.00, 123015);
	CreateDynamicObject(14441, -2654.00, 1509.35, 903.58,   0.00, 0.00, -270.00, 123015);
	CreateDynamicObject(14441, -2659.99, 1509.35, 903.58,   0.00, 0.00, -270.00, 123015);
	CreateDynamicObject(14441, -2646.99, 1505.00, 903.58,   0.00, 0.00, -270.00, 123015);
	CreateDynamicObject(14441, -2654.00, 1505.00, 903.58,   0.00, 0.00, -270.00, 123015);
	CreateDynamicObject(14441, -2659.99, 1505.00, 903.58,   0.00, 0.00, -270.00, 123015);
	CreateDynamicObject(941, -2658.59, 1522.04, 900.27,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1578, -2656.86, 1522.38, 900.73,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1578, -2656.29, 1522.24, 900.73,   0.00, 0.00, -22.35, 123015);
	CreateDynamicObject(1578, -2659.12, 1521.82, 900.73,   0.00, 0.00, -36.84, 123015);
	CreateDynamicObject(1578, -2658.86, 1522.32, 900.73,   0.00, 0.00, 79.62, 123015);
	CreateDynamicObject(1578, -2658.86, 1522.32, 900.87,   0.00, 0.00, 79.62, 123015);
	CreateDynamicObject(1578, -2658.86, 1522.32, 901.00,   0.00, 0.00, 79.62, 123015);
	CreateDynamicObject(1578, -2658.86, 1522.32, 901.14,   0.00, 0.00, 79.62, 123015);
	CreateDynamicObject(1220, -2657.67, 1522.02, 901.07,   0.00, 0.00, 27.19, 123015);
	CreateDynamicObject(1220, -2660.06, 1521.92, 900.13,   0.00, 0.00, 27.19, 123015);
	CreateDynamicObject(941, -2659.21, 1532.35, 900.27,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1578, -2655.77, 1532.25, 900.73,   0.00, 0.00, -22.35, 123015);
	CreateDynamicObject(1220, -2657.83, 1532.38, 901.07,   0.00, 0.00, 27.19, 123015);
	CreateDynamicObject(941, -2656.85, 1532.35, 900.27,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1578, -2656.53, 1532.08, 900.73,   0.00, 0.00, -5.72, 123015);
	CreateDynamicObject(1578, -2659.62, 1532.09, 900.73,   0.00, 0.00, -5.72, 123015);
	CreateDynamicObject(1578, -2659.67, 1532.67, 900.73,   0.00, 0.00, 21.47, 123015);
	CreateDynamicObject(1578, -2658.82, 1532.08, 900.73,   0.00, 0.00, -5.72, 123015);
	CreateDynamicObject(1578, -2658.82, 1532.08, 900.82,   0.00, 0.00, -5.72, 123015);
	CreateDynamicObject(1220, -2654.70, 1532.42, 900.13,   0.00, 0.00, 27.19, 123015);
	CreateDynamicObject(1220, -2661.85, 1532.62, 900.13,   0.00, 0.00, -0.37, 123015);
	CreateDynamicObject(1220, -2660.99, 1532.22, 900.13,   0.00, 0.00, -95.05, 123015);
	CreateDynamicObject(1220, -2661.52, 1532.25, 900.81,   0.00, 0.00, -53.41, 123015);
	CreateDynamicObject(18044, -2683.12, 1519.16, 901.42,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(18105, -2680.55, 1516.54, 901.73,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(2388, -2680.42, 1521.52, 903.57,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2388, -2681.40, 1521.52, 903.57,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2388, -2680.42, 1521.04, 905.93,   180.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2388, -2681.40, 1521.04, 905.93,   180.00, 0.00, 0.00, 123015);
	CreateDynamicObject(941, -2682.81, 1522.70, 900.20,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(941, -2685.75, 1520.22, 900.22,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(941, -2685.75, 1522.42, 900.22,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(941, -2683.12, 1515.32, 900.28,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(941, -2678.82, 1515.36, 900.28,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(941, -2682.23, 1515.32, 900.28,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(941, -2677.93, 1515.36, 900.28,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2291, -2674.49, 1528.73, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2292, -2674.48, 1527.31, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2296, -2670.47, 1530.77, 899.81,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(2231, -2670.08, 1531.70, 902.29,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(14415, -2661.91, 1528.02, 906.00,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2230, -2670.16, 1531.15, 899.83,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(2230, -2670.18, 1527.80, 899.83,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(2231, -2670.13, 1527.39, 902.29,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(2291, -2674.49, 1529.66, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2291, -2674.50, 1530.60, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2291, -2674.51, 1531.53, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2292, -2674.53, 1532.97, 899.83,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2291, -2674.05, 1532.97, 899.83,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2291, -2673.09, 1532.98, 899.83,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2292, -2671.65, 1533.01, 899.83,   0.00, 0.00, 270.00, 123015);
	CreateDynamicObject(2291, -2674.50, 1527.75, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1491, -2654.10, 1531.31, 899.82,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1491, -2651.08, 1531.34, 899.82,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(1491, -2654.11, 1523.16, 899.82,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1491, -2654.10, 1523.16, 899.82,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(1491, -2651.08, 1523.17, 899.82,   0.00, 0.00, 180.00, 123015);
	CreateDynamicObject(1536, -2691.23, 1534.24, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1536, -2691.27, 1537.26, 899.83,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(14415, -2661.91, 1528.02, 906.00,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(2207, -2688.82, 1534.85, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1964, -2689.47, 1536.29, 900.72,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2004, -2684.93, 1539.33, 901.11,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(14415, -2661.91, 1528.02, 906.00,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1721, -2687.39, 1534.75, 899.83,   0.00, 0.00, 66.00, 123015);
	CreateDynamicObject(1721, -2687.44, 1536.81, 899.83,   0.00, 0.00, 122.00, 123015);
	CreateDynamicObject(1721, -2686.14, 1534.73, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1721, -2686.14, 1536.70, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1721, -2686.14, 1537.27, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1721, -2686.14, 1534.15, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(14813, -2667.54, 1533.43, 900.30,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1823, -2671.98, 1530.16, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1823, -2671.98, 1529.00, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1823, -2671.98, 0.00, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1823, -2671.98, 1527.84, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2852, -2672.50, 1530.60, 900.30,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1721, -2684.90, 1536.69, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1721, -2684.90, 1537.27, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1721, -2684.90, 1534.73, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1721, -2684.90, 1534.15, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2811, -2683.02, 1537.52, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2811, -2683.02, 1533.96, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(16779, -2686.42, 1535.72, 905.83,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1491, -2682.27, 1534.24, 899.83,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1491, -2682.29, 1537.26, 899.83,   0.00, 0.00, -90.00, 123015);
	CreateDynamicObject(1714, -2690.89, 1535.79, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2681, -2681.70, 1526.10, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2779, -2681.69, 1527.17, 899.80,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2785, -2681.79, 1530.00, 900.67,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(2964, -2677.80, 1531.00, 899.75,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(3004, -2677.54, 1530.48, 900.65,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(3003, -2677.66, 1530.93, 900.69,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(3000, -2678.21, 1530.23, 900.69,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(15038, -2657.99, 1523.76, 900.43,   0.00, 0.00, -345.86, 123015);
	CreateDynamicObject(15038, -2657.99, 1530.70, 900.43,   0.00, 0.00, -345.86, 123015);
	CreateDynamicObject(15038, -2647.39, 1523.79, 900.43,   0.00, 0.00, -345.86, 123015);
	CreateDynamicObject(15038, -2647.39, 1530.70, 900.43,   0.00, 0.00, -345.86, 123015);
	CreateDynamicObject(14813, -2640.69, 1523.56, 900.30,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1536, -2636.58, 1537.09, 906.17,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(954, -2669.67, 1516.70, 903.09,   0.00, 180.00, 90.00, 123015);
	CreateDynamicObject(954, -2669.74, 1516.70, 903.20,   175.00, 180.00, 90.00, 123015);
	CreateDynamicObject(954, -2691.15, 1534.79, 903.29,   0.00, 90.00, 90.00, 123015);
	CreateDynamicObject(954, -2691.15, 1534.87, 902.91,   0.00, -90.00, 90.00, 123015);
	CreateDynamicObject(954, -2691.15, 1535.83, 903.09,   0.00, 180.00, 90.00, 123015);
	CreateDynamicObject(954, -2691.24, 1535.83, 903.20,   175.00, 180.00, 90.00, 123015);
	CreateDynamicObject(954, -2691.15, 1536.82, 903.09,   0.00, 90.00, 90.00, 123015);
	CreateDynamicObject(14463, -2669.77, 1553.58, 902.75,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1541, -2674.60, 1540.22, 901.27,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1541, -2678.26, 1540.21, 901.27,   0.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1520, -2677.24, 1539.55, 901.13,   0.00, 0.00, -22.03, 123015);
	CreateDynamicObject(1517, -2677.55, 1539.56, 901.28,   0.00, 0.00, 27.56, 123015);
	CreateDynamicObject(14565, -2683.53, 1542.83, 902.07,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(14565, -2683.53, 1542.83, 902.99,   0.00, 0.00, 90.00, 123015);
	CreateDynamicObject(1520, -2673.07, 1541.18, 901.13,   0.00, 0.00, 36.20, 123015);
	CreateDynamicObject(1517, -2673.29, 1539.89, 901.28,   0.00, 0.00, 27.56, 123015);
	CreateDynamicObject(2388, -2637.30, 1535.01, 910.50,   180.00, 0.00, 0.00, 123015);
	CreateDynamicObject(1985, -2637.54, 1535.24, 909.10,   0.00, 0.00, -124.24, 123015);

	/* Custom Coding Project Mikhail_2753 */
	CreateDynamicObject(14858, 258.28, -9.74, 1036.88,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(14853, 278.45, -10.28, 1036.88,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 267.63, 8.56, 1036.88,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(1649, 258.38, 4.88, 1038.54,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1649, 258.38, 4.88, 1041.84,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(1649, 262.79, 4.88, 1038.54,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(1649, 262.79, 4.88, 1041.84,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 267.63, 12.29, 1036.88,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(2395, 267.63, 14.52, 1036.88,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(2395, 267.63, 14.52, 1039.59,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(2395, 267.63, 12.29, 1039.59,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(2395, 267.63, 8.56, 1039.59,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(5737, 274.25, -7.91, 1035.37,   270.00, 180.00, 270.00, .worldid = 1);
	CreateDynamicObject(1649, 267.13, 4.88, 1041.84,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1649, 267.13, 4.88, 1038.54,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1649, 258.38, 4.88, 1038.54,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(1649, 258.38, 4.88, 1041.84,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1649, 262.79, 4.88, 1038.54,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1649, 262.79, 4.88, 1041.84,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(1649, 267.13, 4.88, 1041.84,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(1649, 267.13, 4.88, 1038.54,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(3037, 229.59, -18.19, 1033.93,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(3037, 225.89, 3.69, 1033.94,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3037, 262.73, 20.50, 1039.08,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(14855, 244.70, -14.51, 1036.23,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1491, 230.74, 2.79, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1491, 235.96, 2.79, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 232.73, 2.69, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 227.50, -34.01, 1031.74,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(2395, 232.73, 2.69, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1491, 222.77, -34.10, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 235.50, 2.91, 1031.74,   0.00, 0.00, 179.99, .worldid = 1);
	CreateDynamicObject(2395, 227.05, -1.26, 1031.73,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(2395, 224.30, -1.38, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3037, 237.88, -22.68, 1033.93,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(18070, 266.60, 11.04, 1037.12,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1744, 264.26, 15.02, 1038.23,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1744, 264.26, 15.01, 1038.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1726, 259.37, 8.31, 1036.88,   0.00, 0.00, 248.00, .worldid = 1);
	CreateDynamicObject(1726, 259.36, 11.80, 1036.88,   0.00, 0.00, 284.00, .worldid = 1);
	CreateDynamicObject(2313, 256.70, 8.45, 1036.88,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(1792, 256.41, 8.94, 1037.38,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(2231, 256.50, 7.94, 1036.88,   0.00, 0.00, 82.00, .worldid = 1);
	CreateDynamicObject(2231, 256.41, 10.93, 1036.88,   0.00, 0.00, 98.00, .worldid = 1);
	CreateDynamicObject(1839, 256.65, 9.97, 1037.38,   0.00, 0.00, 178.00, .worldid = 1);
	CreateDynamicObject(1486, 263.91, 14.74, 1039.21,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1486, 264.41, 14.76, 1039.21,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1486, 264.66, 14.71, 1039.21,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1486, 265.16, 14.75, 1039.21,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1669, 264.26, 14.66, 1038.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1669, 264.76, 14.63, 1038.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2147, 267.07, 12.21, 1036.88,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(16780, 259.41, 10.42, 1041.21,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1776, 258.66, 14.72, 1037.98,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2964, 263.95, 7.22, 1036.88,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2965, 263.85, 7.21, 1037.80,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3106, 263.93, 7.22, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3105, 263.86, 7.22, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3100, 263.77, 7.22, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3103, 263.89, 7.30, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3104, 263.90, 7.14, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3103, 263.97, 7.34, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3105, 264.01, 7.27, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3100, 264.02, 7.17, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3003, 264.00, 7.09, 1037.81,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3004, 263.09, 6.88, 1037.77,   0.00, 0.00, 280.00, .worldid = 1);
	CreateDynamicObject(3004, 263.10, 7.38, 1037.77,   0.00, 0.00, 282.00, .worldid = 1);
	CreateDynamicObject(638, 261.81, -10.15, 1032.43,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(638, 242.22, -29.62, 1032.43,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(3515, 259.48, -16.02, 1031.71,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1723, 248.54, -5.52, 1031.73,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(1723, 255.44, 4.13, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(638, 261.88, -20.79, 1032.43,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(14782, 223.37, -14.81, 1032.75,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(14780, 233.73, -14.71, 1032.30,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2628, 224.30, -10.31, 1031.73,   0.00, 0.00, 88.00, .worldid = 1);
	CreateDynamicObject(2628, 224.27, -8.81, 1031.73,   0.00, 0.00, 87.99, .worldid = 1);
	CreateDynamicObject(2627, 224.00, -3.69, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2627, 225.27, -3.57, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2631, 234.44, -3.88, 1031.71,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2631, 234.44, -7.12, 1031.71,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2630, 227.32, -17.15, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1808, 229.88, -1.75, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2330, 232.26, 9.32, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1794, 228.28, 7.27, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2204, 227.73, 3.41, 1031.74,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(1726, 233.21, 6.83, 1031.74,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(2239, 230.73, 10.18, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(14455, 237.45, 7.24, 1033.41,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(2290, 234.84, 7.79, 1031.74,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(2239, 234.79, 6.80, 1031.74,   0.00, 0.00, 126.00, .worldid = 1);
	CreateDynamicObject(1724, 235.36, 5.25, 1031.74,   0.00, 0.00, 114.00, .worldid = 1);
	CreateDynamicObject(2395, 233.39, -1.29, 1031.73,   0.00, 0.00, 180.00, .worldid = 1);
	CreateDynamicObject(2184, 227.86, -29.06, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2190, 229.36, -28.93, 1032.51,   0.00, 0.00, 186.00, .worldid = 1);
	CreateDynamicObject(1714, 229.20, -27.58, 1031.73,   0.00, 0.00, 2.00, .worldid = 1);
	CreateDynamicObject(2047, 223.01, -26.05, 1034.76,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1744, 228.52, -26.05, 1033.03,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2164, 226.59, -33.06, 1031.73,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(1726, 230.97, -30.05, 1031.73,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(2186, 230.15, -26.50, 1031.73,   0.00, 0.00, 2.00, .worldid = 1);
	CreateDynamicObject(16780, 228.83, -28.96, 1035.46,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2287, 227.15, -29.69, 1032.99,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(5737, 254.68, -38.16, 1035.37,   270.00, 179.99, 180.00, .worldid = 1);
	CreateDynamicObject(2190, 246.45, -18.42, 1032.73,   0.00, 0.00, 216.00, .worldid = 1);
	CreateDynamicObject(1714, 245.39, -17.24, 1031.73,   0.00, 0.00, 52.00, .worldid = 1);
	CreateDynamicObject(1714, 245.72, -16.01, 1031.73,   0.00, 0.00, 76.00, .worldid = 1);
	CreateDynamicObject(2200, 241.82, -14.11, 1031.73,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(11631, 224.28, -26.71, 1032.98,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1714, 224.86, -27.62, 1031.73,   0.00, 0.00, 166.00, .worldid = 1);
	CreateDynamicObject(2047, 229.03, -26.05, 1034.70,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2301, 221.97, -29.66, 1031.73,   0.00, 0.00, 2.00, .worldid = 1);
	CreateDynamicObject(1491, 227.51, -1.35, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 224.77, -34.17, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2836, 228.86, -31.23, 1031.73,   0.00, 0.00, 30.00, .worldid = 1);
	CreateDynamicObject(2836, 224.31, -30.24, 1031.73,   0.00, 0.00, 52.00, .worldid = 1);
	CreateDynamicObject(2841, 229.92, 6.09, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 232.44, -34.15, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1723, 239.49, 6.04, 1031.74,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(1723, 244.78, 3.97, 1031.74,   0.00, 0.00, 270.00, .worldid = 1);
	CreateDynamicObject(1536, 268.26, -0.74, 1031.73,   0.00, 0.00, 90.00, .worldid = 1);
	CreateDynamicObject(2001, 267.85, -1.21, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2001, 267.81, 1.29, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);
	CreateDynamicObject(2395, 229.85, -1.43, 1031.73,   0.00, 0.00, 0.00, .worldid = 1);

	/* House Exterior for Seider/Gears (added by Christian) */
	CreateDynamicObject(4892,1264.00,125.00,21.70,358.00,2.00,80.00); //object(kbsgarage2_las) (2)

	/* Garage Doors for Arturo_McJohnson (added by Christian) */
	CreateDynamicObject(16773,1519.9399414,-1916.9599609,17.1599998,0.00,0.00,90.00); //object(door_savhangr1)
	CreateDynamicObject(17564,1436.3499756,-1905.3000488,14.1999998,0.00,0.00,90.00); //object(tempdoor_lae2)

	//Brant's House (Devin approved it, who the fuck knows)
	CreateDynamicObject(3353,-1272.3994141,-2057.7998047,21.7999992,0.0000000,0.0000000,330.9906006); //object(sw_bigburbsave2) (1)
	CreateDynamicObject(13694,-1256.0000000,-2032.0000000,8.3000002,0.0000000,0.0000000,241.9958496); //object(cehillhse13) (1)
	CreateDynamicObject(13694,-1256.0000000,-2032.0000000,15.1000004,0.0000000,0.0000000,241.9958496); //object(cehillhse13) (3)
	CreateDynamicObject(1506,-1278.0999756,-2060.2299805,22.5000000,0.0000000,0.0000000,331.7500000); //object(gen_doorext08) (1)
	CreateDynamicObject(3361,-1215.0000000,-2018.3000488,4.5000000,0.0000000,0.0000000,333.5000000); //object(cxref_woodstair) (1)
	CreateDynamicObject(3498,-1245.0000000,-2026.8000488,19.2999992,0.0000000,0.0000000,0.0000000); //object(wdpillar01_lvs) (1)
	CreateDynamicObject(3498,-1257.3000488,-2019.8000488,19.3999996,0.0000000,0.0000000,0.0000000); //object(wdpillar01_lvs) (2)
	CreateDynamicObject(3498,-1257.3000488,-2019.8000488,10.3999996,0.0000000,0.0000000,0.0000000); //object(wdpillar01_lvs) (3)
	CreateDynamicObject(3498,-1245.0000000,-2026.8000488,10.3000002,0.0000000,0.0000000,0.0000000); //object(wdpillar01_lvs) (4)
	CreateDynamicObject(9829,-1268.5000000,-2057.5000000,-56.2000008,0.0000000,0.0000000,243.4954834); //object(bumblister_sfw) (1)
	CreateDynamicObject(3361,-1251.0000000,-2038.1992188,18.3999996,0.0000000,0.0000000,241.9958496); //object(cxref_woodstair) (2)
	CreateDynamicObject(3406,-1209.5000000,-2016.6999512,0.4000000,0.0000000,0.0000000,63.7500000); //object(cxref_woodjetty) (1)
	CreateDynamicObject(3406,-1205.5999756,-2008.8000488,0.4000000,0.0000000,0.0000000,63.7481689); //object(cxref_woodjetty) (2)
	CreateDynamicObject(3406,-1205.9000244,-2022.6999512,0.4000000,0.0000000,0.0000000,333.7481689); //object(cxref_woodjetty) (3)
	CreateDynamicObject(3406,-1199.8000488,-2021.4000244,0.4000000,0.0000000,0.0000000,63.7481689); //object(cxref_woodjetty) (4)
	CreateDynamicObject(3406,-1195.9000244,-2013.5000000,0.4000000,0.0000000,0.0000000,63.7481689); //object(cxref_woodjetty) (5)
	CreateDynamicObject(9241,-1233.9000244,-2007.4000244,8.3000002,0.0000000,0.0000000,63.7500000); //object(copbits_sfn) (1)
	CreateDynamicObject(2096,-1281.5000000,-2059.3999023,22.5000000,0.0000000,0.0000000,0.0000000); //object(cj_rockingchair) (1)
	CreateDynamicObject(2096,-1280.1999512,-2060.1999512,22.5000000,0.0000000,0.0000000,300.0000000); //object(cj_rockingchair) (2)
	CreateDynamicObject(1481,-1269.5000000,-2045.9000244,23.1000004,0.0000000,0.0000000,330.0000000); //object(dyn_bar_b_q) (1)
	CreateDynamicObject(2103,-1280.5999756,-2059.3999023,22.5000000,0.0000000,0.0000000,330.0000000); //object(low_hi_fi_1) (1)
	CreateDynamicObject(3877,-1240.3000488,-1986.9000244,10.6999998,0.0000000,0.0000000,334.0000000); //object(sf_rooflite) (1)
	CreateDynamicObject(3877,-1213.0000000,-2000.5000000,10.6999998,0.0000000,0.0000000,333.9953613); //object(sf_rooflite) (2)
	CreateDynamicObject(3361,-1268.5999756,-2042.3000488,21.8999996,0.0000000,0.0000000,241.7458496); //object(cxref_woodstair) (2)
	CreateDynamicObject(1498,-1260.8000488,-2030.0000000,17.2000008,0.0000000,0.0000000,332.0000000); //object(gen_doorext03) (1)
	CreateDynamicObject(16780,-1249.5000000,-2028.0999756,20.1000004,0.0000000,0.0000000,0.0000000); //object(ufo_light03) (1)
	CreateDynamicObject(16780,-1255.4000244,-2024.6999512,20.1000004,0.0000000,0.0000000,0.0000000); //object(ufo_light03) (2)
	CreateDynamicObject(1645,-1255.5999756,-2023.5999756,24.2999992,0.0000000,0.0000000,188.0000000); //object(lounge_wood_up) (1)
	CreateDynamicObject(1645,-1253.5999756,-2024.4000244,24.2999992,0.0000000,0.0000000,187.9980469); //object(lounge_wood_up) (2)
	CreateDynamicObject(1756,-1251.8000488,-2030.0000000,17.2000008,0.0000000,0.0000000,60.7499695); //object(low_couch_4) (1)
	CreateDynamicObject(1764,-1249.5000000,-2027.4000244,17.2000008,0.0000000,0.0000000,346.0000000); //object(low_couch_2) (1)
	CreateDynamicObject(2319,-1247.8000488,-2032.1999512,17.2000008,0.0000000,0.0000000,62.0000000); //object(cj_tv_table5) (1)
	CreateDynamicObject(1786,-1247.3000488,-2031.5000000,17.7000008,0.0000000,0.0000000,241.0000000); //object(swank_tv_4) (1)
	CreateDynamicObject(1790,-1247.5000000,-2031.5000000,17.3999996,0.0000000,0.0000000,60.0000000); //object(swank_video_3) (1)
	CreateDynamicObject(5678,-1279.1999512,-2044.9000244,24.2999992,0.0000000,0.0000000,246.0000000); //object(lae_smokecutscene) (1)
	CreateDynamicObject(1368,-1211.4000244,-2026.3000488,7.3000002,0.0000000,0.0000000,153.0000000); //object(cj_blocker_bench) (1)
	CreateDynamicObject(1368,-1245.3000488,-2028.8000488,24.7000008,0.0000000,0.0000000,152.9956055); //object(cj_blocker_bench) (2)
	CreateDynamicObject(1596,-1247.1999512,-2035.3000488,26.5000000,0.0000000,0.0000000,63.5000000); //object(satdishsml) (1)
	CreateDynamicObject(1776,-1256.8000488,-2028.1999512,18.2999992,0.0000000,0.0000000,154.0000000); //object(cj_candyvendor) (1)
	CreateDynamicObject(1775,-1255.1999512,-2029.0999756,18.2999992,0.0000000,0.0000000,150.0000000); //object(cj_sprunk1) (1)
	CreateDynamicObject(3853,-1332.6999512,-2159.6999512,25.8999996,0.0000000,0.0000000,148.0000000); //object(gay_lamppost) (2)
	CreateDynamicObject(3853,-1272.4000244,-2077.1999512,25.6000004,0.0000000,0.0000000,147.9968262); //object(gay_lamppost) (3)
	CreateDynamicObject(3853,-1274.5000000,-2076.3000488,25.6000004,0.0000000,0.0000000,328.4968262); //object(gay_lamppost) (4)
	CreateDynamicObject(3853,-1247.0999756,-2037.0999756,20.7999992,0.0000000,0.0000000,154.0000000); //object(gay_lamppost) (5)
	CreateDynamicObject(17950,-1248.8000488,-2026.6999512,11.3000002,0.0000000,0.0000000,333.7500000); //object(cjsaveg) (1)
	CreateDynamicObject(3294,-1246.9000244,-2022.9000244,10.1000004,0.0000000,0.0000000,244.0000000); //object(cxf_spraydoor1) (1)
	CreateDynamicObject(3853,-1242.5000000,-2024.9000244,12.8000002,0.0000000,0.0000000,153.9953613); //object(gay_lamppost) (6)
	CreateDynamicObject(642,-1254.5999756,-2024.5999756,25.2999992,0.0000000,0.0000000,0.0000000); //object(kb_canopy_test) (1)
	CreateDynamicObject(1215,-1204.0999756,-2030.4000244,7.4000001,0.0000000,0.0000000,0.0000000); //object(bollardlight) (1)
	CreateDynamicObject(1478,-1334.1999512,-2160.1000977,22.6000004,0.0000000,0.0000000,332.0000000); //object(dyn_post_box) (1)
	CreateDynamicObject(1478,-1334.4000244,-2160.0000000,22.6000004,0.0000000,0.0000000,331.9958496); //object(dyn_post_box) (2)
	CreateDynamicObject(3853,-1294.8994141,-2066.8994141,25.2999992,0.0000000,0.0000000,147.9968262); //object(gay_lamppost) (7)
	CreateDynamicObject(1328,-1333.1999512,-2159.8000488,22.6000004,0.0000000,0.0000000,0.0000000); //object(binnt10_la) (1)
	CreateDynamicObject(1328,-1332.4000244,-2159.8000488,22.6000004,0.0000000,0.0000000,0.0000000); //object(binnt10_la) (2)
	CreateDynamicObject(3252,-1259.9000244,-2085.6000977,22.7000008,0.0000000,0.0000000,0.0000000); //object(des_oldwattwr_) (1)
	CreateDynamicObject(11504,1642.4000244,1308.5999756,9.8000002,0.0000000,0.0000000,90.0000000); //object(des_garagew) (1)
	CreateDynamicObject(8841,1677.1999512,1301.9000244,12.8000002,0.0000000,0.0000000,0.0000000); //object(rsdncarprk01_lvs) (1)
	CreateDynamicObject(3262,-1292.0000000,-2179.8000488,19.6000004,0.0000000,0.0000000,354.0000000); //object(privatesign1) (1)
	CreateDynamicObject(3263,-1330.5000000,-2158.0000000,22.5000000,0.0000000,0.0000000,338.0000000); //object(privatesign2) (1)
	CreateDynamicObject(16192,3966.6374512,3537.9223633,-40.7275391,0.0000000,0.0000000,20.0000000); //object(centland01) (1)

	// Brian Wright Custom Exterior (Approved by Devin)
	CreateDynamicObject(6300, -43.195404052734, -802.90802001953, 0.11258751899004, 0, 0, 253.99841308594, .streamdistance = 300.0, .interiorid = 0);
	CreateDynamicObject(6300, -95.2587890625, -771.8720703125, 0.10929800570011, 0, 0, 253.99841308594, .streamdistance = 300.0, .interiorid = 0);
	CreateDynamicObject(6300, -69.70703125, -768.9814453125, 0.10080146044493, 0, 0, 73.98193359375, .streamdistance = 300.0, .interiorid = 0);
	CreateDynamicObject(7191, -114.2587890625, -795.1357421875, 4.0487561225891, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -113.37109375, -792.0390625, 4.0481557846069, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -112.2822265625, -788.244140625, 4.048526763916, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -111.21484375, -784.517578125, 4.0478601455688, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -110.2020111084, -780.98358154297, 4.0470128059387, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -109.11193847656, -777.17797851563, 4.0473709106445, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -108.03092956543, -773.40502929688, 4.048309803009, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -106.94396972656, -769.609375, 4.0477242469788, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -90.916015625, -770.1357421875, 4.0437264442444, 0, 90, 73.987426757813, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -89.82421875, -766.3330078125, 4.044102191925, 0, 90, 73.98193359375, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -103.6572265625, -758.2353515625, 4.0435929298401, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -102.5732421875, -754.4287109375, 4.0430369377136, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -101.4833984375, -750.626953125, 4.0425443649292, 0, 90, 253.99839782715, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -100.39935302734, -746.8369140625, 4.0431895256042, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -99.3359375, -743.123046875, 4.0450191497803, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -98.875503540039, -741.5126953125, 4.0440053939819, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -105.8681640625, -739.1220703125, 0.012000072747469, 0, 90, 253.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -106.9619140625, -742.9306640625, 0.010000061243773, 0, 90, 253.97644042969, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -98.654296875, -749.1953125, 0.012487702071667, 0, 90, 73.981903076172, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -92.920425415039, -754.87646484375, 0.011000066995621, 0, 90, 73.987426757813, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -93.938285827637, -758.70788574219, 0.010000061243773, 0, 90, 73.987396240234, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -95.0771484375, -762.4912109375, 0.0096766427159309, 0, 90, 73.976440429688, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -96.048828125, -766.3173828125, 0.011743724346161, 0, 90, 73.970947265625, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -97.2060546875, -770.0908203125, 0.0080000488087535, 0, 90, 73.981903076172, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -98.220703125, -773.9140625, 0.0070000435225666, 0, 90, 73.965454101563, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -99.2890625, -777.7216796875, 0.007000042591244, 0, 90, 73.970947265625, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -100.345703125, -781.5263671875, 0.0069144875742495, 0, 90, 73.987426757813, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -108.0556640625, -783.3583984375, 0.007000042591244, 0, 90, 73.98193359375, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -110.0634765625, -786.89453125, 0.0060000368393958, 0, 90, 73.970947265625, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -110.380859375, -790.853515625, 0.0049936566501856, 0, 90, 73.976440429688, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -121.23046875, -791.923828125, 0.0080000488087535, 0, 90, 253.98193359375, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -120.552734375, -789.55859375, 0.0060000368393958, 0, 90, 253.97644042969, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -127.3564453125, -754.15234375, 0.01700010150671, 0, 90, 163.97094726563, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -131.138671875, -753.0673828125, 0.015000090003014, 0, 90, 163.97094726563, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -135.60815429688, -768.59619140625, 0.010000061243773, 0, 90, 343.97094726563, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -131.8017578125, -769.6884765625, 0.011000066064298, 0, 90, 343.95993041992, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -129.09848022461, -770.462890625, 0.01000006031245, 0, 90, 343.98193359375, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -121.77227783203, -793.82922363281, 0.0090000545606017, 0, 90, 253.97644042969, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -124.68382263184, -754.92407226563, 0.015000090003014, 0, 90, 163.97094726563, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -124.27105712891, -755.9482421875, 4.0488958358765, 0, 90, 163.99841308594, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -126.80151367188, -770.28515625, 4.0516419410706, 0, 90, 343.99291992188, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -128.27462768555, -769.859375, 4.0495018959045, 0, 90, 343.99291992188, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -101.97265625, -770.8046875, 4.0419130325317, 0, 90, 73.987426757813, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -101.84757995605, -750.76739501953, 0.012312341481447, 0, 90, 73.98193359375, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -99.5224609375, -741.2314453125, 4.0363116264343, 0, 90, 73.959930419922, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(7191, -114.6982421875, -795.5390625, 4.0470595359802, 0, 90, 73.992919921875, .streamdistance = 250.0, .interiorid = 0);
	CreateDynamicObject(3607, -91.7568359375, -772.0205078125, 14.264568328857, 0, 0, 73.970947265625, .streamdistance = 175.0, .interiorid = 0); // House
	CreateDynamicObject(3851, -138.5576171875, -784.806640625, 1.9923543930054, 0, 0, 343.99291992188, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -134.673828125, -791.8134765625, 1.9923543930054, 0, 0, 73.948974609375, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -123.8134765625, -794.9404296875, 1.9923543930054, 0, 0, 73.948974609375, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -123.8017578125, -794.9453125, 5.9841151237488, 0, 0, 73.948974609375, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -134.67578125, -791.8154296875, 5.9841151237488, 0, 0, 73.948974609375, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -138.5625, -784.810546875, 5.9841151237488, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -135.4345703125, -773.9326171875, 1.9923543930054, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -135.4384765625, -773.951171875, 5.9841151237488, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -132.322265625, -763.091796875, 5.9841151237488, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -129.1962890625, -752.2265625, 5.9841151237488, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -126.0703125, -741.373046875, 5.9841151237488, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -125.0107421875, -737.8271484375, 5.9841151237488, 0, 0, 163.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -118.0439453125, -733.9423828125, 5.9841151237488, 0, 0, 253.94348144531, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -132.3115234375, -763.0859375, 1.9923543930054, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -129.19374084473, -752.22473144531, 1.9923543930054, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -126.0732421875, -741.3740234375, 1.9923543930054, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -125.04791259766, -737.82775878906, 1.9923543930054, 0, 0, 343.94897460938, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -118.04113769531, -733.94360351563, 1.9923543930054, 0, 0, 253.94348144531, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -96.294418334961, -740.2021484375, 1.9923543930054, 0, 0, 253.94348144531, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -107.1875, -737.0634765625, 5.983941078186, 0, 0, 253.94348144531, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -107.1630859375, -737.0732421875, 1.992354631424, 0, 0, 253.94348144531, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3851, -96.3203125, -740.193359375, 5.9813780784607, 0, 0, 253.94348144531, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -126.99617004395, -744.96826171875, 3.7176280021667, 0, 0, 343.83911132813, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -126.991355896, -744.77166748047, 0.82342410087585, 0, 0, 343.83911132813, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -134.298828125, -769.95703125, 0.79742449522018, 0, 0, 343.84460449219, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -136.5556640625, -777.7412109375, 0.80042397975922, 0, 0, 343.83911132813, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -127.7548828125, -793.8115234375, 0.80542403459549, 0, 0, 73.861083984375, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -134.2666015625, -770.052734375, 3.7196278572083, 0, 0, 343.83911132813, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -136.49255371094, -777.78002929688, 3.716628074646, 0, 0, 343.83911132813, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -127.68017578125, -793.82403564453, 3.7196278572083, 0, 0, 73.861083984375, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -102.60054016113, -801.087890625, 3.7196278572083, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -127.67738342285, -793.81109619141, 3.7196278572083, 0, 179.99450683594, 73.815063476563, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -136.4814453125, -777.7392578125, 3.7196278572083, 0, 179.99450683594, 163.85559082031, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -129.2333984375, -752.65625, 3.7196278572083, 0, 179.99450683594, 163.85559082031, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -126.9638671875, -744.79296875, 3.7236275672913, 0, 179.99450683594, 163.85559082031, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -110.9658203125, -735.9775390625, 3.7196278572083, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -86.220184326172, -742.998046875, 3.7121856212616, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -110.9658203125, -735.87890625, 0.82042413949966, 0, 0, 254.0361328125, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -110.91637420654, -735.8525390625, 3.7196278572083, 0, 179.99450683594, 73.855590820313, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -102.6707611084, -801.07025146484, 0.80697911977768, 0, 0, 73.861083984375, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -106.61540222168, -799.92578125, 5.1164836883545, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -106.61404418945, -799.9287109375, 6.4974255561829, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -106.61260223389, -799.92578125, 7.3099899291992, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -106.62474822998, -799.92913818359, 2.1054358482361, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -106.62308502197, -799.92706298828, 2.8130085468292, 0, 0, 253.86108398438, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -89.9375, -741.9287109375, 7.1416187286377, 0, 179.99450683594, 73.855590820313, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -89.938591003418, -741.92401123047, 5.8196501731873, 0, 179.99450683594, 73.855590820313, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -89.939674377441, -741.92095947266, 4.4238395690918, 0, 179.99450683594, 73.855590820313, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -89.981643676758, -741.91271972656, 2.3459830284119, 0, 179.99450683594, 73.855590820313, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -89.980964660645, -741.91357421875, 0.94814330339432, 0, 179.99450683594, 73.855590820313, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -89.994766235352, -741.91467285156, 0.82366931438446, 0, 179.99450683594, 73.901580810547, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(9339, -69.059844970703, -747.96966552734, 7.1457533836365, 0, 179.99450683594, 73.855590820313, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3660, -80.692344665527, -745.25354003906, 10.811915397644, 0, 0, 343.99291992188, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3660, -127.73950195313, -792.2265625, 10.817052841187, 0, 0, 343.99291992188, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3660, -115.455909729, -795.75085449219, 10.815052032471, 0, 0, 343.99291992188, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3660, -92.809539794922, -741.77886962891, 10.815052032471, 0, 0, 343.99291992188, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(3660, -111.47900390625, -736.42297363281, 10.817052841187, 0, 0, 343.99291992188, .streamdistance = 175.0, .interiorid = 0);
	CreateDynamicObject(870, -123.88008117676, -766.36169433594, 8.9137649536133, 0, 0, 310, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -120.41134643555, -770.73071289063, 9.1027097702026, 0, 0, 334, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -124.42182922363, -768.75549316406, 8.9137649536133, 0, 0, 309.99572753906, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -125.91445159912, -766.93426513672, 8.9137649536133, 0, 0, 309.99572753906, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -126.73021697998, -769.11291503906, 8.9137649536133, 0, 0, 309.99572753906, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -125.64945983887, -765.45709228516, 8.9137649536133, 0, 0, 189.99572753906, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -123.33247375488, -764.50128173828, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -125.03817749023, -763.42041015625, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -121.03503417969, -764.17144775391, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -122.05841827393, -765.32440185547, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -122.78732299805, -766.91949462891, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -124.07224273682, -769.21899414063, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -126.38571166992, -768.44384765625, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -116.77964782715, -771.64978027344, 9.1027097702026, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -118.89984130859, -767.87054443359, 9.1027097702026, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -116.17644500732, -768.72839355469, 9.1104612350464, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -117.5291519165, -765.48809814453, 9.1104612350464, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -115.13973236084, -766.08441162109, 9.1104612350464, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -115.78628540039, -762.86804199219, 9.1104612350464, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -114.37293243408, -760.60321044922, 9.1104612350464, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(869, -114.26895141602, -762.97503662109, 9.1104612350464, 0, 0, 333.99536132813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -122.70485687256, -762.27587890625, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -124.37756347656, -761.11431884766, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -123.72180938721, -758.75286865234, 8.9137649536133, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -121.78548431396, -759.99114990234, 8.9060134887695, 0, 0, 139.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -120.29922485352, -761.91760253906, 8.9060134887695, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -123.39049530029, -757.26123046875, 8.9060134887695, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -121.57942199707, -757.96514892578, 8.9060134887695, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -119.75926208496, -758.52844238281, 8.9060134887695, 0, 0, 189.99206542969, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -118.3314666748, -758.88604736328, 8.9060134887695, 0, 0, 79.992065429688, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -119.37181854248, -760.63763427734, 8.9060134887695, 0, 0, 79.991455078125, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(870, -123.70208740234, -760.13110351563, 8.9137649536133, 0, 0, 79.991455078125, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(1569, -107.56732177734, -758.5048828125, 0.10734738409519, 0, 0, 164, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -112.2373046875, -757.787109375, 4.6768493652344, 0, 0, 73.998413085938, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -115.5400390625, -756.8330078125, 4.6768493652344, 0, 0, 73.992919921875, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -118.84097290039, -755.88977050781, 4.6768493652344, 0, 0, 73.998413085938, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -120.9912109375, -757.0849609375, 4.6848983764648, 0, 0, 163.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -121.552734375, -759.1123046875, 4.6848983764648, 0, 0, 163.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -122.1591796875, -761.1337890625, 4.6848983764648, 0, 0, 163.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -120.95088195801, -763.33422851563, 4.6781692504883, 0, 0, 253.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -117.6376953125, -764.29296875, 4.6781692504883, 0, 0, 253.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -114.31603240967, -765.25225830078, 4.6781692504883, 0, 0, 253.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -116.22450256348, -757.50817871094, 2.5755693912506, 0, 0, 163.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -117.18074035645, -760.83776855469, 2.5755693912506, 0, 0, 163.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(3850, -118.14100646973, -764.16192626953, 2.5755693912506, 0, 0, 163.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -116.8076171875, -759.76171875, -0.47033962607384, 0, 0, 73.976440429688, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -117.44645690918, -762.00811767578, -0.47108325362206, 0, 0, 73.987426757813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -85.1513671875, -800.681640625, 7.0877637863159, 283.99658203125, 0, 253.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -89.828636169434, -799.3447265625, 5.9246482849121, 282.89245605469, 0, 253.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -94.488883972168, -798.01171875, 4.8135766983032, 282.89245605469, 0, 253.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -98.780044555664, -796.7802734375, 3.9984931945801, 277.34436035156, 0, 253.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -121.30372619629, -772.47442626953, -2.1617166996002, 0, 0, 73.998413085938, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -118.55532836914, -762.88043212891, -2.1602966785431, 0, 0, 73.998413085938, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -115.7958984375, -753.2724609375, -2.1612756252289, 0, 0, 73.992919921875, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -125.318359375, -775.9990234375, -4.6632895469666, 0, 270, 343.99291992188, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -126.859375, -770.8818359375, -2.1652753353119, 0, 0, 73.987426757813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -124.1123046875, -761.2900390625, -2.1672747135162, 0, 0, 73.992919921875, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -121.36028289795, -751.69006347656, -2.1667137145996, 0, 0, 73.998413085938, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -117.3603515625, -748.1455078125, -4.6615543365479, 0, 270, 163.99841308594, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -123.6552734375, -770.7314453125, -3.4906148910522, 90, 165.52001953125, 86.467895507813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -121.0869140625, -761.0849609375, -3.4945938587189, 90, 167.68524169922, 86.296691894531, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -118.234375, -751.7060546875, -3.4924306869507, 90, 166.36047363281, 87.621459960938, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -114.4208984375, -762.8671875, -0.47276610136032, 0, 0, 73.98193359375, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -113.7919921875, -760.6435546875, -0.46983274817467, 0, 0, 73.987426757813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -106.24609375, -759.357421875, 1.5722979307175, 0, 0, 164.19067382813, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -107.51303863525, -766.69891357422, 1.6222047805786, 0, 0, 164.97448730469, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -112.8447265625, -764.640625, -0.93536692857742, 0, 90, 164.9267578125, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -111.21606445313, -758.93115234375, -0.92662340402603, 0, 90, 164.19036865234, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -113.00148773193, -765.2275390625, -0.94013404846191, 0, 90, 164.9267578125, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(18766, -110.95525360107, -758.02349853516, -0.92719203233719, 0, 90, 164.18518066406, .streamdistance = 100.0, .interiorid = 0);
	CreateDynamicObject(790, -63.658241271973, -718.603515625, 4.9201049804688, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(790, -72.436767578125, -706.04254150391, 0.36161184310913, 0, 0, 40, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(790, -85.469604492188, -716.34399414063, -8.922155380249, 0, 0, 39.995727539063, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(790, -93.595680236816, -827.96453857422, 3.5705449581146, 0, 0, 39.995727539063, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(790, -112.171043396, -842.13067626953, -0.55399364233017, 0, 0, 79.995727539063, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(790, -117.310546875, -822.31640625, -2.1487429141998, 0, 0, 79.991455078125, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(713, -61.185306549072, -821.26550292969, 5.1530842781067, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(713, -70.572959899902, -816.60125732422, 4.6267213821411, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(713, -64.2109375, -802.673828125, 5.9148392677307, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(713, -55.946533203125, -802.64147949219, 7.468569278717, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(713, -49.031219482422, -802.05651855469, 7.9541563987732, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(713, -42.662170410156, -801.54144287109, 8.9739503860474, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(715, -48.843990325928, -768.74554443359, 17.65588760376, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(715, -46.228225708008, -758.7880859375, 17.491598129272, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(715, -40.593559265137, -775.84594726563, 17.984075546265, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(715, -37.989574432373, -767.130859375, 17.250823974609, 0, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(16061, -72.3564453125, -842.2861328125, 10.140558242798, 356.47863769531, 0, 141.99829101563, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(16061, -80.143165588379, -848.49572753906, 8.0147151947021, 0, 0, 309.99572753906, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(16061, -51.669921875, -745.630859375, 9.2123670578003, 357.37545776367, 0, 0, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(16061, -30.403972625732, -766.53631591797, 7.1579074859619, 355.99548339844, 0, 344, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(8623, -49.9423828125, -786.1103515625, 10.850338935852, 358.86590576172, 356.19357299805, 359.9196472168, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(789, -47.858684539795, -789.16436767578, 22.318248748779, 0, 0, 240, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(4184, -45.927536010742, -766.11987304688, 9.4569940567017, 0, 0, 239.99633789063, .streamdistance = 200.0, .interiorid = 0);
	CreateDynamicObject(9131, -141.91319274902, -782.55914306641, 0.01154438778758, 0, 270, 254, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(3934, -114.50390625, -748.9130859375, 8.1661357879639, 0, 0, 343.99291992188, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -129.384765625, -747.1328125, -0.10442823916674, 0, 0, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -133.80078125, -762.5068359375, -0.10600077360868, 0, 0, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -137.2734375, -774.623046875, -0.10942825675011, 0, 0, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(14395, -115.4111328125, -764.470703125, 1.7760236263275, 0, 0, 343.99291992188, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(14395, -114.5888671875, -761.5908203125, 1.7765808105469, 0, 0, 343.99291992188, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(14877, -114.8623046875, -757.10546875, -0.074336655437946, 0, 0, 253.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -89.202346801758, -794.1181640625, 5.6166791915894, 0, 90, 253.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -95.15901184082, -792.4072265625, 5.6203532218933, 0, 90, 253.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -100.50499725342, -782.75659179688, 5.4239234924316, 0, 90, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -96.107109069824, -767.42437744141, 5.2223591804504, 0, 90, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -91.71875, -752.044921875, 5.4260997772217, 0, 90, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(18980, -132.94165039063, -779.2392578125, 4.5707788467407, 90, 179.99450683594, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(18980, -126.24609375, -755.9501953125, 4.5733351707458, 90, 179.99450683594, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(18980, -123.25830078125, -745.5546875, 4.5694079399109, 90, 179.99450683594, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(6300, -69.6416015625, -768.2939453125, 0.1051602512598, 0, 0, 73.965454101563, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -91.117721557617, -750.0087890625, 5.2176403999329, 0, 90, 163.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(9131, -117.677734375, -733.5732421875, 0.028163466602564, 90, 179.99450683594, 253.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -101.6259765625, -746.94921875, 1.4268636703491, 0, 90, 163.04260253906, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -106.22308349609, -762.02972412109, 1.5834903717041, 0, 90, 163.046875, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -112.93906402588, -776.57000732422, 1.5834903717041, 0, 90, 163.04260253906, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -116.6474609375, -788.775390625, 1.5750592947006, 0, 90, 163.04254150391, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(3356, -99.514274597168, -811.13214111328, 12.588242530823, 0, 0, 73.746459960938, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1497, -98.30632019043, -815.32489013672, 8.7469787597656, 0, 0, 73.627655029297, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -96.7890625, -802.7412109375, 5.6683483123779, 0, 90, 73.970947265625, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -87.9921875, -805.2587890625, 5.6707253456116, 0, 90, 73.970947265625, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -104.216796875, -808.72265625, 7.9794373512268, 0, 0, 163.97094726563, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -95.1611328125, -814.92578125, 7.9772458076477, 0, 0, 253.97644042969, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -93.251609802246, -808.28735351563, 7.9663515090942, 0, 0, 73.921508789063, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -93.625396728516, -809.59881591797, 7.9669165611267, 0, 0, 73.970947265625, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -94.850875854492, -813.8115234375, 7.9759669303894, 0, 0, 253.96545410156, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(7595, -130.390625, -761.2431640625, 9.8396339416504, 0, 0, 343.99291992188, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(9812, -131.11848449707, -761.93023681641, 2.0734751224518, 0, 0, 254, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(17027, -133.2177734375, -792.64453125, -13.449194908142, 0, 335.99487304688, 333.98986816406, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(17027, -146.76393127441, -751.81927490234, -33.631999969482, 47.073883056641, 327.1396484375, 253.30224609375, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(17027, -131.2587890625, -739.83203125, -13.890112876892, 0, 338.31298828125, 223.98376464844, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(17027, -105.53125, -724.693359375, -14.13468837738, 0, 338.31298828125, 183.98803710938, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(17027, -95.873046875, -718.4833984375, -14.134689331055, 0, 338.31298828125, 183.98803710938, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(698, -59.177429199219, -741.22772216797, 9.0619430541992, 0, 0, 120, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(9833, -121.0185546875, -764.6044921875, 11.874187469482, 0, 0, 29.998168945313, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(9345, -116.30956268311, -766.93566894531, 8.4028263092041, 0, 0, 73.998413085938, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(9345, -123.2861328125, -762.787109375, 8.4138307571411, 0, 0, 253.99841308594, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(3934, -124.40625, -783.25, 8.1639852523804, 0, 0, 343.99291992188, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(7595, -128.52073669434, -761.82098388672, 9.8366327285767, 0, 0, 343.99291992188, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -99.3095703125, -741.734375, -0.28624936938286, 90, 90, 165.04211425781, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -92.889060974121, -747.951171875, 5.2361836433411, 0, 90, 255.04211425781, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -110.705078125, -769.318359375, 1.6119104623795, 0, 90, 163.03704833984, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -103.5732421875, -737.9375, -2.3859100341797, 0, 90, 73.970947265625, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -118.94923400879, -733.52349853516, -2.3866572380066, 0, 90, 73.981903076172, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -128.771484375, -738.8203125, -2.5956330299377, 0, 90, 163.97644042969, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -133.18780517578, -754.18316650391, -2.6111552715302, 0, 90, 163.97637939453, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -137.60546875, -769.55645751953, -2.6116485595703, 0, 90, 163.97637939453, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -141.06715393066, -781.82391357422, -2.6045844554901, 0, 90, 163.97637939453, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -135.72172546387, -791.47631835938, -2.4006056785583, 0, 90, 253.97631835938, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -120.595703125, -795.8232421875, -2.3964891433716, 0, 90, 253.96545410156, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1432, -97.989128112793, -759.12951660156, 8.9830121994019, 0, 0, 0, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1432, -104.65293884277, -780.91082763672, 8.9830121994019, 0, 0, 0, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(18762, -118.02734375, -734.4990234375, 4.5654082298279, 90, 179.99450683594, 73.998413085938, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(18762, -134.33982849121, -791.36987304688, 4.5694079399109, 90, 179.99450683594, 73.987426757813, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(18762, -131.85198974609, -792.09063720703, 4.5684080123901, 90, 180.00549316406, 73.987457275391, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(18762, -115.58237457275, -735.19653320313, 4.5674080848694, 90, 180.00549316406, 73.987426757813, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(9131, -128.30499267578, -762.62121582031, 4.0615477561951, 90, 179.99450683594, 343.99291992188, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(9131, -117.28179931641, -734.587890625, 4.0655016899109, 90, 179.99450683594, 253.98742675781, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(17027, -150.25686645508, -761.55145263672, -29.038606643677, 47.070922851563, 327.13439941406, 277.30078125, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -108.405128479, -807.60015869141, 5.492082118988, 0, 90, 163.97094726563, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -103.08765411377, -817.32360839844, 3.6292107105255, 0, 270, 73.602905273438, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(11496, -87.730285644531, -821.77740478516, 3.624144077301, 0, 270, 74.059356689453, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1557, -129.99565124512, -754.77813720703, 0.094347260892391, 0, 0, 253.97644042969, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1557, -130.82522583008, -757.68377685547, 0.094347238540649, 0, 0, 73.965454101563, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1557, -129.8282623291, -754.83575439453, 0.095347106456757, 0, 0, 253.97644042969, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1557, -130.65832519531, -757.73193359375, 0.095346994698048, 0, 0, 73.965454101563, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1557, -130.76564025879, -757.70111083984, 0.095346987247467, 0, 0, 73.965454101563, .streamdistance = 150.0, .interiorid = 0);
	CreateDynamicObject(1557, -129.91471862793, -754.80694580078, 0.094912640750408, 0, 0, 253.97644042969, .streamdistance = 150.0, .interiorid = 0);

 /*
	//Shield HQ - LV
	CreateDynamicObject(8650,2617.0000000,1448.0000000,10.8000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (1)
	CreateDynamicObject(8650,2617.0000000,1448.0000000,13.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (3)
	CreateDynamicObject(8650,2617.0000000,1448.0000000,15.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (4)
	CreateDynamicObject(8650,2617.0000000,1417.5000000,10.8000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (5)
	CreateDynamicObject(8650,2617.0000000,1417.5000000,13.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (6)
	CreateDynamicObject(8650,2617.0000000,1417.5000000,15.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (7)
	CreateDynamicObject(8650,2617.0000000,1398.4000200,10.8000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (8)
	CreateDynamicObject(8650,2617.0000000,1398.4000200,13.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (9)
	CreateDynamicObject(8650,2617.0000000,1398.4000200,15.2000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (10)
	CreateDynamicObject(8650,2601.3999000,1383.5999800,10.8000000,0.0000000,0.0000000,270.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (11)
	CreateDynamicObject(8650,2601.3999000,1383.5999800,13.0000000,0.0000000,0.0000000,269.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (12)
	CreateDynamicObject(8650,2601.3999000,1383.5999800,15.2000000,0.0000000,0.0000000,269.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (13)
	CreateDynamicObject(8650,2572.5000000,1383.5999800,10.8000000,0.0000000,0.0000000,269.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (14)
	CreateDynamicObject(8650,2572.5000000,1383.5999800,13.0000000,0.0000000,0.0000000,269.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (15)
	CreateDynamicObject(8650,2572.5000000,1383.5999800,15.2000000,0.0000000,0.0000000,269.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (16)
	CreateDynamicObject(8650,2601.3999000,1462.9000200,10.8000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (17)
	CreateDynamicObject(8650,2601.3999000,1462.9000200,13.0000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (18)
	CreateDynamicObject(8650,2601.3999000,1462.9000200,15.2000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (19)
	CreateDynamicObject(8650,2571.1001000,1462.9000200,10.8000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (20)
	CreateDynamicObject(8650,2571.1001000,1462.9000200,13.0000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (21)
	CreateDynamicObject(8650,2571.1001000,1462.9000200,15.2000000,0.0000000,0.0000000,90.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (22)
	CreateDynamicObject(8650,2556.3000500,1447.3000500,10.8000000,0.0000000,0.0000000,180.0000000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (23)
	CreateDynamicObject(8650,2556.3000500,1447.3000500,13.0000000,0.0000000,0.0000000,179.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (24)
	CreateDynamicObject(8650,2556.3000500,1447.3000500,15.2000000,0.0000000,0.0000000,179.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (25)
	CreateDynamicObject(8650,2556.3000500,1416.8000500,10.8000000,0.0000000,0.0000000,179.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (26)
	CreateDynamicObject(8650,2556.3000500,1416.8000500,13.0000000,0.0000000,0.0000000,179.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (27)
	CreateDynamicObject(8650,2556.3000500,1416.8000500,15.2000000,0.0000000,0.0000000,179.9950000, .worldid = 0, .streamdistance = 200); //object(shbbyhswall06_lvs) (28)
	CreateDynamicObject(3749,2557.6999500,1393.1999500,15.6000000,0.0000000,0.0000000,270.0000000, .worldid = 0, .streamdistance = 200); //object(clubgate01_lax) (1)
	CreateDynamicObject(2921,2617.0000000,1383.3000500,16.0000000,0.0000000,10.0000000,38.0000000, .worldid = 0, .streamdistance = 200); //object(kmb_cam) (1)
	CreateDynamicObject(1622,2617.6001000,1383.8000500,16.9000000,0.0000000,0.0000000,214.0000000, .worldid = 0, .streamdistance = 200); //object(nt_securecam2_01) (3)
	CreateDynamicObject(2921,2617.3000500,1462.6999500,16.1000000,0.0000000,9.9980000,133.9960000, .worldid = 0, .streamdistance = 200); //object(kmb_cam) (2)
	CreateDynamicObject(1622,2616.6999500,1463.4000200,16.9000000,0.0000000,354.0000000,323.9970000, .worldid = 0, .streamdistance = 200); //object(nt_securecam2_01) (4)
	CreateDynamicObject(1622,2555.6999500,1462.5999800,16.9000000,0.0000000,353.9960000,43.9920000, .worldid = 0, .streamdistance = 200); //object(nt_securecam2_01) (5)
	CreateDynamicObject(2921,2556.3000500,1463.1999500,16.1000000,0.0000000,9.9980000,215.9950000, .worldid = 0, .streamdistance = 200); //object(kmb_cam) (3)
	CreateDynamicObject(1886,2555.1999500,1402.5000000,15.5000000,18.0000000,0.0000000,318.0000000, .worldid = 0, .streamdistance = 200); //object(shop_sec_cam) (2)
	CreateDynamicObject(1886,2555.3000500,1384.4000200,15.4000000,17.9960000,0.0000000,207.9990000, .worldid = 0, .streamdistance = 200); //object(shop_sec_cam) (3)
	CreateDynamicObject(1886,2555.3000500,1383.1999500,15.5000000,11.9960000,0.0000000,301.9990000, .worldid = 0, .streamdistance = 200); //object(shop_sec_cam) (4)
	CreateDynamicObject(1886,2556.3000500,1383.0999800,15.5000000,5.9960000,0.0000000,79.9990000, .worldid = 0, .streamdistance = 200); //object(shop_sec_cam) (5)
	CreateDynamicObject(2921,2566.6999500,1399.8000500,20.1000000,347.1150000,322.9150000,88.4240000, .worldid = 0, .streamdistance = 200); //object(kmb_cam) (4)
	CreateDynamicObject(1622,2590.1001000,1399.1999500,20.7000000,0.0000000,353.9960000,93.9890000, .worldid = 0, .streamdistance = 200); //object(nt_securecam2_01) (7)
	CreateDynamicObject(1622,2590.6999500,1400.6999500,20.7000000,0.0000000,353.9960000,191.9880000, .worldid = 0, .streamdistance = 200); //object(nt_securecam2_01) (8)
	CreateDynamicObject(5822,2587.5000000,1400.5000000,15.1000000,0.0000000,0.0000000,184.0000000, .worldid = 0, .streamdistance = 200); //object(lhroofst14) (1)
	CreateDynamicObject(3934,2576.5000000,1412.3000500,19.5000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(helipad01) (1)
	CreateDynamicObject(3934,2576.3999000,1428.0000000,19.5000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(helipad01) (2)
	CreateDynamicObject(3934,2576.3000500,1443.5000000,19.5000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(helipad01) (3)
	CreateDynamicObject(1622,2616.1999500,1384.3000500,16.3000000,13.7830000,349.6960000,288.4660000, .worldid = 0, .streamdistance = 200); //object(nt_securecam2_01) (9)
	CreateDynamicObject(1622,2601.8000500,1461.8000500,15.7000000,355.9180000,357.9950000,41.7560000, .worldid = 0, .streamdistance = 200); //object(nt_securecam2_01) (10)
	CreateDynamicObject(1596,2564.3000500,1401.0999800,22.0000000,0.0000000,0.0000000,324.0000000, .worldid = 0, .streamdistance = 200); //object(satdishsml) (1)
	CreateDynamicObject(1596,2588.3999000,1457.5999800,22.0000000,0.0000000,0.0000000,122.0000000, .worldid = 0, .streamdistance = 200); //object(satdishsml) (2)


	//New SHIELD HQ - East LS
	CreateDynamicObject(5333,2993.7998000,-0.8994100,26.6000000,357.9950000,0.0000000,227.7410000, .worldid = 0,.streamdistance = 300); //object(sanpedbigslt_las2) (1)
	CreateDynamicObject(5333,3153.5000000,155.3000000,34.4000000,1.7390000,355.9940000,41.1090000, .worldid = 0,.streamdistance = 300); //object(sanpedbigslt_las2) (2)
	CreateDynamicObject(13105,3155.3999000,156.1000100,-15.0000000,0.0000000,5.9990000,27.8450000, .worldid = 0,.streamdistance = 300); //object(ce_groundpalo07) (1)
	CreateDynamicObject(3997,3261.0996100,240.0996100,30.9000000,0.2420000,359.4950000,119.4930000, .worldid = 0,.streamdistance = 400); //object(cityhallblok_lan) (3)
	CreateDynamicObject(9090,3340.2998000,284.8994100,-0.1000000,0.0000000,359.4950000,119.4930000, .worldid = 0,.streamdistance = 300); //object(vgeferryland) (1)
	CreateDynamicObject(9090,3381.8994100,308.3994100,-18.5000000,0.0000000,0.0000000,119.9930000, .worldid = 0,.streamdistance = 300); //object(vgeferryland) (2)
	CreateDynamicObject(13105,3354.5000000,263.6992200,-12.3000000,0.0000000,357.9900000,145.8440000, .worldid = 0,.streamdistance = 300); //object(ce_groundpalo07) (2)
	CreateDynamicObject(5184,3320.6999500,256.6000100,39.8000000,0.0000000,0.0000000,300.0000000, .worldid = 0,.streamdistance = 300); //object(mdock1a_las2) (1)
	CreateDynamicObject(5184,3278.6001000,316.1000100,39.8000000,0.0000000,359.7500000,209.9980000, .worldid = 0,.streamdistance = 300); //object(mdock1a_las2) (2)
	CreateDynamicObject(5184,3277.2998000,231.5000000,40.1000000,0.0000000,0.0000000,299.9930000, .worldid = 0,.streamdistance = 300); //object(mdock1a_las2) (3)
	CreateDynamicObject(6300,3267.0996100,186.6992200,22.3000000,359.7420000,0.2420000,299.4930000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (1)
	CreateDynamicObject(6300,3237.1001000,239.6000100,22.7000000,359.2500000,0.4970000,299.5050000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (2)
	CreateDynamicObject(6300,3218.3000500,273.0000000,23.3000000,359.7500000,0.4940000,299.5000000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (3)
	CreateDynamicObject(6300,3218.3000500,273.0000000,23.0000000,0.2500000,359.2440000,119.0020000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (4)
	CreateDynamicObject(6300,3243.6001000,228.3999900,22.7000000,0.2500000,359.2420000,118.9960000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (5)
	CreateDynamicObject(6300,3266.8999000,186.8000000,22.3000000,0.2500000,359.7420000,118.9940000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (6)
	CreateDynamicObject(6300,3302.8994100,207.0000000,22.3000000,0.2470000,359.4890000,118.9870000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (7)
	CreateDynamicObject(6300,3274.6001000,259.7999900,22.5000000,0.0000000,359.2420000,118.9870000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (8)
	CreateDynamicObject(6300,3254.6999500,293.7000100,23.0000000,0.0000000,359.4860000,118.9870000, .worldid = 0,.streamdistance = 300); //object(pier04_law2) (9)
	CreateDynamicObject(10828,3428.6001000,244.1000100,6.4000000,0.0000000,0.0000000,29.5000000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (1)
	CreateDynamicObject(10828,3398.3000500,227.0000000,6.4000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (2)
	CreateDynamicObject(10828,3350.0000000,380.7999900,6.4000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (3)
	CreateDynamicObject(10828,3319.3999000,363.3999900,6.4000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (4)
	CreateDynamicObject(10828,3309.8000500,356.3999900,16.3000000,359.7500000,180.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (5)
	CreateDynamicObject(10828,3279.1001000,339.1000100,16.5000000,359.7470000,179.9950000,29.4930000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (6)
	CreateDynamicObject(10828,3285.5000000,321.2000100,16.5000000,359.7470000,179.9950000,119.4930000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (7)
	CreateDynamicObject(10828,3302.6999500,290.7999900,16.5000000,359.7470000,179.9950000,119.4930000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (8)
	CreateDynamicObject(10828,3319.8000500,260.5000000,16.5000000,359.7470000,179.9950000,119.4930000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (9)
	CreateDynamicObject(10828,3326.6001000,245.8999900,17.6000000,359.7470000,179.9950000,119.4930000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (10)
	CreateDynamicObject(10828,3344.8000500,216.7000000,16.5000000,359.7470000,179.9950000,119.4930000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (11)
	CreateDynamicObject(10828,3367.1001000,210.3000000,15.0000000,359.7470000,179.9950000,209.2430000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (12)
	CreateDynamicObject(10828,3376.1999500,215.3000000,14.8000000,359.7470000,179.9950000,209.7400000, .worldid = 0,.streamdistance = 300); //object(drydock1_sfse) (13)
	CreateDynamicObject(747,3219.1001000,199.8000000,31.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (1)
	CreateDynamicObject(747,3217.1992200,200.8994100,31.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (2)
	CreateDynamicObject(747,3208.2998000,214.7998000,31.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,3206.8999000,216.8999900,31.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (4)
	CreateDynamicObject(8650,3339.1001000,192.7000000,31.1000000,0.0000000,0.0000000,299.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (1)
	CreateDynamicObject(8650,3339.0996100,192.6992200,33.3000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (3)
	CreateDynamicObject(8650,3339.0996100,192.6992200,35.5000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (4)
	CreateDynamicObject(8650,3312.5996100,177.6992200,31.1000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (5)
	CreateDynamicObject(8650,3312.6001000,177.7000000,33.3000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (6)
	CreateDynamicObject(8650,3312.6001000,177.7000000,35.5000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (7)
	CreateDynamicObject(8650,3286.1001000,162.7000000,31.1000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (8)
	CreateDynamicObject(8650,3286.1001000,162.7000000,33.3000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (9)
	CreateDynamicObject(8650,3286.0996100,162.6992200,35.5000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (10)
	CreateDynamicObject(8650,3261.5000000,148.8000000,31.1000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (11)
	CreateDynamicObject(8650,3261.5000000,148.8000000,33.3000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (12)
	CreateDynamicObject(8650,3261.5000000,148.8000000,35.5000000,0.0000000,0.0000000,299.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (13)
	CreateDynamicObject(8650,3241.0000000,155.1000100,31.3000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (14)
	CreateDynamicObject(8650,3241.0000000,155.1000100,33.5000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (15)
	CreateDynamicObject(8650,3241.0000000,155.0996100,35.7000000,0.0000000,0.0000000,29.4930000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (16)
	CreateDynamicObject(8650,3226.0000000,181.6000100,31.3000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (17)
	CreateDynamicObject(8650,3226.0000000,181.6000100,33.5000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (18)
	CreateDynamicObject(8650,3226.0000000,181.6000100,35.7000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (19)
	CreateDynamicObject(8650,3177.3000500,267.2999900,32.3000000,0.0000000,0.0000000,29.2480000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (20)
	CreateDynamicObject(8650,3192.1999500,240.8000000,32.2000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (21)
	CreateDynamicObject(8650,3198.0000000,230.6000100,32.2000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (22)
	CreateDynamicObject(8650,3198.0000000,230.6000100,34.4000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (23)
	CreateDynamicObject(8650,3198.0000000,230.6000100,36.6000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (24)
	CreateDynamicObject(8650,3192.1999500,240.8000000,34.4000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (25)
	CreateDynamicObject(8650,3192.1999500,240.8000000,36.6000000,0.0000000,0.0000000,29.4980000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (26)
	CreateDynamicObject(8650,3177.3000500,267.2999900,34.4000000,0.0000000,0.0000000,29.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (27)
	CreateDynamicObject(8650,3177.3000500,267.2999900,36.6000000,0.0000000,0.0000000,29.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (28)
	CreateDynamicObject(8650,3183.6001000,287.8999900,32.3000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (29)
	CreateDynamicObject(8650,3183.6001000,287.8999900,34.4000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (30)
	CreateDynamicObject(8650,3183.6001000,287.8999900,36.6000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (31)
	CreateDynamicObject(8650,3210.1999500,302.7999900,32.2000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (32)
	CreateDynamicObject(8650,3210.1999500,302.7999900,34.4000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (33)
	CreateDynamicObject(8650,3210.1999500,302.7999900,36.6000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (34)
	CreateDynamicObject(8650,3236.8000500,317.7000100,32.2000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (35)
	CreateDynamicObject(8650,3236.8000500,317.7000100,34.4000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (36)
	CreateDynamicObject(8650,3236.8000500,317.7000100,36.6000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (37)
	CreateDynamicObject(8650,3260.6999500,331.1000100,32.2000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (38)
	CreateDynamicObject(8650,3260.6999500,331.1000100,34.4000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (39)
	CreateDynamicObject(8650,3260.6999500,331.1000100,36.6000000,0.0000000,0.0000000,119.2460000, .worldid = 0,.streamdistance = 300); //object(shbbyhswall06_lvs) (40)
	CreateDynamicObject(1411,3218.3999000,195.1000100,32.5000000,0.0000000,359.7470000,120.9980000, .worldid = 0,.streamdistance = 300); //object(dyn_mesh_1) (1)
	CreateDynamicObject(1243,3160.3000500,18.2000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (1)
	CreateDynamicObject(1243,3063.8000500,-22.0000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (2)
	CreateDynamicObject(1243,3251.0000000,25.8000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (3)
	CreateDynamicObject(1243,3328.6999500,64.8000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (4)
	CreateDynamicObject(1243,3427.3000500,133.8999900,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (5)
	CreateDynamicObject(1243,3502.1999500,195.8000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (6)
	CreateDynamicObject(1243,3559.8999000,303.0000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (8)
	CreateDynamicObject(1243,3460.3000500,449.1000100,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (9)
	CreateDynamicObject(1243,3353.8000500,505.7999900,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (10)
	CreateDynamicObject(1243,3233.6001000,484.0000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (11)
	CreateDynamicObject(1243,3121.0000000,417.0000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (12)
	CreateDynamicObject(1243,3030.1001000,359.5000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (13)
	CreateDynamicObject(1243,2941.1001000,294.7999900,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (14)
	CreateDynamicObject(1243,2869.8999000,243.5000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (15)
	CreateDynamicObject(1243,2994.8999000,-70.5000000,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (16)
	CreateDynamicObject(3749,3069.0996100,81.6992200,34.6000000,0.0000000,0.0000000,133.9950000, .worldid = 0,.streamdistance = 300); //object(clubgate01_lax) (2)
	CreateDynamicObject(3279,3250.6001000,151.1000100,31.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(a51_spottower) (1)
	CreateDynamicObject(3279,3179.3000500,278.8999900,32.3000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(a51_spottower) (2)
	CreateDynamicObject(3279,3323.1999500,357.7000100,28.3000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(a51_spottower) (3)
	CreateDynamicObject(3279,3395.8999000,230.0000000,27.0000000,0.0000000,0.0000000,154.0000000, .worldid = 0,.streamdistance = 300); //object(a51_spottower) (4)
	CreateDynamicObject(16093,3358.8000500,343.6000100,21.8000000,0.0000000,0.0000000,120.0000000, .worldid = 0,.streamdistance = 300); //object(a51_gatecontrol) (1)
	CreateDynamicObject(4718,3243.7998000,261.7998000,51.2000000,0.0000000,0.0000000,118.9980000, .worldid = 0,.streamdistance = 300); //object(gm_build4_lan2) (1)
	CreateDynamicObject(4853,3296.3999000,291.8999900,33.3000000,0.0000000,0.0000000,120.0000000, .worldid = 0,.streamdistance = 300); //object(traincano_las) (1)
	CreateDynamicObject(4853,3288.1001000,287.1000100,33.3000000,0.0000000,0.0000000,119.9980000, .worldid = 0,.streamdistance = 300); //object(traincano_las) (2)
	CreateDynamicObject(3578,3281.0000000,325.2999900,31.7000000,0.0000000,0.0000000,300.0000000, .worldid = 0,.streamdistance = 300); //object(dockbarr1_la) (1)
	CreateDynamicObject(3578,3290.1999500,309.2000100,31.7000000,0.0000000,0.0000000,299.9930000, .worldid = 0,.streamdistance = 300); //object(dockbarr1_la) (2)
	CreateDynamicObject(3578,3299.3000500,293.2999900,31.6000000,0.0000000,0.0000000,299.9930000, .worldid = 0,.streamdistance = 300); //object(dockbarr1_la) (3)
	CreateDynamicObject(3578,3308.3999000,277.3999900,31.5000000,0.0000000,0.0000000,299.9930000, .worldid = 0,.streamdistance = 300); //object(dockbarr1_la) (4)
	CreateDynamicObject(3578,3317.6001000,262.0000000,31.3000000,0.0000000,0.0000000,299.9930000, .worldid = 0,.streamdistance = 300); //object(dockbarr1_la) (5)
	CreateDynamicObject(3265,2893.3999000,-160.1000100,19.1000000,0.0000000,0.0000000,299.9980000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (1)
	CreateDynamicObject(3265,2998.6001000,-5.1000000,28.3000000,0.0000000,0.0000000,313.9930000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (4)
	CreateDynamicObject(3265,3426.6001000,307.7000100,3.1000000,0.0000000,0.0000000,117.9980000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (5)
	CreateDynamicObject(3265,3394.3999000,365.1000100,3.1000000,0.0000000,0.0000000,117.9930000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (6)
	CreateDynamicObject(3265,3285.6001000,218.5000000,53.4000000,0.0000000,0.0000000,85.9930000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (7)
	CreateDynamicObject(1622,3241.6001000,195.2000000,53.4000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (1)
	CreateDynamicObject(1622,3217.6999500,237.8999900,53.4000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (2)
	CreateDynamicObject(1622,3262.8000500,262.6000100,53.4000000,0.0000000,0.0000000,188.0000000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (3)
	CreateDynamicObject(1622,3286.3000500,220.1000100,53.4000000,0.0000000,0.0000000,177.9980000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (4)
	CreateDynamicObject(1622,3243.8994100,194.1992200,53.4000000,0.0000000,328.2500000,109.9900000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (5)
	CreateDynamicObject(1622,3155.3000500,146.8000000,62.2000000,0.0000000,333.2480000,338.5000000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (6)
	CreateDynamicObject(1622,2998.1992200,-7.5996100,54.1000000,0.0000000,322.2400000,332.2490000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (7)
	CreateDynamicObject(1622,2974.3000500,-35.3000000,23.5000000,0.0000000,350.9970000,355.7450000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (8)
	CreateDynamicObject(1622,2961.3000500,-23.6000000,24.3000000,0.0000000,350.9970000,21.7420000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (9)
	CreateDynamicObject(1622,3072.3999000,74.3000000,36.4000000,0.0000000,351.2440000,0.4960000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (10)
	CreateDynamicObject(1622,3060.5000000,86.7000000,36.4000000,0.0000000,351.2440000,19.4950000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (11)
	CreateDynamicObject(1622,3217.3999000,239.3000000,90.0000000,0.0000000,322.0000000,56.0000000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (12)
	CreateDynamicObject(1622,3193.3999000,286.5000000,53.4000000,0.0000000,331.7500000,67.5000000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (13)
	CreateDynamicObject(1622,3350.1999500,322.2999900,26.2000000,0.0000000,0.0000000,187.9980000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (14)
	CreateDynamicObject(1622,3371.0996100,285.2998000,26.2000000,0.0000000,0.0000000,187.9930000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (15)
	CreateDynamicObject(1622,3444.5000000,252.7000000,9.2000000,0.0000000,0.0000000,157.9980000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (16)
	CreateDynamicObject(1622,3420.6999500,294.8999900,9.2000000,0.0000000,0.0000000,171.7440000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (17)
	CreateDynamicObject(1622,3366.3000500,389.3999900,9.2000000,0.0000000,0.0000000,171.7440000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (18)
	CreateDynamicObject(7367,3445.5000000,405.7999900,2.3000000,0.0000000,0.0000000,256.0000000, .worldid = 0,.streamdistance = 300); //object(vgsnelec_fence_01) (1)
	CreateDynamicObject(7368,3477.8999000,314.5000000,2.9000000,0.0000000,0.0000000,120.0000000, .worldid = 0,.streamdistance = 300); //object(vgsnelec_fence_05) (1)
	CreateDynamicObject(1243,3535.1999500,419.7999900,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (17)
	CreateDynamicObject(1243,3513.6001000,379.2999900,-2.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(bouy) (18)
	CreateDynamicObject(1622,3248.6001000,141.8000000,37.4000000,0.0000000,356.2500000,52.7400000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (5)
	CreateDynamicObject(11490,3275.8999000,177.8999900,30.3000000,0.0000000,0.0000000,29.7500000, .worldid = 0,.streamdistance = 300); //object(des_ranch) (1)
	CreateDynamicObject(11491,3281.3999000,168.3000000,31.8000000,0.0000000,0.0000000,29.7500000, .worldid = 0,.streamdistance = 300); //object(des_ranchbits1) (1)
	CreateDynamicObject(1708,3271.3000500,177.8999900,31.8000000,2.0000000,0.0000000,120.0000000, .worldid = 0,.streamdistance = 300); //object(kb_chair02) (1)
	CreateDynamicObject(1708,3276.8999000,182.6000100,31.8000000,0.0000000,0.0000000,341.9960000, .worldid = 0,.streamdistance = 300); //object(kb_chair02) (2)
	CreateDynamicObject(1726,3274.3000500,172.5000000,31.8000000,0.0000000,0.0000000,119.5000000, .worldid = 0,.streamdistance = 300); //object(mrk_seating2) (1)
	CreateDynamicObject(1726,3275.6001000,170.3000000,31.8000000,0.0000000,0.0000000,119.4950000, .worldid = 0,.streamdistance = 300); //object(mrk_seating2) (2)
	CreateDynamicObject(16782,3281.6001000,176.5000000,33.2000000,0.0000000,0.0000000,209.5000000, .worldid = 0,.streamdistance = 300); //object(a51_radar_scan) (1)
	CreateDynamicObject(2964,3276.8000500,176.7000000,31.8000000,0.0000000,0.0000000,120.0000000, .worldid = 0,.streamdistance = 300); //object(k_pooltablesm) (1)
	CreateDynamicObject(1708,3271.8000500,179.8999900,31.8000000,2.0000000,0.0000000,27.9980000, .worldid = 0,.streamdistance = 300); //object(kb_chair02) (3)
	CreateDynamicObject(11665,3277.8000500,166.2000000,32.5000000,0.0000000,0.0000000,299.7500000, .worldid = 0,.streamdistance = 300); //object(kb_chair03ext) (1)
	CreateDynamicObject(1481,3280.6001000,169.7000000,32.5000000,0.0000000,0.0000000,30.0000000, .worldid = 0,.streamdistance = 300); //object(dyn_bar_b_q) (1)
	CreateDynamicObject(3884,3251.0000000,151.1000100,47.1000000,0.0000000,0.0000000,174.0000000, .worldid = 0,.streamdistance = 300); //object(samsite_sfxrf) (1)
	CreateDynamicObject(3884,3232.1999500,304.5000000,91.9000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(samsite_sfxrf) (2)
	CreateDynamicObject(3884,3219.3999000,245.2000000,91.9000000,0.0000000,0.0000000,146.0000000, .worldid = 0,.streamdistance = 300); //object(samsite_sfxrf) (3)
	CreateDynamicObject(2985,3071.6999500,76.1000000,34.9000000,359.7800000,30.4980000,228.1250000, .worldid = 0,.streamdistance = 300); //object(minigun_base) (1)
	CreateDynamicObject(2985,3062.8000500,85.4000000,34.9000000,359.7910000,34.7440000,236.1360000, .worldid = 0,.streamdistance = 300); //object(minigun_base) (2)
	CreateDynamicObject(10183,3248.0000000,170.2000000,30.7000000,0.0000000,359.2500000,165.0000000, .worldid = 0,.streamdistance = 300); //object(ferspaces) (1)
	CreateDynamicObject(4726,3366.1001000,234.8000000,27.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(libtwrhelipd_lan2) (2)
	CreateDynamicObject(3934,3309.5000000,320.2000100,28.1000000,0.0000000,0.0000000,30.0000000, .worldid = 0,.streamdistance = 300); //object(helipad01) (1)
	CreateDynamicObject(3934,3322.5000000,298.3999900,27.9000000,0.0000000,0.0000000,29.9990000, .worldid = 0,.streamdistance = 300); //object(helipad01) (2)
	CreateDynamicObject(3934,3334.6999500,277.3999900,27.7000000,0.0000000,0.0000000,29.9980000, .worldid = 0,.streamdistance = 300); //object(helipad01) (3)
	CreateDynamicObject(3785,3328.8999000,256.6000100,27.5000000,0.0000000,270.0000000,32.0000000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (1)
	CreateDynamicObject(3785,3334.5000000,259.7999900,27.5000000,0.0000000,270.0000000,31.9980000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (2)
	CreateDynamicObject(3785,3340.8000500,263.5000000,27.5000000,0.0000000,270.0000000,31.9980000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (3)
	CreateDynamicObject(3785,3346.8999000,267.0000000,27.5000000,0.0000000,270.0000000,31.9980000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (4)
	CreateDynamicObject(3785,3350.0000000,271.7000100,27.5000000,0.0000000,270.0000000,71.9970000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (5)
	CreateDynamicObject(3785,3346.1001000,279.8999900,27.6000000,0.0000000,270.0000000,119.9930000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (6)
	CreateDynamicObject(3785,3338.5000000,293.3999900,27.8000000,0.0000000,270.0000000,119.9930000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (7)
	CreateDynamicObject(3785,3332.1999500,304.5000000,27.9000000,0.0000000,270.0000000,119.9930000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (8)
	CreateDynamicObject(3785,3322.3999000,321.7999900,28.0000000,0.0000000,270.0000000,119.9930000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (9)
	CreateDynamicObject(3785,3313.8000500,337.0000000,28.2000000,0.0000000,270.0000000,119.9930000, .worldid = 0,.streamdistance = 300); //object(bulkheadlight) (10)
	CreateDynamicObject(5333,2888.3999000,-155.8000000,16.9000000,358.2450000,359.0000000,241.4600000, .worldid = 0,.streamdistance = 300); //object(sanpedbigslt_las2) (1)
	CreateDynamicObject(3265,2989.3000500,4.4000000,28.3000000,0.0000000,0.0000000,343.9890000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (4)
	CreateDynamicObject(3265,2882.8999000,-152.8999900,19.1000000,0.0000000,0.0000000,355.9980000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (1)
	CreateDynamicObject(747,3209.1992200,213.0000000,31.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2947.3999000,-63.1000000,18.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2949.1001000,-60.6000000,18.1000000,0.0000000,0.0000000,164.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2936.1001000,-53.1000000,18.1000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2880.3999000,-158.8999900,17.0000000,0.0000000,0.0000000,250.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2878.1001000,-162.5000000,16.6000000,0.0000000,0.0000000,249.9940000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2875.6001000,-166.1000100,16.2000000,0.0000000,0.0000000,249.9940000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2873.1999500,-170.1000100,15.9000000,0.0000000,0.0000000,249.9940000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2869.8000500,-174.3999900,15.2000000,0.0000000,0.0000000,249.9940000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2868.1001000,-178.6000100,14.8000000,0.0000000,0.0000000,249.9940000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,2865.6999500,-182.7000000,14.2000000,0.0000000,0.0000000,249.9940000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(3265,3038.3999000,57.9000000,29.5000000,0.0000000,0.0000000,343.9890000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (4)
	CreateDynamicObject(3265,3049.6992200,70.1992200,29.7000000,0.0000000,0.0000000,343.9820000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (4)
	CreateDynamicObject(3265,3049.1999500,50.6000000,29.5000000,0.0000000,0.0000000,285.9870000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (4)
	CreateDynamicObject(3265,3058.3000500,60.8000000,29.7000000,0.0000000,0.0000000,295.9870000, .worldid = 0,.streamdistance = 300); //object(privatesign4) (4)
	CreateDynamicObject(3264,3062.1999500,84.7000000,29.9000000,0.0000000,0.0000000,345.9980000, .worldid = 0,.streamdistance = 300); //object(privatesign3) (1)
	CreateDynamicObject(3264,3071.1001000,74.7000000,29.4000000,0.0000000,0.0000000,289.9950000, .worldid = 0,.streamdistance = 300); //object(privatesign3) (2)
	CreateDynamicObject(747,3209.8000500,211.1000100,31.0000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (3)
	CreateDynamicObject(747,3217.3000500,202.8000000,30.7000000,0.0000000,0.0000000,0.0000000, .worldid = 0,.streamdistance = 300); //object(sm_scrub_rock3) (2)
	CreateDynamicObject(4574,2949.8000500,-60.6000000,-5.6000000,0.0000000,0.5000000,326.5000000, .worldid = 0,.streamdistance = 300); //object(stolenbuilds13) (1)
	CreateDynamicObject(4574,2935.0000000,-52.5000000,-5.0000000,0.0000000,0.5000000,326.2470000, .worldid = 0,.streamdistance = 300); //object(stolenbuilds13) (2)
	CreateDynamicObject(2927,2870.6001000,-214.3000000,6.8000000,292.1890000,11.9910000,86.1260000, .worldid = 0,.streamdistance = 300); //object(a51_blastdoorr) (1)
	CreateDynamicObject(8947,3330.0000000,201.3000000,33.4000000,0.0000000,0.0000000,210.0000000, .worldid = 0,.streamdistance = 300); //object(vgelkup) (1)
	CreateDynamicObject(8947,3407.6001000,245.2000000,12.3000000,0.0000000,0.0000000,120.0000000, .worldid = 0,.streamdistance = 300); //object(vgelkup) (4)
	CreateDynamicObject(8947,3400.1999500,258.0000000,12.3000000,0.0000000,0.0000000,119.9980000, .worldid = 0,.streamdistance = 300); //object(vgelkup) (5)
	CreateDynamicObject(8947,3392.8000500,270.7999900,12.3000000,0.0000000,0.0000000,119.9980000, .worldid = 0,.streamdistance = 300); //object(vgelkup) (6)
	CreateDynamicObject(1622,3401.6001000,231.1000100,26.2000000,0.0000000,0.0000000,187.9930000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (15)
	CreateDynamicObject(1622,3421.5000000,246.3000000,15.2000000,0.0000000,346.5000000,219.9930000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (15)
	CreateDynamicObject(1622,3414.0000000,259.1000100,15.2000000,0.0000000,346.4980000,219.9900000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (15)
	CreateDynamicObject(1622,3406.6001000,272.0000000,15.2000000,0.0000000,346.4980000,219.9900000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (15)
	CreateDynamicObject(1622,3399.1999500,283.5000000,21.2000000,0.0000000,332.4980000,127.9900000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (15)
	CreateDynamicObject(1622,3397.6001000,232.8000000,43.1000000,0.8870000,306.2360000,213.1950000, .worldid = 0,.streamdistance = 300); //object(nt_securecam2_01) (15)
*/
	//Shield Interior
	CreateDynamicObject(14853, 320.16, 182.20, 1103.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3113, 290.48, 172.15, 1110.38,   0.00, 180.00, 270.54, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3113, 294.61, 173.11, 1092.20,   0.00, 0.00, 90.44, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19313, 290.33, 171.03, 1103.23,   0.00, 0.00, 0.67, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 285.78, 171.05, 1103.86,   30.00, 0.00, 180.31, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 294.43, 171.04, 1103.86,   30.00, 0.00, 180.31, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 290.20, 171.04, 1103.86,   30.00, 0.00, 180.31, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2205, 296.45, 171.95, 1098.18,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2205, 289.57, 171.95, 1098.18,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2205, 287.34, 171.95, 1098.18,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2205, 285.09, 171.96, 1098.18,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(11245, 288.17, 169.96, 1104.77,   20.00, -20.00, 184.30, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(11245, 291.39, 169.90, 1104.73,   -20.00, -20.00, 357.81, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(14858, 300.00, 182.75, 1103.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2205, 291.85, 171.96, 1098.18,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2205, 294.12, 171.95, 1098.18,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1713, 286.44, 154.36, 1098.19,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1713, 281.38, 198.66, 1098.17,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1713, 283.84, 155.45, 1098.17,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2311, 286.00, 157.25, 1098.25,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1775, 288.43, 154.27, 1099.25,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1537, 293.61, 152.32, 1098.21,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1537, 292.11, 152.32, 1098.21,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(16665, 347.62, 168.21, 1096.48,   0.00, 0.00, 180.30, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19371, 340.99, 180.58, 1103.17,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19371, 346.30, 180.57, 1103.17,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(16662, 358.77, 160.45, 1097.00,   -26.00, 90.00, 180.25, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(14596, 339.93, 166.03, 1107.20,   0.00, 0.00, 270.31, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19394, 344.00, 205.08, 1104.10,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 350.33, 205.01, 1107.54,   0.00, 180.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 350.31, 205.09, 1101.87,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 344.00, 205.91, 1107.58,   0.00, 180.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 343.98, 208.29, 1104.10,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 350.33, 208.27, 1101.87,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1651, 350.38, 204.76, 1104.71,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1651, 350.38, 206.66, 1104.71,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 344.00, 205.13, 1107.58,   0.00, 180.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 350.33, 208.21, 1107.54,   0.00, 180.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1649, 350.26, 205.67, 1104.29,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 356.31, 206.72, 1105.95,   4.00, -18.00, 67.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2637, 353.97, 205.72, 1102.74,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3396, 349.76, 205.18, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1715, 347.89, 206.21, 1102.35,   0.00, 0.00, 69.19, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1715, 347.95, 204.13, 1102.35,   0.00, 0.00, 117.52, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3386, 347.97, 207.42, 1102.35,   0.00, 0.00, 91.76, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2612, 345.67, 206.91, 1104.22,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2616, 353.11, 206.93, 1104.25,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1721, 352.38, 205.66, 1102.34,   0.00, 0.00, 270.71, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1721, 355.62, 205.62, 1102.34,   0.00, 0.00, 90.71, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2196, 354.24, 206.31, 1103.15,   0.00, 0.00, 300.68, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1893, 352.53, 205.12, 1106.40,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1494, 343.99, 204.34, 1102.35,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1808, 335.73, 191.86, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1738, 286.81, 179.50, 1098.73,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(14791, 309.80, 203.03, 1104.87,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2063, 272.61, 202.02, 1099.12,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2063, 275.23, 202.02, 1099.12,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2063, 269.69, 202.02, 1099.12,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2063, 269.69, 199.40, 1099.12,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 270.83, 197.16, 1098.20,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2166, 269.87, 196.17, 1098.20,   0.00, 0.00, 359.90, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1715, 271.27, 195.65, 1098.22,   0.00, 0.00, 180.01, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2000, 275.01, 198.40, 1098.19,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2000, 275.01, 197.86, 1098.19,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1575, 275.15, 202.91, 1099.05,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1575, 275.17, 202.45, 1099.05,   0.00, 0.00, 17.02, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1575, 275.15, 202.07, 1099.05,   0.00, 0.00, 12.42, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1575, 275.15, 201.73, 1099.05,   0.00, 0.00, 12.42, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1575, 275.17, 201.91, 1099.19,   0.00, 0.00, 357.41, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1575, 275.17, 202.35, 1099.19,   0.00, 0.00, 267.61, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1575, 275.17, 202.89, 1099.21,   0.00, 0.00, 357.41, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19273, 272.20, 195.20, 1099.89,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1279, 275.23, 201.58, 1098.61,   0.00, 0.00, 99.87, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1279, 275.26, 202.70, 1098.61,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1636, 269.71, 203.13, 1100.36,   90.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1636, 269.71, 202.83, 1100.36,   90.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1636, 269.79, 202.57, 1100.36,   90.00, 0.00, 236.82, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1636, 269.67, 202.35, 1100.36,   90.00, 0.00, 208.51, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1577, 275.21, 203.09, 1099.46,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1577, 275.21, 202.75, 1099.46,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1577, 275.21, 202.91, 1099.60,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 200.43, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 200.31, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 200.19, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 200.07, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 199.95, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 199.85, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 199.75, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2061, 269.68, 199.65, 1100.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2057, 275.27, 202.82, 1100.09,   0.00, 0.00, 74.94, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1650, 275.27, 200.60, 1098.51,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1650, 275.33, 200.40, 1098.51,   0.00, 0.00, 215.52, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1550, 272.63, 203.02, 1100.31,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(355, 269.51, 201.93, 1100.14,   -185.00, -258.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(355, 269.51, 201.63, 1100.14,   -185.00, -258.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(362, 269.48, 200.99, 1100.28,   0.00, 31.00, 50.05, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2358, 269.69, 200.29, 1099.60,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2358, 269.71, 198.73, 1099.16,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2359, 269.65, 198.87, 1100.12,   0.00, 0.00, 82.01, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.75, 199.49, 1099.15,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.75, 199.51, 1099.60,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.75, 199.33, 1099.60,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.75, 199.15, 1099.60,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.61, 198.67, 1099.60,   0.00, 0.00, 153.67, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2043, 269.76, 198.49, 1099.60,   0.00, 0.00, 154.97, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.75, 198.97, 1099.60,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19142, 272.58, 202.08, 1100.16,   0.00, 270.00, 250.81, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19142, 272.63, 201.62, 1100.16,   0.00, 270.00, 270.61, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3015, 272.54, 201.03, 1100.03,   0.00, 0.00, 350.03, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3016, 269.70, 200.20, 1099.19,   0.00, 0.00, 76.41, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3016, 269.70, 199.80, 1099.19,   0.00, 0.00, 86.89, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.75, 199.69, 1099.60,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2040, 269.75, 199.31, 1099.15,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(372, 269.62, 201.11, 1099.04,   90.00, 0.00, 314.53, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(353, 269.77, 202.73, 1099.51,   -33.00, -4.00, 113.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(356, 269.50, 201.18, 1099.54,   0.00, 0.00, 94.12, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(359, 270.04, 203.10, 1098.77,   25.00, -91.00, 251.94, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(348, 269.77, 203.11, 1099.02,   0.00, 270.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2358, 269.68, 200.28, 1098.68,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2358, 269.68, 199.52, 1098.68,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2358, 269.66, 198.70, 1098.68,   0.00, 0.00, 99.97, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3124, 273.07, 202.37, 1098.83,   127.00, 69.00, 200.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(353, 269.49, 202.66, 1099.51,   0.00, 0.00, 95.96, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(356, 269.54, 201.66, 1099.54,   -33.00, 0.00, 94.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(356, 269.66, 201.15, 1099.54,   0.00, 0.00, 94.12, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(356, 269.80, 201.16, 1099.54,   0.00, 0.00, 94.12, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(356, 269.68, 201.68, 1099.54,   -62.00, 0.00, 94.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(372, 269.48, 201.45, 1099.04,   90.00, 0.00, 314.53, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(372, 269.76, 201.39, 1099.04,   90.00, 0.00, 293.44, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(353, 269.55, 202.56, 1099.51,   0.00, 0.00, 95.96, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(348, 269.77, 203.03, 1099.02,   0.00, 270.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(348, 269.77, 202.95, 1099.02,   0.00, 270.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(348, 269.77, 202.87, 1099.02,   0.00, 270.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(348, 269.79, 202.83, 1099.04,   90.00, 270.00, 339.52, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(352, 269.71, 202.29, 1099.05,   90.00, 0.00, 260.14, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(352, 269.65, 201.89, 1099.05,   90.00, 0.00, 255.59, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(352, 269.75, 202.09, 1099.05,   90.00, 0.00, 313.15, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(351, 269.42, 202.79, 1098.61,   -11.00, 4.00, 54.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(351, 269.42, 202.67, 1098.61,   -11.00, 4.00, 54.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(351, 269.42, 202.57, 1098.61,   11.00, 4.00, 53.71, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(351, 269.44, 202.47, 1098.61,   -11.00, 4.00, 54.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(351, 269.46, 202.43, 1098.61,   -11.00, 4.00, 54.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3124, 272.99, 201.55, 1098.83,   127.00, 69.00, 200.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18755, 308.22, 199.33, 1100.11,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18755, 314.44, 199.33, 1100.11,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18757, 310.21, 199.31, 1100.08,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18756, 306.22, 199.30, 1100.10,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18757, 316.47, 199.31, 1100.08,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18756, 312.48, 199.30, 1100.10,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2922, 310.20, 197.24, 1099.85,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2922, 316.44, 197.26, 1099.85,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(16151, 298.84, 202.44, 1103.70,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2614, 290.03, 178.29, 1101.74,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2167, 290.09, 178.34, 1098.19,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2164, 291.45, 178.34, 1098.18,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2164, 287.87, 178.34, 1098.18,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2197, 277.28, 199.49, 1098.24,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2197, 294.69, 175.61, 1098.24,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 292.56, 175.29, 1098.17,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 288.64, 175.29, 1098.17,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2173, 290.61, 175.30, 1098.17,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2264, 295.59, 175.17, 1100.74,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 287.91, 176.62, 1098.17,   0.00, 0.00, 9.87, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 292.12, 176.79, 1098.17,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(970, 299.04, 197.52, 1103.85,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(970, 303.18, 197.52, 1103.85,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1893, 273.99, 201.13, 1102.28,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1893, 270.99, 201.13, 1102.28,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1703, 319.29, 201.32, 1103.31,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1703, 319.29, 203.88, 1103.31,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(970, 307.30, 197.52, 1103.85,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(970, 312.54, 197.52, 1103.85,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(970, 317.80, 197.52, 1103.85,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2311, 317.40, 201.16, 1103.35,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(746, 325.05, 186.93, 1102.65,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(758, 330.97, 186.41, 1102.45,   0.00, 0.00, 16.78, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(804, 327.24, 185.68, 1103.45,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 283.60, 165.64, 1104.39,   0.00, 0.00, 159.69, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 304.62, 198.17, 1103.34,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 319.31, 198.43, 1103.30,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2269, 305.12, 207.01, 1105.22,   0.00, 0.00, 0.79, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1846, 296.94, 205.41, 1105.66,   90.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2229, 297.54, 204.08, 1105.01,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2229, 297.54, 207.36, 1105.01,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19172, 319.79, 201.57, 1105.77,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2256, 312.59, 207.46, 1105.63,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1703, 318.49, 198.55, 1103.31,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1776, 318.90, 207.05, 1104.45,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1775, 317.19, 206.96, 1104.45,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(14782, 273.87, 162.31, 1099.20,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3117, 285.56, 183.91, 1097.14,   90.00, 0.00, 359.19, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18070, 267.00, 182.44, 1097.92,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2491, 268.94, 182.74, 1097.83,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19128, 264.65, 182.51, 1099.59,   270.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 271.75, 184.79, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(330, 268.80, 182.53, 1099.57,   0.00, -17.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1886, 268.68, 182.61, 1102.22,   30.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1656, 269.19, 150.56, 1098.33,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18070, 266.69, 182.43, 1098.20,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 271.75, 180.01, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 273.93, 180.01, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 273.93, 184.79, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 275.91, 184.79, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 275.91, 180.01, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 277.91, 184.79, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 277.91, 180.01, 1098.64,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2614, 264.75, 187.77, 1100.30,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2614, 264.75, 177.43, 1100.30,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18070, 267.00, 182.74, 1097.90,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18070, 267.00, 182.14, 1097.90,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 277.26, 176.33, 1098.64,   0.00, 0.00, 250.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3657, 277.24, 188.49, 1098.64,   0.00, 0.00, 290.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19464, 266.35, 182.69, 1098.56,   0.00, 90.00, 0.92, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 283.81, 179.79, 1098.21,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 265.26, 174.93, 1098.21,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(11631, 276.59, 200.92, 1099.44,   0.00, 0.00, 90.33, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 277.53, 201.63, 1098.17,   0.00, 0.00, 328.72, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3386, 278.91, 202.88, 1098.27,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3386, 277.93, 202.88, 1098.27,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2197, 294.69, 174.75, 1098.24,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2197, 268.73, 196.86, 1098.24,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 279.38, 198.12, 1099.40,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 279.38, 198.12, 1099.86,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 279.38, 198.12, 1100.32,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2612, 275.95, 196.75, 1099.92,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3077, 270.72, 165.92, 1098.17,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1811, 272.41, 162.24, 1098.79,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1811, 269.40, 162.21, 1098.79,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 268.74, 162.93, 1098.18,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 271.78, 162.93, 1098.18,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(14401, 262.14, 161.66, 1098.49,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 268.74, 160.45, 1098.18,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 271.78, 160.43, 1098.18,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1811, 269.40, 159.59, 1098.79,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1811, 272.41, 159.64, 1098.79,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2051, 269.66, 165.87, 1100.62,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18013, 324.54, 177.27, 1104.60,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(321, 272.74, 202.57, 1099.48,   91.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(322, 272.59, 202.43, 1099.58,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2058, 271.48, 165.89, 1099.85,   90.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2628, 264.15, 165.16, 1098.20,   0.00, 0.00, 32.88, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2627, 266.22, 165.02, 1098.20,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2630, 267.01, 161.00, 1098.20,   0.00, 0.00, 271.21, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2627, 267.33, 165.02, 1098.20,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2631, 264.11, 161.65, 1098.21,   0.00, 0.00, 90.75, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2916, 263.53, 161.61, 1098.49,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2915, 264.56, 160.41, 1098.37,   0.00, 0.00, 47.62, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 269.67, 202.99, 1101.78,   0.00, 0.00, 159.36, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(14401, 277.80, 162.90, 1098.49,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2916, 263.53, 161.97, 1098.49,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2630, 267.14, 159.48, 1098.20,   0.00, 0.00, 258.37, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(5737, 309.29, 176.45, 1092.69,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3498, 296.52, 189.24, 1095.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18013, 314.02, 177.09, 1104.60,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 298.50, 189.42, 1099.26,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 296.27, 187.34, 1099.26,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 296.27, 183.90, 1099.26,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3498, 296.52, 182.00, 1095.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 301.96, 189.42, 1099.26,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 305.42, 189.42, 1099.26,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3498, 307.38, 189.24, 1095.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3498, 310.56, 189.24, 1095.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 312.56, 189.42, 1099.26,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3498, 321.46, 189.24, 1095.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 319.48, 189.42, 1099.26,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 316.02, 189.42, 1099.26,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1698, 308.99, 189.16, 1098.30,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1698, 296.50, 180.32, 1098.30,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 303.32, 187.36, 1099.23,   0.00, 0.00, 332.32, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 297.89, 187.30, 1099.21,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 300.41, 184.90, 1099.23,   0.00, 0.00, 345.51, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 300.41, 184.90, 1099.23,   0.00, 0.00, 332.32, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 318.98, 187.54, 1099.23,   0.00, 0.00, 9.24, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 302.57, 181.43, 1099.23,   0.00, 0.00, 332.32, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 311.78, 187.48, 1099.23,   0.00, 0.00, 332.32, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1594, 315.18, 188.03, 1099.23,   0.00, 0.00, 5.02, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2614, 289.60, 190.81, 1103.75,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2682, 297.87, 187.36, 1099.80,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2682, 311.72, 187.50, 1099.80,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2682, 315.15, 188.04, 1099.80,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2682, 318.91, 187.58, 1099.80,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2821, 303.33, 187.46, 1099.60,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2714, 312.64, 183.85, 1102.85,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1569, 311.09, 182.78, 1098.72,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1569, 314.01, 182.78, 1098.72,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 260.38, 170.76, 1098.21,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1738, 330.44, 206.89, 1102.97,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 296.44, 184.13, 1105.55,   0.00, 0.00, 245.68, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2267, 291.92, 179.38, 1100.24,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2258, 300.52, 179.48, 1101.04,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19304, 255.22, 185.69, 1098.95,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19304, 255.22, 184.45, 1098.95,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19304, 255.22, 183.21, 1098.95,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19304, 255.22, 180.19, 1098.95,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19304, 255.22, 178.95, 1098.95,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19459, 255.16, 182.41, 1102.44,   180.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1721, 251.23, 182.35, 1098.19,   0.00, 0.00, 261.65, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18067, 251.22, 182.60, 1098.21,   0.00, 0.00, 2.28, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18981, 296.60, 164.85, 1098.36,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18981, 250.70, 165.51, 1098.36,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18981, 250.70, 199.77, 1098.36,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(936, 252.64, 178.93, 1098.63,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19304, 253.02, 191.20, 1101.32,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19303, 252.13, 191.21, 1099.45,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1771, 251.97, 188.12, 1098.83,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1771, 251.97, 176.54, 1098.83,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19304, 253.02, 174.36, 1101.34,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19303, 252.14, 174.36, 1099.45,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19273, 259.67, 185.93, 1099.82,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19273, 259.67, 178.75, 1099.82,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 265.26, 190.53, 1098.21,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 286.68, 198.63, 1098.21,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19128, 253.01, 176.27, 1098.13,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19128, 253.01, 189.21, 1098.13,   180.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1744, 252.86, 195.39, 1100.04,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2318, 253.34, 195.10, 1100.66,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1744, 253.68, 170.15, 1100.04,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2318, 253.18, 170.46, 1100.66,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(14455, 268.62, 203.38, 1099.85,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 266.35, 202.28, 1098.15,   0.00, 0.00, 357.55, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2206, 267.37, 201.12, 1098.14,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2828, 267.44, 200.86, 1099.06,   0.00, 0.00, 3.90, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2059, 266.29, 201.07, 1099.08,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1715, 267.20, 199.29, 1098.16,   0.00, 0.00, 185.74, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1715, 265.67, 199.29, 1098.16,   0.00, 0.00, 171.83, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2167, 263.72, 197.95, 1098.20,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2197, 277.28, 198.63, 1098.24,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2197, 267.83, 196.86, 1098.24,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2615, 273.21, 161.52, 1100.43,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19454, 343.43, 175.85, 1105.11,   0.00, 90.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19451, 344.79, 175.79, 1103.26,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19447, 343.40, 176.62, 1102.25,   0.00, 90.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19451, 342.49, 175.82, 1103.26,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1893, 343.63, 176.33, 1105.46,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3117, 286.43, 183.93, 1096.40,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 336.40, 192.10, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 350.08, 197.54, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 340.68, 198.24, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 337.80, 196.86, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 336.38, 190.24, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 350.93, 189.26, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 356.76, 199.25, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 353.89, 197.89, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 345.47, 197.57, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 344.51, 198.58, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 341.64, 197.21, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 340.58, 192.10, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 340.58, 190.24, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 344.58, 192.10, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 344.58, 190.24, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 348.58, 192.10, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 348.04, 186.49, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 350.51, 185.26, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 355.76, 197.32, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 349.05, 189.39, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 348.58, 190.24, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 335.94, 197.88, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 355.76, 195.46, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 355.76, 193.60, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 355.76, 191.74, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 352.95, 198.91, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 351.45, 194.25, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 355.76, 189.86, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 355.76, 188.00, 1102.35,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 356.77, 185.28, 1102.35,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 351.84, 188.24, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2193, 352.41, 184.24, 1102.35,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1808, 331.55, 206.77, 1102.35,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2001, 347.48, 181.33, 1102.34,   0.00, 0.00, 1.34, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(16662, 359.79, 160.43, 1097.00,   -26.00, 90.00, 180.25, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2951, 341.25, 167.70, 1098.57,   0.00, 0.00, 90.62, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19369, 340.20, 169.76, 1097.69,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19369, 340.24, 166.48, 1097.69,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19364, 342.17, 164.98, 1097.32,   0.00, 0.00, 14.88, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19364, 342.09, 171.26, 1097.32,   0.00, 0.00, 345.33, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 340.05, 168.06, 1096.41,   0.00, 90.00, 1.43, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2951, 341.29, 167.70, 1098.57,   0.00, 0.00, 90.62, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 345.13, 166.54, 1097.02,   0.00, 0.00, 14.64, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2357, 349.38, 167.53, 1095.87,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2357, 349.38, 168.75, 1095.87,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 347.83, 166.16, 1095.46,   0.00, 0.00, 180.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 346.34, 168.07, 1095.46,   0.00, 0.00, 90.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 348.83, 166.16, 1095.46,   0.00, 0.00, 180.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 349.83, 166.16, 1095.46,   0.00, 0.00, 180.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 350.83, 166.16, 1095.46,   0.00, 0.00, 180.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 350.83, 170.10, 1095.46,   0.00, 0.00, 0.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 349.83, 170.10, 1095.46,   0.00, 0.00, 0.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 348.83, 170.10, 1095.46,   0.00, 0.00, 0.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 347.83, 170.10, 1095.46,   0.00, 0.00, 0.49, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 357.54, 172.24, 1095.47,   0.00, 0.00, 297.90, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2165, 357.97, 165.23, 1095.47,   0.00, 0.00, 241.10, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 359.59, 162.81, 1098.37,   0.00, 0.00, 242.50, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(16782, 359.80, 172.46, 1097.67,   0.00, 0.00, 206.63, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(16782, 358.84, 168.23, 1097.56,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3386, 357.26, 161.94, 1095.41,   0.00, 0.00, 321.62, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 358.96, 169.75, 1100.66,   0.00, 0.00, 52.39, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 360.58, 164.68, 1097.95,   0.00, 0.00, 242.50, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 360.58, 164.68, 1097.51,   0.00, 0.00, 242.50, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 360.58, 164.68, 1098.37,   0.00, 0.00, 242.50, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 359.59, 162.81, 1097.93,   0.00, 0.00, 242.50, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2606, 359.59, 162.81, 1097.49,   0.00, 0.00, 242.50, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1715, 356.64, 171.16, 1095.47,   0.00, 0.00, 121.37, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1715, 356.64, 165.32, 1095.47,   0.00, 0.00, 58.92, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2886, 340.43, 169.66, 1097.93,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1808, 342.54, 164.79, 1096.49,   0.00, 0.00, 107.56, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3850, 345.09, 169.86, 1097.02,   0.00, 0.00, 346.59, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3877, 351.21, 168.17, 1104.10,   0.00, 180.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 356.42, 203.18, 1106.72,   0.00, 0.00, 62.60, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 340.31, 169.56, 1099.53,   0.00, 0.00, 62.60, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2001, 335.65, 190.73, 1102.34,   0.00, 0.00, 1.34, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18036, 349.64, 184.07, 1110.10,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3117, 343.69, 180.56, 1105.92,   90.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19365, 341.31, 172.53, 1109.33,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3117, 343.46, 171.61, 1110.98,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3117, 343.51, 172.56, 1111.66,   90.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19438, 345.19, 172.55, 1109.14,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18032, 351.76, 175.23, 1109.60,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 345.30, 173.88, 1111.75,   0.00, 0.00, 226.33, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2774, 351.00, 187.39, 1111.95,   0.00, 90.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1585, 355.46, 191.13, 1107.94,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1586, 344.92, 182.66, 1107.82,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1583, 352.24, 185.70, 1107.81,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1584, 347.02, 192.22, 1108.00,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1585, 350.48, 196.15, 1107.94,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1586, 350.60, 188.88, 1107.82,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1583, 344.15, 188.61, 1108.22,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1584, 354.07, 192.46, 1108.00,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1585, 348.39, 185.23, 1107.94,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3633, 347.71, 189.97, 1108.58,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1431, 345.64, 182.05, 1108.62,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1431, 354.56, 191.55, 1108.62,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3633, 352.73, 184.65, 1108.58,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(16656, 339.70, 183.84, 1117.06,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3117, 345.75, 171.68, 1114.86,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3117, 341.51, 171.68, 1114.86,   0.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2951, 343.50, 171.67, 1116.59,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3395, 347.54, 184.72, 1114.07,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3396, 331.63, 184.79, 1114.06,   0.00, 0.00, 180.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 343.95, 194.93, 1115.76,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 343.95, 194.93, 1114.64,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 341.65, 194.93, 1114.64,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 339.65, 194.93, 1114.64,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 337.65, 194.93, 1114.64,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 335.65, 194.93, 1114.64,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 335.65, 194.93, 1115.76,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 337.65, 194.93, 1115.76,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 339.65, 194.93, 1115.76,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(964, 341.65, 194.93, 1115.76,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3383, 334.67, 189.57, 1114.01,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3383, 338.97, 189.57, 1114.01,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3383, 342.97, 189.57, 1114.01,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(3092, 343.11, 189.22, 1115.19,   90.00, 90.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(18981, 295.75, 178.85, 1102.26,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2063, 331.46, 189.24, 1114.97,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2063, 331.46, 192.44, 1114.97,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1616, 347.55, 183.72, 1118.57,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1713, 283.84, 158.52, 1098.17,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1713, 284.08, 198.66, 1098.17,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1713, 286.57, 197.66, 1098.17,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1775, 286.61, 193.01, 1099.30,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2010, 260.23, 194.70, 1098.21,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(19438, 288.23, 183.92, 1098.99,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2001, 346.06, 161.19, 1113.92,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1714, 333.03, 184.52, 1114.01,   0.00, 0.00, 224.16, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1713, 262.86, 154.93, 1098.20,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(1808, 262.47, 157.64, 1098.20,   0.00, 0.00, 90.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2001, 282.77, 154.79, 1098.18,   0.00, 0.00, 0.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);
	CreateDynamicObject(2963, 337.12, 182.70, 1115.42,   0.00, 0.00, 270.00, .interiorid = 0, .worldid = 81699, .streamdistance = 200);

	//URL SF Track
    CreateDynamicObject(5837,-1818.1999500,-761.2000100,33.9000000,0.0000000,3.2500000,90.0000000, .worldid = 0, .streamdistance = 200); //object(ci_guardhouse1) (1)
	CreateDynamicObject(966,-1801.3000500,-757.5000000,31.9000000,0.0000000,0.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(bar_gatebar01) (1)
	CreateDynamicObject(966,-1816.0000000,-757.7999900,31.9000000,0.0000000,0.0000000,182.0000000, .worldid = 0, .streamdistance = 200); //object(bar_gatebar01) (2)
	CreateDynamicObject(997,-1800.6999500,-757.5000000,32.0000000,0.0000000,357.5000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier3) (1)
	CreateDynamicObject(996,-1826.6999500,-756.7000100,35.7000000,0.0000000,24.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (1)
	CreateDynamicObject(996,-1834.3000500,-756.7999900,39.0000000,0.0000000,24.0000000,0.0000000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (2)
	CreateDynamicObject(5837,-1493.3000500,-1239.1999500,102.2000000,0.0000000,0.0000000,132.0000000, .worldid = 0, .streamdistance = 200); //object(ci_guardhouse1) (2)
	CreateDynamicObject(996,-1504.8000500,-1262.6999500,100.8000000,0.0000000,358.2500000,44.0000000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (3)
	CreateDynamicObject(996,-1510.9000200,-1268.3000500,100.5000000,0.0000000,358.2480000,42.4950000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (4)
	CreateDynamicObject(966,-1500.0999800,-1256.6999500,100.4000000,0.0000000,357.2500000,226.0000000, .worldid = 0, .streamdistance = 200); //object(bar_gatebar01) (3)
	CreateDynamicObject(966,-1489.6999500,-1246.1999500,100.4000000,0.0000000,357.2480000,44.0000000, .worldid = 0, .streamdistance = 200); //object(bar_gatebar01) (4)
	CreateDynamicObject(997,-1489.5000000,-1245.8000500,100.3000000,0.0000000,356.0000000,46.0000000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier3) (2)
	CreateDynamicObject(996,-1581.4000200,-1442.5999800,41.2000000,0.0000000,2.2500000,348.0000000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (5)
	CreateDynamicObject(996,-1573.4000200,-1444.5000000,40.9000000,0.0000000,2.2470000,327.7470000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (6)
	CreateDynamicObject(996,-1566.3000500,-1448.8000500,40.6000000,0.0000000,2.2410000,336.9940000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (9)
	CreateDynamicObject(996,-1558.5999800,-1451.8000500,40.3000000,0.0000000,2.2360000,353.7390000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (10)
	CreateDynamicObject(996,-1550.1999500,-1452.4000200,40.0000000,0.0000000,2.2300000,8.2380000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (11)
	CreateDynamicObject(996,-1542.0999800,-1451.0999800,39.7000000,0.0000000,359.4750000,23.7340000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (12)
	CreateDynamicObject(996,-1534.6999500,-1447.5999800,39.9000000,0.0000000,358.9730000,40.7300000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (13)
	CreateDynamicObject(996,-1528.5000000,-1442.1999500,40.0000000,0.0000000,358.9670000,40.7260000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier1) (14)
	CreateDynamicObject(997,-1522.6999500,-1437.3000500,39.5000000,0.2500000,0.0000000,51.7500000, .worldid = 0, .streamdistance = 200); //object(lhouse_barrier3) (3)


	//Bridge Center Barriers
	CreateDynamicObject(968,-93.1000000,-1028.1999500,17.0000000,0.0000000,0.0000000,27.7460000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (1)
	CreateDynamicObject(968,-90.0000000,-1033.3000500,16.9000000,0.0000000,0.0000000,27.7460000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (2)
	CreateDynamicObject(968,-101.6000000,-1014.7999900,17.1000000,0.0000000,0.0000000,27.7460000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (3)
	CreateDynamicObject(968,-106.2000000,-1007.9000200,17.3000000,0.0000000,0.0000000,27.7460000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (4)
	CreateDynamicObject(968,-111.6000000,-1001.0000000,17.6000000,0.0000000,0.0000000,27.7460000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (5)
	CreateDynamicObject(968,-87.5000000,-1038.1999500,16.6000000,0.0000000,0.0000000,27.7460000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (7)
	CreateDynamicObject(968,-357.1000100,-848.9000200,40.3000000,0.0000000,0.0000000,73.0000000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (8)
	CreateDynamicObject(968,-351.2999900,-851.5000000,40.3000000,0.0000000,0.0000000,72.9990000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (9)
	CreateDynamicObject(968,-364.3999900,-845.5999800,40.4000000,0.0000000,0.0000000,72.9990000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (10)
	CreateDynamicObject(968,-369.7000100,-843.0000000,40.4000000,0.0000000,0.0000000,72.9990000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (11)
	CreateDynamicObject(968,-394.0000000,-830.5000000,39.6000000,0.0000000,0.0000000,72.9990000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (12)
	CreateDynamicObject(968,-397.2999900,-829.4000200,39.6000000,0.0000000,0.0000000,72.9990000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (13)
	CreateDynamicObject(968,-401.8999900,-828.9000200,40.0000000,0.0000000,0.0000000,72.9990000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (14)
	CreateDynamicObject(968,-406.5000000,-828.4000200,40.7000000,0.0000000,0.0000000,72.9990000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (15)
	CreateDynamicObject(968,-411.6000100,-827.9000200,41.1000000,0.0000000,0.0000000,99.7450000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-1515.0000000,-818.7999900,52.2000000,0.0000000,0.0000000,78.0000000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (17)
	CreateDynamicObject(968,-1531.8000500,-816.0999800,49.2000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (18)
	CreateDynamicObject(968,-1544.5999800,-813.7999900,47.5000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (19)
	CreateDynamicObject(968,-1563.4000200,-809.7000100,45.3000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (20)
	CreateDynamicObject(968,-1585.0999800,-803.5000000,43.0000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (21)
	CreateDynamicObject(968,-1609.0000000,-795.5000000,40.9000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (22)
	CreateDynamicObject(968,-1625.5999800,-789.5000000,39.6000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (23)
	CreateDynamicObject(968,-1646.6999500,-780.5000000,37.5000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (24)
	CreateDynamicObject(968,-1665.0000000,-772.2000100,35.8000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (25)
	CreateDynamicObject(968,-1685.4000200,-761.4000200,33.8000000,0.0000000,0.0000000,77.9970000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (26)
	CreateDynamicObject(968,-1704.3000500,-750.7999900,31.7000000,0.0000000,0.0000000,64.2470000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (27)
	CreateDynamicObject(968,-1711.6999500,-746.5999800,30.8000000,0.0000000,0.0000000,64.2430000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (28)
	CreateDynamicObject(968,-1722.1999500,-739.9000200,29.0000000,0.0000000,0.0000000,64.2430000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (29)
	CreateDynamicObject(968,-1731.4000200,-733.2999900,27.1000000,0.0000000,0.0000000,64.2430000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (30)
	CreateDynamicObject(968,-1748.1999500,-716.5000000,23.1000000,0.0000000,0.0000000,36.4930000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (31)
	CreateDynamicObject(968,-1751.5000000,-712.5000000,22.4000000,0.0000000,0.0000000,24.4910000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (32)
	CreateDynamicObject(968,-1755.1999500,-705.0000000,21.1000000,0.0000000,0.0000000,24.4890000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (33)
	CreateDynamicObject(3282,-1603.1999500,-784.9000200,46.9000000,358.2540000,356.2480000,341.1350000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (1)
	CreateDynamicObject(3282,-1589.4000200,-789.9000200,48.2000000,358.2570000,354.7470000,341.0850000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (2)
	CreateDynamicObject(3282,-1616.5999800,-780.0999800,45.9000000,358.2560000,354.9980000,341.0930000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (3)
	CreateDynamicObject(3282,-1629.5000000,-775.0999800,44.8000000,358.2530000,354.9960000,336.5930000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (4)
	CreateDynamicObject(3282,-1641.9000200,-769.5000000,43.6000000,358.2480000,354.9900000,336.5880000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (5)
	CreateDynamicObject(3282,-1654.5999800,-763.7999900,42.3000000,358.2480000,354.9900000,336.5880000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (6)
	CreateDynamicObject(3282,-1666.4000200,-758.0000000,41.3000000,358.2480000,354.9900000,332.5880000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (7)
	CreateDynamicObject(3282,-1678.3000500,-751.7000100,40.2000000,358.2480000,354.9900000,332.5840000, .worldid = 0,.streamdistance = 300); //object(cxreffencemsh) (8)
	CreateDynamicObject(968,-419.1000100,-829.5999800,41.4000000,0.0000000,0.0000000,99.7450000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-429.7000100,-832.0000000,41.6000000,0.0000000,0.2500000,116.2450000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-664.9000200,-1003.7999900,63.1000000,0.0000000,358.9970000,98.4910000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-660.0000000,-1002.2000100,62.6000000,0.0000000,358.9950000,98.4870000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-670.2000100,-1004.7000100,63.6000000,0.0000000,358.9950000,98.4870000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-691.7000100,-1008.4000200,65.4000000,0.0000000,359.4950000,98.4870000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-696.9000200,-1008.5999800,65.9000000,0.0000000,0.2450000,98.4810000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-686.0000000,-1007.5000000,64.9000000,0.0000000,359.9950000,98.4810000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-813.4000200,-1008.7999900,75.8000000,0.0000000,359.7420000,124.2310000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-822.2999900,-1013.7000100,77.0000000,0.0000000,359.7360000,124.2280000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-829.7999900,-1017.7999900,78.1000000,0.0000000,359.7360000,124.2280000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-835.0999800,-1020.5999800,78.8000000,0.0000000,357.9860000,134.2280000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-805.0000000,-1007.0999800,75.0000000,0.0000000,359.2360000,100.4780000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-794.4000200,-1004.9000200,73.7000000,0.0000000,358.7310000,112.9780000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-841.5000000,-1027.0999800,79.9000000,0.0000000,357.9840000,134.2250000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-676.7000100,-1005.9000200,64.2000000,0.0000000,359.9950000,98.4810000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-893.2999900,-1114.0999800,92.0000000,0.0000000,357.9840000,227.9750000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-900.5999800,-1106.5999800,91.8000000,0.0000000,357.9790000,220.2210000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-891.5999800,-1115.3000500,91.9000000,0.0000000,357.9790000,234.7220000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-890.0999800,-1116.0999800,91.9000000,0.0000000,357.9790000,233.7220000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-896.5999800,-1110.6999500,92.1000000,0.0000000,357.9790000,227.9720000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-1221.0000000,-777.7000100,57.2000000,0.0000000,0.0000000,42.7500000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (54)
	CreateDynamicObject(968,-1219.0999800,-779.7000100,57.3000000,0.0000000,0.0000000,42.7480000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (55)
	CreateDynamicObject(968,-1216.8000500,-782.0999800,57.3000000,0.0000000,0.0000000,42.7480000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (56)
	CreateDynamicObject(968,-1213.9000200,-785.0999800,57.4000000,0.0000000,0.0000000,42.7480000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (57)
	CreateDynamicObject(968,-1222.5000000,-775.9000200,57.2000000,0.0000000,0.0000000,42.7480000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (58)
	CreateDynamicObject(968,-895.0999800,-1112.3000500,92.1000000,0.0000000,357.9790000,227.9720000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-826.2999900,-1015.9000200,77.6000000,0.0000000,359.7360000,124.2280000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-817.4000200,-1011.0000000,76.4000000,0.0000000,359.7360000,124.2280000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-800.0999800,-1006.0999800,74.5000000,0.0000000,359.2310000,100.4750000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)
	CreateDynamicObject(968,-838.2999900,-1023.7999900,79.4000000,0.0000000,357.9840000,134.2250000, .worldid = 0,.streamdistance = 300); //object(barrierturn) (16)

	//Steve_O_Strings Custom Gang HQ [OID 63168]
	CreateDynamicObject(3095,1580.1992188,-1225.5996094,259.6000061,0.0000000,179.9945068,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (21)
	CreateDynamicObject(3095,1581.5996094,-1237.3994141,263.2000122,0.0000000,90.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1577.1999512,-1236.0000000,262.5000000,0.0000000,90.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1577.0999756,-1225.5000000,261.0000000,0.0000000,90.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(9339,1580.5996094,-1221.0996094,259.7500000,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(sfnvilla001_cm) (1)
	CreateDynamicObject(9339,1580.5999756,-1221.0999756,263.0000000,180.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(sfnvilla001_cm) (2)
	CreateDynamicObject(9339,1593.5996094,-1234.0996094,259.7500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(sfnvilla001_cm) (3)
	CreateDynamicObject(9339,1593.5999756,-1234.0999756,263.0000000,180.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(sfnvilla001_cm) (4)
	CreateDynamicObject(1649,1578.4499512,-1221.0996094,261.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (4)
	CreateDynamicObject(1649,1582.8000488,-1221.0996094,261.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (5)
	CreateDynamicObject(1649,1587.0999756,-1221.0996094,261.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (6)
	CreateDynamicObject(1649,1591.3994141,-1221.0996094,261.2999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (7)
	CreateDynamicObject(1649,1593.5996094,-1223.2998047,261.2999878,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (8)
	CreateDynamicObject(2207,1577.3994141,-1224.0996094,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(med_office7_desk_1) (1)
	CreateDynamicObject(1714,1578.3000488,-1222.0000000,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair1) (2)
	CreateDynamicObject(954,1578.3000488,-1221.0999756,261.2000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_horse_shoe) (1)
	CreateDynamicObject(1210,1577.6992188,-1223.7998047,260.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(briefcase) (1)
	CreateDynamicObject(1212,1578.2998047,-1224.1992188,260.3999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(money) (1)
	CreateDynamicObject(1247,1578.2998047,-1224.2998047,259.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bribe) (1)
	CreateDynamicObject(1254,1578.2998047,-1221.0996094,261.2999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(killfrenzy) (1)
	CreateDynamicObject(1274,1578.8994141,-1221.0996094,261.2000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bigdollar) (1)
	CreateDynamicObject(1274,1577.6992188,-1221.0996094,261.2000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bigdollar) (2)
	CreateDynamicObject(1550,1577.1999512,-1221.5000000,260.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_money_bag) (1)
	CreateDynamicObject(1550,1577.5999756,-1222.0000000,260.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_money_bag) (3)
	CreateDynamicObject(1715,1577.3000488,-1225.5999756,259.6000061,0.0000000,0.0000000,140.9930420, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair2) (1)
	CreateDynamicObject(1715,1578.5996094,-1225.7998047,259.6000061,0.0000000,0.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair2) (2)
	CreateDynamicObject(1715,1579.8994141,-1225.5000000,259.6000061,0.0000000,0.0000000,206.9879150, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair2) (3)
	CreateDynamicObject(1703,1587.9000244,-1237.0999756,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_couch02) (1)
	CreateDynamicObject(1255,848.5999756,-828.0000000,89.0999985,0.0000000,0.0000000,81.9964600, .worldid = 63168, .streamdistance = 120); //object(lounger) (2)
	CreateDynamicObject(3092,878.2999878,-847.0999756,79.5999985,0.0000000,0.0000000,83.9999390, .worldid = 63168, .streamdistance = 120); //object(dead_tied_cop) (2)
	CreateDynamicObject(4100,876.2000122,-846.5000000,78.7500000,0.0000000,0.0000000,90.7486572, .worldid = 63168, .streamdistance = 120); //object(meshfence1_lan) (1)
	CreateDynamicObject(4100,874.7999878,-854.2999878,78.1999969,0.0000000,357.0000000,342.2460938, .worldid = 63168, .streamdistance = 120); //object(meshfence1_lan) (2)
	CreateDynamicObject(4100,856.2999878,-852.5999756,77.5000000,0.0000000,0.0000000,58.4986572, .worldid = 63168, .streamdistance = 120); //object(meshfence1_lan) (3)
	CreateDynamicObject(1498,862.0999756,-843.0999756,76.3000031,0.0000000,0.0000000,24.9997559, .worldid = 63168, .streamdistance = 120); //object(gen_doorext03) (1)
	CreateDynamicObject(947,878.9000244,-851.2999878,79.6999969,0.0000000,0.0000000,80.2468262, .worldid = 63168, .streamdistance = 120); //object(bskballhub_lax01) (1)
	CreateDynamicObject(2114,872.0000000,-848.0000000,76.5999985,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(basketball) (1)
	CreateDynamicObject(9131,857.3994141,-859.7998047,76.0999985,0.0000000,0.0000000,21.9946289, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (2)
	CreateDynamicObject(9131,868.0999756,-856.9000244,77.1999969,0.0000000,0.0000000,20.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (3)
	CreateDynamicObject(9131,880.7999878,-852.0000000,78.8000031,0.0000000,0.0000000,299.9996338, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (5)
	CreateDynamicObject(1649,1593.5996094,-1227.6992188,261.2999878,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (9)
	CreateDynamicObject(9131,857.4000244,-859.7999878,78.3000031,0.0000000,0.0000000,21.9946289, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (2)
	CreateDynamicObject(1598,1581.9000244,-1233.5999756,259.2999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(beachball) (1)
	CreateDynamicObject(1703,1589.9000244,-1241.9000244,259.6000061,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_couch02) (1)
	CreateDynamicObject(1827,1588.8000488,-1239.4000244,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(man_sdr_tables) (1)
	CreateDynamicObject(1646,851.4000244,-831.0000000,88.8000031,0.0000000,0.0000000,203.9941406, .worldid = 63168, .streamdistance = 120); //object(lounge_towel_up) (1)
	CreateDynamicObject(9131,868.0999756,-856.9000244,78.3000031,0.0000000,0.0000000,19.9951172, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (3)
	CreateDynamicObject(9833,851.7000122,-817.2000122,87.9000015,0.0000000,0.0000000,102.7446289, .worldid = 63168, .streamdistance = 120); //object(fountain_sfw) (1)
	CreateDynamicObject(3785,855.4000244,-830.5000000,91.9000015,0.0000000,0.0000000,117.9986572, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (1)
	CreateDynamicObject(9339,1561.7998047,-1221.0000000,40.0000000,0.0000000,180.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(sfnvilla001_cm) (1)
	CreateDynamicObject(14534,1586.1992188,-1245.3994141,264.2500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(ab_woozies01) (1)
	CreateDynamicObject(3095,1589.1992188,-1238.8994141,259.6199951,0.0000000,179.9945068,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(1492,1592.8994141,-1242.8798828,259.6000061,0.0000000,0.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(gen_doorint02) (2)
	CreateDynamicObject(1649,1593.5996094,-1232.0498047,261.2999878,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (9)
	CreateDynamicObject(1649,1593.5996094,-1236.4000244,261.2999878,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (9)
	CreateDynamicObject(1649,1593.5996094,-1240.7500000,261.2999878,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (9)
	CreateDynamicObject(9131,1593.1999512,-1243.0000000,260.2300110,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (8)
	CreateDynamicObject(9131,1593.1999512,-1243.0000000,262.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (9)
	CreateDynamicObject(9131,1591.0000000,-1243.0000000,262.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (10)
	CreateDynamicObject(9131,1591.0000000,-1243.0000000,260.2300110,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (11)
	CreateDynamicObject(2296,1586.3994141,-1240.3994141,259.6000061,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(tv_unit_1) (1)
	CreateDynamicObject(1703,1590.8000488,-1238.5000000,259.6000061,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_couch02) (1)
	CreateDynamicObject(2232,1586.4000244,-1240.5000000,260.7000122,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(med_speaker_4) (1)
	CreateDynamicObject(2232,1586.1999512,-1238.3000488,260.7000122,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(med_speaker_4) (2)
	CreateDynamicObject(2332,1576.9000244,-1222.5999756,261.1000061,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(kev_safe) (1)
	CreateDynamicObject(1649,1588.5000000,-1242.8000488,261.2000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (18)
	CreateDynamicObject(1761,1587.9000244,-1243.4000244,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(swank_couch_2) (3)
	CreateDynamicObject(2135,1580.9499512,-1239.6999512,259.7000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_k3_cooker) (3)
	CreateDynamicObject(14535,1579.5999756,-1243.5000000,261.6000061,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(ab_woozies03) (2)
	CreateDynamicObject(2851,1582.5999756,-1243.0000000,260.3999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(gb_kitchdirt05) (1)
	CreateDynamicObject(16501,1579.0000000,-1242.8000488,267.0000000,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(cn2_savgardr2_) (1)
	CreateDynamicObject(2517,1581.0999756,-1240.6999512,264.7999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_shower1) (1)
	CreateDynamicObject(2132,1579.5000000,-1240.6999512,264.7000122,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_kitch2_sink) (1)
	CreateDynamicObject(2528,1581.3000488,-1241.3000488,264.7999878,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_toilet3) (2)
	CreateDynamicObject(16501,1578.4000244,-1243.2349854,269.5400085,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(cn2_savgardr2_) (2)
	CreateDynamicObject(14543,1587.0999756,-1241.5999756,266.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(ab_woozies04) (1)
	CreateDynamicObject(1815,1583.5000000,-1243.0000000,264.7999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(coffee_low_2) (1)
	CreateDynamicObject(2837,1583.9000244,-1242.5000000,265.2999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(gb_takeaway02) (1)
	CreateDynamicObject(2821,1583.9000244,-1242.9000244,265.2999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(gb_foodwrap01) (1)
	CreateDynamicObject(3119,1591.6999512,-1240.6999512,265.1000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cs_ry_props) (1)
	CreateDynamicObject(3515,1593.1999512,-1239.4000244,265.1000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(vgsfountain) (2)
	CreateDynamicObject(1361,1586.8000488,-1250.9000244,263.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_bush_prop2) (1)
	CreateDynamicObject(1361,1586.9000244,-1247.5999756,263.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_bush_prop2) (2)
	CreateDynamicObject(2251,1579.3000488,-1251.3000488,260.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(plant_pot_20) (1)
	CreateDynamicObject(16151,1592.3000488,-1225.5000000,259.8500061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(ufo_bar) (2)
	CreateDynamicObject(1481,1593.1999512,-1226.6999512,260.2000122,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(dyn_bar_b_q) (1)
	CreateDynamicObject(1950,1591.3000488,-1225.0999756,260.7000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_beer) (3)
	CreateDynamicObject(1828,1588.9000244,-1239.5000000,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(man_sdr_rug) (1)
	CreateDynamicObject(1646,1586.1992188,-1231.0000000,259.8500061,0.0000000,0.0000000,300.0000000, .worldid = 63168, .streamdistance = 120); //object(lounge_towel_up) (2)
	CreateDynamicObject(1646,1586.1992188,-1236.0000000,259.8500061,0.0000000,0.0000000,230.0000000, .worldid = 63168, .streamdistance = 120); //object(lounge_towel_up) (3)
	CreateDynamicObject(1646,1587.1992188,-1233.5000000,259.8500061,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(lounge_towel_up) (4)
	CreateDynamicObject(1649,1590.6494141,-1246.5996094,261.2999878,0.0000000,0.0000000,179.4599609, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (18)
	CreateDynamicObject(2395,1589.8000488,-1249.3000488,259.7000122,270.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_sports_wall) (1)
	CreateDynamicObject(2395,1588.7998047,-1249.2998047,259.7000122,270.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_sports_wall) (2)
	CreateDynamicObject(9131,1591.7998047,-1246.8994141,263.2999878,0.0000000,90.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (10)
	CreateDynamicObject(9131,1589.5999756,-1246.9000244,263.2999878,0.0000000,270.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (10)
	CreateDynamicObject(3385,1590.6999512,-1246.5000000,263.2000122,270.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_light1_) (1)
	CreateDynamicObject(747,1590.8994141,-1248.5996094,259.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(sm_scrub_rock3) (1)
	CreateDynamicObject(1568,1588.5000000,-1248.4000244,259.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(chinalamp_sf) (1)
	CreateDynamicObject(2957,1590.8000488,-1248.5000000,261.2999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(chinatgaragedoor) (1)
	CreateDynamicObject(902,1591.6992188,-1248.0245361,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(starfish) (1)
	CreateDynamicObject(953,1590.0999756,-1248.0999756,261.1000061,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_oyster) (1)
	CreateDynamicObject(1601,1589.8000488,-1248.1999512,262.0000000,0.0000000,0.0000000,82.0000000, .worldid = 63168, .streamdistance = 120); //object(fish3s) (1)
	CreateDynamicObject(1602,1591.1999512,-1247.5999756,262.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(jellyfish) (1)
	CreateDynamicObject(1605,1591.5999756,-1248.1999512,261.7999878,0.0000000,0.0000000,86.0000000, .worldid = 63168, .streamdistance = 120); //object(fish1s) (1)
	CreateDynamicObject(1602,1590.4000244,-1247.9000244,262.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(jellyfish) (2)
	CreateDynamicObject(1602,1590.8000488,-1247.9000244,262.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(jellyfish) (3)
	CreateDynamicObject(1602,1591.9000244,-1247.6999512,262.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(jellyfish) (4)
	CreateDynamicObject(14446,1590.5000000,-1248.0999756,265.2999878,0.0000000,0.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(smokes_bed) (2)
	CreateDynamicObject(1255,1583.8000488,-1228.9000244,260.2000122,0.0000000,0.0000000,220.0000000, .worldid = 63168, .streamdistance = 120); //object(lounger) (1)
	CreateDynamicObject(1950,1584.5000000,-1223.5000000,260.3999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_beer) (3)
	CreateDynamicObject(1950,1591.3000488,-1224.8000488,260.7000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_beer) (3)
	CreateDynamicObject(16780,1588.8000488,-1239.4000244,262.7999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(ufo_light03) (1)
	CreateDynamicObject(2803,1592.8000488,-1222.1999512,261.0000000,0.0000000,0.0000000,299.9981689, .worldid = 63168, .streamdistance = 120); //object(cj_meat_bag_1) (1)
	CreateDynamicObject(14467,1593.0999756,-1240.0999756,266.5000000,0.0000000,0.0000000,347.4975586, .worldid = 63168, .streamdistance = 120); //object(carter_statue) (1)
	CreateDynamicObject(3524,1592.9000244,-1239.5999756,265.7999878,0.0000000,0.0000000,349.9969482, .worldid = 63168, .streamdistance = 120); //object(skullpillar01_lvs) (2)
	CreateDynamicObject(15036,1583.6992188,-1240.6992188,260.7999878,0.0000000,0.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(kit_cab_washin_sv) (1)
	CreateDynamicObject(2136,1579.5999756,-1242.0000000,259.5000000,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_k3_sink) (1)
	CreateDynamicObject(2140,1579.9499512,-1239.5999756,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_k3_tall_unit1) (1)
	CreateDynamicObject(2894,1582.6999512,-1244.5000000,260.3999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_rhymesbook) (1)
	CreateDynamicObject(14455,1579.8000488,-1246.4000244,261.2000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(gs_bookcase) (1)
	CreateDynamicObject(2296,1582.3000488,-1242.8349609,264.7999878,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(tv_unit_1) (1)
	CreateDynamicObject(3029,1579.5000000,-1246.5996094,259.3999939,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(cr1_door) (1)
	CreateDynamicObject(2229,1582.0999756,-1242.5000000,265.2000122,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(swank_speaker) (1)
	CreateDynamicObject(2229,1582.0999756,-1240.5999756,265.2000122,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(swank_speaker) (2)
	CreateDynamicObject(2233,1582.1999512,-1239.4000244,264.8999939,0.0000000,0.0000000,46.0000000, .worldid = 63168, .streamdistance = 120); //object(swank_speaker_4) (1)
	CreateDynamicObject(2957,1586.0996094,-1240.1992188,261.2000122,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(chinatgaragedoor) (2)
	CreateDynamicObject(3533,1586.5000000,-1242.5996094,259.7999878,0.0000000,0.0000000,0.2471924, .worldid = 63168, .streamdistance = 120); //object(trdpillar01) (3)
	CreateDynamicObject(3525,1587.7998047,-1249.8000488,267.5000000,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(exbrtorch01) (1)
	CreateDynamicObject(3525,1593.3000488,-1249.8000488,267.5000000,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(exbrtorch01) (2)
	CreateDynamicObject(10444,1584.3000488,-1238.0000000,259.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(poolwater_sfs) (1)
	CreateDynamicObject(3095,1589.1999512,-1225.5999756,259.6000061,0.0000000,180.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (21)
	CreateDynamicObject(3095,1589.1992188,-1234.5999756,259.6000061,0.0000000,179.9945068,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(3095,1584.3994141,-1233.0000000,254.8000031,0.0000000,90.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1580.8994141,-1230.2998047,254.8000031,0.0000000,90.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1583.3000488,-1233.0999756,258.8999939,0.0000000,179.9945068,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(9131,1592.0999756,-1243.0999756,262.4500122,0.0000000,90.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shbbyhswall13_lvs) (10)
	CreateDynamicObject(3095,1590.5000000,-1238.5000000,262.7500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(3095,1590.5000000,-1229.5000000,262.7500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(3095,1590.5000000,-1225.5000000,262.7500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(3095,1581.5000000,-1225.5000000,262.7500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(3095,1581.5000000,-1234.5000000,262.7500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(3095,1581.7998047,-1242.0996094,263.3999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(3095,1590.8000488,-1242.0999756,263.3999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (19)
	CreateDynamicObject(2637,1585.0000000,-1223.5000000,259.7999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_pizza_table2) (1)
	CreateDynamicObject(1761,1584.0000000,-1221.7500000,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(swank_couch_2) (1)
	CreateDynamicObject(1582,1585.3000488,-1223.5000000,260.2500000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(pizzabox) (1)
	CreateDynamicObject(2453,1591.9000244,-1228.8000488,260.7999878,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_pizza_dispf) (1)
	CreateDynamicObject(1761,1586.0000000,-1225.1999512,259.6000061,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(swank_couch_2) (1)
	CreateDynamicObject(1742,1582.5999756,-1221.0999756,259.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(med_bookshelf) (1)
	CreateDynamicObject(2395,1575.8994141,-1231.8994141,259.6000061,270.0000000,179.9945068,179.9945068, .worldid = 63168, .streamdistance = 120); //object(cj_sports_wall) (4)
	CreateDynamicObject(1502,1580.2700195,-1243.1999512,264.8500061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(gen_doorint04) (1)
	CreateDynamicObject(16501,1576.7500000,-1243.2343750,266.0000000,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(cn2_savgardr2_) (2)
	CreateDynamicObject(1978,1592.5000000,-1233.1992188,260.6000061,0.0000000,0.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(roulette_tbl) (1)
	CreateDynamicObject(1979,1592.6999512,-1234.5500488,260.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(wheel_wee) (1)
	CreateDynamicObject(1947,1592.0000000,-1234.1999512,260.7000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(chips_temp) (1)
	CreateDynamicObject(1274,1590.0999756,-1248.1999512,261.1000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bigdollar) (3)
	CreateDynamicObject(3524,1590.5000000,-1250.5000000,266.1000061,16.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(skullpillar01_lvs) (3)
	CreateDynamicObject(2810,868.2000122,-821.0000000,89.5000000,0.0000000,14.0000000,226.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_stat_2_bit) (1)
	CreateDynamicObject(672,864.7999878,-818.7999878,88.8000031,0.0000000,0.0000000,58.0000000, .worldid = 63168, .streamdistance = 120); //object(sm_veg_tree5) (1)
	CreateDynamicObject(4100,845.9000244,-835.2000122,83.3000031,0.0000000,1.2500000,127.7470703, .worldid = 63168, .streamdistance = 120); //object(meshfence1_lan) (3)
	CreateDynamicObject(1646,858.5999756,-827.7999878,88.8000031,0.0000000,0.0000000,203.9941406, .worldid = 63168, .streamdistance = 120); //object(lounge_towel_up) (1)
	CreateDynamicObject(1430,856.7999878,-861.0999756,75.4000015,0.0000000,0.0000000,28.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_dump1_low01) (1)
	CreateDynamicObject(3524,856.7999878,-830.0000000,88.5999985,0.0000000,0.0000000,202.7500000, .worldid = 63168, .streamdistance = 120); //object(skullpillar01_lvs) (4)
	CreateDynamicObject(3524,854.0000000,-831.2000122,88.5999985,0.0000000,0.0000000,202.7471924, .worldid = 63168, .streamdistance = 120); //object(skullpillar01_lvs) (5)
	CreateDynamicObject(3409,1589.6992188,-1239.7998047,264.2000122,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(grassplant) (1)
	CreateDynamicObject(16409,1569.4000244,-1230.4000244,259.5599976,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(by_weehangr) (1)
	CreateDynamicObject(3095,1577.0000000,-1230.0000000,266.6000061,0.0000000,90.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(1492,1576.9000244,-1231.5000000,259.6000061,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(gen_doorint02) (1)
	CreateDynamicObject(9819,1575.1992188,-1225.8994141,260.5000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(shpbridge_sfw02) (1)
	CreateDynamicObject(16782,1576.3499756,-1227.9000244,263.2999878,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_radar_scan) (1)
	CreateDynamicObject(1715,1574.0999756,-1226.9000244,259.6000061,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair2) (2)
	CreateDynamicObject(2395,1575.9000244,-1233.4000244,257.2500000,328.2697754,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_sports_wall) (4)
	CreateDynamicObject(14407,1578.3000488,-1232.8000488,255.8000031,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(carter-stairs01) (1)
	CreateDynamicObject(3095,1578.6999512,-1235.3000488,254.6000061,0.0000000,90.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1577.1999512,-1235.3000488,254.3999939,0.0000000,90.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(2395,1576.9000244,-1240.0000000,256.8999939,313.9999695,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_sports_wall) (4)
	CreateDynamicObject(1492,1577.1999512,-1239.8000488,252.6999969,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(gen_doorint02) (3)
	CreateDynamicObject(13007,1575.6591797,-1248.8994141,250.6999969,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(sw_bankbits) (1)
	CreateDynamicObject(3095,1572.6999512,-1240.0000000,252.8999939,0.0000000,90.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(2395,1576.2998047,-1239.6992188,255.6999969,0.0000000,270.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(cj_sports_wall) (4)
	CreateDynamicObject(3095,1569.9499512,-1242.4000244,252.8999939,0.0000000,90.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1569.9499512,-1252.8499756,252.8999939,0.0000000,90.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1578.6999512,-1244.0000000,252.8999939,0.0000000,90.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1578.6992188,-1252.8199463,252.8999939,0.0000000,90.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1574.4000244,-1257.1999512,249.8000031,0.0000000,90.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(1649,1576.5000000,-1257.3000488,255.7200012,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (1)
	CreateDynamicObject(1649,1572.1500244,-1257.2998047,255.7200012,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (2)
	CreateDynamicObject(1649,1576.5200195,-1255.6400146,257.3850098,90.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (3)
	CreateDynamicObject(1649,1572.1199951,-1255.6400146,257.3850098,90.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(wglasssmash) (10)
	CreateDynamicObject(13007,1571.4000244,-1247.0000000,258.7000122,179.9945068,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(sw_bankbits) (5)
	CreateDynamicObject(2404,1583.5000000,-1237.4000244,261.6000061,0.0000000,0.0000000,180.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_surf_board) (1)
	CreateDynamicObject(14744,1568.5000000,-1248.8499756,254.6499939,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(rybathroom) (1)
	CreateDynamicObject(1491,1569.5999756,-1248.4000244,252.8000031,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(gen_doorint01) (2)
	CreateDynamicObject(2520,1563.5999756,-1247.8000488,252.8000031,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_shower2) (1)
	CreateDynamicObject(2518,1565.5999756,-1246.8000488,252.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_b_sink2) (1)
	CreateDynamicObject(2514,1563.6999512,-1249.8000488,252.8000031,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(cj_toilet1) (1)
	CreateDynamicObject(3785,1563.0999756,-1249.6999512,255.6999969,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (2)
	CreateDynamicObject(3785,1563.0999756,-1247.3000488,255.6999969,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (3)
	CreateDynamicObject(3785,1563.0999756,-1248.5000000,254.6999969,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (4)
	CreateDynamicObject(3785,1563.0999756,-1249.0999756,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (5)
	CreateDynamicObject(3785,1563.0999756,-1248.5000000,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (6)
	CreateDynamicObject(3785,1563.0999756,-1247.9000244,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (7)
	CreateDynamicObject(3785,1563.0999756,-1248.8000488,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (8)
	CreateDynamicObject(3785,1563.0999756,-1248.1999512,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(bulkheadlight) (9)
	CreateDynamicObject(16378,1576.4000244,-1247.9000244,253.6000061,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(des_byofficeint) (1)
	CreateDynamicObject(2166,1571.4000244,-1256.6999512,252.8999939,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(med_office_desk_2) (1)
	CreateDynamicObject(1715,1571.8000488,-1255.6999512,252.8999939,0.0000000,0.0000000,306.0000000, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair2) (4)
	CreateDynamicObject(1726,1570.1999512,-1240.5999756,252.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(mrk_seating2) (1)
	CreateDynamicObject(1726,1573.0000000,-1241.5000000,252.8999939,0.0000000,0.0000000,270.0000000, .worldid = 63168, .streamdistance = 120); //object(mrk_seating2) (2)
	CreateDynamicObject(2253,1573.0000000,-1240.5999756,253.1999969,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(plant_pot_22) (1)
	CreateDynamicObject(1827,1571.0999756,-1242.5000000,252.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(man_sdr_tables) (2)
	CreateDynamicObject(3095,1569.9000244,-1245.5999756,259.7999878,0.0000000,90.0000000,179.9945068, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(2165,1570.4100342,-1254.7550049,252.8999939,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(med_office_desk_1) (1)
	CreateDynamicObject(2184,1576.5999756,-1254.8000488,252.8999939,0.0000000,0.0000000,251.0000000, .worldid = 63168, .streamdistance = 120); //object(med_office6_desk_2) (1)
	CreateDynamicObject(1742,1569.8000488,-1252.8000488,252.8999939,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(med_bookshelf) (2)
	CreateDynamicObject(2894,1570.5000000,-1256.0999756,253.6999969,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_rhymesbook) (2)
	CreateDynamicObject(1714,1578.4000244,-1256.5000000,252.8999939,0.0000000,0.0000000,246.5000000, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair1) (1)
	CreateDynamicObject(2190,1576.3000488,-1256.4000244,253.6999969,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(pc_1) (1)
	CreateDynamicObject(9833,1580.6999512,-1233.6999512,256.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(fountain_sfw) (2)
	CreateDynamicObject(3095,1580.8000488,-1239.6999512,259.0000000,0.0000000,179.9945068,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_jetdoor) (1)
	CreateDynamicObject(3029,1578.8000488,-1235.3000488,258.6000061,0.0000000,90.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(cr1_door) (2)
	CreateDynamicObject(2308,1570.4000244,-1251.4000244,252.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(med_office4_desk_4) (1)
	CreateDynamicObject(1715,1571.9000244,-1251.9000244,252.8999939,0.0000000,0.0000000,225.9967041, .worldid = 63168, .streamdistance = 120); //object(kb_swivelchair2) (5)
	CreateDynamicObject(1727,1574.8000488,-1240.5000000,252.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(mrk_seating2b) (1)
	CreateDynamicObject(3383,1567.8000488,-1250.8000488,252.8000031,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(a51_labtable1_) (1)
	CreateDynamicObject(2186,1577.5999756,-1251.4000244,252.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(photocopier_1) (1)
	CreateDynamicObject(3092,1563.4000244,-1250.6999512,253.8000031,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(dead_tied_cop) (1)
	CreateDynamicObject(2908,1566.0999756,-1250.5999756,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_deadhead) (1)
	CreateDynamicObject(2907,1566.5000000,-1250.4000244,254.0000000,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_deadtorso) (1)
	CreateDynamicObject(2906,1566.8000488,-1250.3000488,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_deadarm) (1)
	CreateDynamicObject(2906,1565.9000244,-1250.5000000,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_deadarm) (2)
	CreateDynamicObject(2905,1567.0000000,-1250.5000000,253.8999939,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_deadleg) (1)
	CreateDynamicObject(2905,1567.4000244,-1250.5000000,253.8999939,0.0000000,180.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(kmb_deadleg) (2)
	CreateDynamicObject(1569,1579.6600342,-1251.5999756,259.6199951,0.0000000,0.0000000,0.0000000, .worldid = 63168, .streamdistance = 120); //object(adam_v_door) (1)
	CreateDynamicObject(3524,1564.4000244,-1225.6999512,261.0000000,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(skullpillar01_lvs) (1)
	CreateDynamicObject(3524,1564.4000244,-1233.1999512,261.0000000,0.0000000,0.0000000,90.0000000, .worldid = 63168, .streamdistance = 120); //object(skullpillar01_lvs) (6)
	CreateDynamicObject(2957,1588.6273193,-1242.7253418,261.2000122,0.0000000,0.0000000,179.7299805, .worldid = 63168, .streamdistance = 120); //object(chinatgaragedoor) (2)
	CreateDynamicObject(2395,1579.4982910,-1239.9414062,255.6999969,0.0000000,270.0000000,0.5345764, .worldid = 63168, .streamdistance = 120); //object(cj_sports_wall) (4)

	//Mall Lane Barriers `
	CreateDynamicObject(5859, 1142.60, -1400.68, 11.57,   0.00, 0.00, 90.15, .worldid = 0,.streamdistance = 300);
	CreateDynamicObject(19425, 1173.02, -1398.01, 12.31,   0.00, 0.00, 272.63, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(19425, 1172.79, -1392.84, 12.37,   -0.04, 1.00, 272.63, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(19425, 949.70, -1298.00, 22.04,   0.00, 0.00, 0.00, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(19425, 1082.40, -1408.90, 12.51,   0.00, 0.00, 271.04, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(19425, 1082.24, -1403.73, 12.51,   0.00, 0.00, 271.04, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1163.35, -1400.65, 13.13,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1086.09, -1400.90, 13.24,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1097.18, -1400.81, 13.24,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1107.71, -1400.77, 13.24,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1119.31, -1400.72, 13.13,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1130.52, -1400.65, 13.24,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1140.97, -1400.62, 13.24,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(978, 1151.66, -1400.64, 13.13,   0.00, 0.00, 359.90, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(19467, 1172.49, -1388.00, 12.56,   -180.00, 0.00, 265.64, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(19467, 1083.01, -1413.44, 12.68,   -180.00, 0.00, 90.80, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(1231, 1171.78, -1400.44, 16.28,   0.00, 0.00, 0.00, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(1231, 1082.69, -1400.87, 16.28,   0.00, 0.00, 0.00, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(1231, 1121.16, -1400.52, 16.28,   0.00, 0.00, 0.00, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(1231, 1143.19, -1400.66, 16.28,   0.00, 0.00, 0.00, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(1622, 1149.72, -1385.01, 26.23,   0.00, 0.00, 23.04, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(18646, 1149.44, -1385.08, 26.36,   0.00, 0.00, 0.00, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(1622, 1127.42, -1525.24, 21.51,   0.00, 0.00, 234.08, .worldid = 0,.streamdistance = 200);
	CreateDynamicObject(18646, 1127.60, -1524.99, 21.62,   0.00, 0.00, 0.00, .worldid = 0,.streamdistance = 200);

	//Tony DiNunzio House
	new JGFlag = CreateDynamicObject(2048, 970.86011, -2129.81689, 16.85400,   0.00000, 0.00000, 84.00000);
	SetDynamicObjectMaterial(JGFlag, 0, 7092, "vegasflag", "starspangban1_256", 0);
	new JGStairs1 = CreateDynamicObject(8613, 952.14893, -2152.98950, 8.50758,   0.00000, 0.00000, 265.83582);
	SetDynamicObjectMaterial(JGStairs1, 0, 11491, "des_ranch", "des_woodrails", 0);
	SetDynamicObjectMaterial(JGStairs1, 1, 11491, "des_ranch", "des_flatlogs", 0);
	new JGStairs2 = CreateDynamicObject(8614, 947.80597, -2151.76855, 2.93680,   0.00000, 0.00000, 265.83582);
	SetDynamicObjectMaterial(JGStairs2, 0, 11491, "des_ranch", "des_woodrails", 0);
	SetDynamicObjectMaterial(JGStairs2, 1, 11491, "des_ranch", "des_flatlogs", 0);
	new JGJetty1 = CreateDynamicObject(11495, 937.67285, -2154.50879, 0.94480,   0.00000, 0.00000, 85.83582);
	SetDynamicObjectMaterial(JGJetty1, 2, 3886, "ws_jetty_sfx", "cratetop128", 0);
	SetDynamicObjectMaterial(JGJetty1, 3, 11491, "des_ranch", "des_woodrails", 0);
	new JGJetty2 = CreateDynamicObject(11495, 936.94238, -2164.57129, 0.94480,   0.00000, 0.00000, 265.83582);
	SetDynamicObjectMaterial(JGJetty2, 2, 3886, "ws_jetty_sfx", "cratetop128", 0);
	SetDynamicObjectMaterial(JGJetty2, 3, 11491, "des_ranch", "des_woodrails", 0);
	new JGWindow1 = CreateDynamicObject(1308, 963.23712, -2156.88574, 15.34000,   180.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(JGWindow1, 2, 1308, "telegraph", "board64_law", 0);
	new JGWindow2 = CreateDynamicObject(1308, 963.73993, -2151.08667, 15.34000,   180.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(JGWindow2, 2, 1308, "telegraph", "board64_law", 0);
	CreateDynamicObject(3359, 975.00391, -2131.47363, 12.04120,   0.00000, 0.00000, 83.99597);
	CreateDynamicObject(11490, 970.75293, -2154.66504, 11.75080,   0.00000, 0.00000, 265.01221);
	CreateDynamicObject(11491, 959.74542, -2153.71729, 13.25360,   0.00000, 0.00000, 265.01270);
	CreateDynamicObject(3886, 946.27203, -2160.15039, 0.25363,   0.00000, 0.00000, 175.83582);
	CreateDynamicObject(1223, 948.45325, -2156.35913, -0.38529,   0.00000, 0.00000, 175.83582);
	CreateDynamicObject(3461, 958.56824, -2147.23267, 13.77494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3461, 957.59216, -2158.39771, 13.77494,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14872, 963.50458, -2154.12378, 13.20874,   278.32288, 90.00000, 86.00015);
	CreateDynamicObject(1736, 963.83887, -2154.08789, 16.79453,   0.00000, 0.00000, 85.01221);
	CreateDynamicObject(1753, 966.59998, -2157.00000, 13.30000,   0.00000, 0.00000, 176.00000);
	CreateDynamicObject(1753, 965.29999, -2151.60010, 13.30000,   0.00000, 0.00000, 355.99548);
	CreateDynamicObject(1753, 968.20001, -2153.50000, 13.30000,   0.00000, 0.00000, 265.99548);
	CreateDynamicObject(3094, 971.50000, -2154.80005, 13.30000,   0.00000, 0.00000, 84.75000);
	CreateDynamicObject(357, 963.54041, -2153.79639, 15.50940,   0.00000, 334.00000, 273.89832);
	CreateDynamicObject(1646, 960.40002, -2150.89990, 13.60000,   0.00000, 0.00000, 279.49997);
	CreateDynamicObject(357, 963.62109, -2154.18481, 15.50940,   0.00000, 333.99536, 93.89832);
	CreateDynamicObject(1646, 960.09998, -2152.89990, 13.60000,   0.00000, 0.00000, 279.49768);
	CreateDynamicObject(1481, 960.59998, -2147.80005, 14.00000,   0.00000, 0.00000, 355.00000);
	CreateDynamicObject(2463, 972.09454, -2136.42529, 12.09375,   0.00000, 0.00000, 175.01221);
	CreateDynamicObject(2463, 971.76465, -2136.39722, 12.09375,   0.00000, 0.00000, 175.00671);
	CreateDynamicObject(1432, 959.70001, -2155.60010, 13.40000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2509, 971.92969, -2136.47144, 14.25263,   0.00000, 0.00000, 175.01221);
	CreateDynamicObject(2509, 971.41492, -2136.42554, 14.25263,   0.00000, 0.00000, 175.00671);
	CreateDynamicObject(1670, 959.70001, -2155.39990, 14.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18688, 963.20239, -2154.21826, 11.63701,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18652, 962.09998, -2153.89990, 15.60000,   0.00000, 0.00000, 353.75000);
	CreateDynamicObject(18716, 962.83398, -2154.02002, 22.26087,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1223, 975.09338, -2156.69263, 10.98520,   0.00000, 0.00000, 355.01221);
	CreateDynamicObject(1223, 975.37225, -2153.47070, 10.98520,   0.00000, 0.00000, 355.01221);
	CreateDynamicObject(19466, 963.05511, -2157.87329, 14.38960,   90.00000, 0.00000, 355.01221);
	CreateDynamicObject(19433, 963.17780, -2156.89990, 12.62280,   90.00000, 0.00000, 355.01221);
	CreateDynamicObject(19433, 963.66748, -2151.11084, 12.68280,   90.00000, 0.00000, 355.01221);
	CreateDynamicObject(19466, 963.57037, -2152.17432, 14.38960,   90.00000, 0.00000, 355.01221);
	CreateDynamicObject(19466, 963.73853, -2150.24561, 14.38960,   90.00000, 0.00000, 355.01221);

	//Price's Island
	CreateDynamicObject(13135, -3712.29, 2274.73, -2.95,   0.00, 0.00, 90.00);
	CreateDynamicObject(12991, -3686.21, 2230.17, 1.74,   0.00, 0.00, 121.39);
	CreateDynamicObject(17069, -3814.55, 2216.58, 16.46,   0.00, 0.00, 83.94);
	CreateDynamicObject(17069, -3830.75, 2244.55, 8.75,   0.00, 0.00, 28.83);
	CreateDynamicObject(8483, -3707.30, 2238.43, 9.82,   0.00, 0.00, 294.81);
	CreateDynamicObject(897, -3708.18, 2235.39, 11.68,   0.00, 0.00, 0.00);
	CreateDynamicObject(17069, -3831.44, 2225.83, 13.46,   0.00, 0.00, 83.94);
	CreateDynamicObject(17069, -3679.61, 2318.77, -8.96,   0.00, 0.00, 277.70);
	CreateDynamicObject(17069, -3694.67, 2329.39, 1.48,   0.00, 0.00, 277.70);
	CreateDynamicObject(18226, -3773.50, 2337.56, -21.93,   0.00, 0.00, 91.57);
	CreateDynamicObject(18226, -3694.05, 2304.68, 7.98,   0.00, 0.00, 43.07);
	CreateDynamicObject(18226, -3694.69, 2328.43, -0.60,   0.00, 0.00, 63.25);
	CreateDynamicObject(17069, -3678.93, 2330.90, -5.02,   0.00, 0.00, 277.70);
	CreateDynamicObject(17069, -3756.76, 2319.60, -2.57,   0.00, 0.00, 354.35);
	CreateDynamicObject(17069, -3788.90, 2307.54, -4.77,   0.00, 0.00, 354.35);
	CreateDynamicObject(17069, -3816.33, 2295.71, -7.47,   0.00, 0.00, 354.35);
	CreateDynamicObject(17069, -3817.12, 2282.65, 9.08,   0.00, 0.00, 354.35);
	CreateDynamicObject(18226, -3806.36, 2211.10, 3.99,   0.00, 0.00, 3.01);
	CreateDynamicObject(18226, -3843.02, 2282.23, -2.03,   0.00, 0.00, 271.82);
	CreateDynamicObject(18226, -3810.21, 2211.89, -16.32,   0.00, 0.00, 197.80);
	CreateDynamicObject(18226, -3850.23, 2210.61, -14.10,   0.00, 0.00, 3.01);
	CreateDynamicObject(6959, -3743.93, 2303.57, 25.41,   0.00, 0.00, 0.00);
	CreateDynamicObject(6959, -3708.54, 2264.93, 25.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(6959, -3742.26, 2264.89, 25.49,   0.00, 0.00, 0.00);
	CreateDynamicObject(18226, -3863.68, 2267.10, -1.40,   0.00, 0.00, 275.65);
	CreateDynamicObject(897, -3821.85, 2265.02, 25.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(897, -3720.44, 2284.75, 21.20,   0.00, -126.00, 0.00);
	CreateDynamicObject(3608, -3712.54, 2240.77, 16.95,   0.00, 0.00, 181.10);
	CreateDynamicObject(3640, -3725.33, 2279.81, 29.53,   0.00, 0.00, 345.11);
	CreateDynamicObject(3639, -3756.26, 2253.80, 29.68,   0.00, 0.00, 90.18);
	CreateDynamicObject(5520, -3695.79, 2272.60, 30.32,   0.00, 0.00, 282.55);
	CreateDynamicObject(897, -3761.36, 2319.80, 22.36,   0.00, 0.00, 0.00);
	CreateDynamicObject(3941, -3780.09, 2285.41, 28.07,   0.00, 0.00, 287.61);
	CreateDynamicObject(11496, -3784.00, 2280.74, 24.68,   0.00, 0.00, 288.40);
	CreateDynamicObject(11496, -3789.76, 2282.49, 24.66,   0.00, 0.00, 198.71);
	CreateDynamicObject(3932, -3753.97, 2287.80, 26.74,   0.00, 0.00, 272.84);
	CreateDynamicObject(3928, -3711.02, 2242.25, 30.22,   0.00, 0.00, 0.00);
	CreateDynamicObject(9345, -3729.18, 2258.44, 25.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(3498, -3744.71, 2209.83, 6.95,   0.00, 0.00, 0.00);
	CreateDynamicObject(3498, -3793.63, 2245.11, 20.29,   0.00, 0.00, 0.00);
	CreateDynamicObject(3498, -3797.56, 2236.98, 21.13,   0.00, 0.00, 0.00);
	CreateDynamicObject(672, -3663.09, 2261.13, 4.38,   0.00, 0.00, 0.00);
	CreateDynamicObject(672, -3727.30, 2232.64, 5.99,   0.00, 0.00, 0.00);
	CreateDynamicObject(672, -3790.56, 2213.30, 17.73,   0.00, 0.00, 0.00);
	CreateDynamicObject(713, -3669.15, 2286.24, 21.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(658, -3778.66, 2209.41, 10.95,   0.00, 0.00, 357.37);
	CreateDynamicObject(658, -3810.43, 2256.23, 19.79,   0.00, 0.00, 0.00);
	CreateDynamicObject(658, -3811.79, 2247.29, 19.79,   0.00, 0.00, 0.00);
	CreateDynamicObject(658, -3806.04, 2251.56, 17.21,   0.00, 0.00, 0.00);
	CreateDynamicObject(658, -3797.81, 2290.21, 19.91,   0.00, 0.00, 0.00);
	CreateDynamicObject(658, -3656.36, 2265.75, 1.81,   0.00, 0.00, 357.37);
	CreateDynamicObject(658, -3790.69, 2205.00, 15.17,   0.00, 0.00, 357.37);
	CreateDynamicObject(658, -3785.74, 2199.38, 9.77,   0.00, 0.00, 357.37);
	CreateDynamicObject(18226, -3743.78, 2292.53, 5.17,   0.00, 0.00, 242.08);
	CreateDynamicObject(851, -3693.51, 2253.78, 25.69,   0.00, 0.00, 0.00);
	CreateDynamicObject(3092, -3744.72, 2209.50, 9.01,   0.00, 0.00, 180.00);
	CreateDynamicObject(3092, -3797.18, 2236.85, 23.64,   0.00, 0.00, 230.41);
	CreateDynamicObject(3092, -3793.29, 2245.05, 23.10,   0.00, 0.00, 262.33);
	CreateDynamicObject(3264, -3733.31, 2217.89, 4.08,   0.00, 0.00, 28.25);
	CreateDynamicObject(3524, -3732.12, 2258.00, 28.33,   0.00, 0.00, 180.00);
	CreateDynamicObject(3524, -3723.51, 2257.87, 28.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(647, -3733.69, 2261.69, 26.68,   0.00, 0.00, 359.06);
	CreateDynamicObject(647, -3723.41, 2257.87, 26.68,   0.00, 0.00, 359.06);
	CreateDynamicObject(647, -3727.02, 2258.87, 26.68,   0.00, 0.00, 359.06);
	CreateDynamicObject(647, -3731.17, 2260.02, 26.68,   0.00, 0.00, 359.06);
	CreateDynamicObject(647, -3733.68, 2258.31, 26.68,   0.00, 0.00, 359.06);
	CreateDynamicObject(647, -3730.57, 2257.45, 26.68,   0.00, 0.00, 359.06);
	CreateDynamicObject(832, -3728.79, 2259.84, 27.14,   0.00, 0.00, 0.00);
	CreateDynamicObject(3066, -3689.83, 2249.89, 26.15,   0.00, 0.00, 353.13);
	CreateDynamicObject(3066, -3739.97, 2284.50, 26.15,   0.00, 0.00, 284.21);
	CreateDynamicObject(3066, -3735.70, 2278.22, 26.15,   0.00, 0.00, 353.13);
	CreateDynamicObject(2068, -3716.48, 2245.58, 28.98,   0.00, 0.00, 90.00);
	CreateDynamicObject(18013, -3709.82, 2233.31, 19.55,   0.00, 0.00, 180.62);
	CreateDynamicObject(762, -3659.48, 2265.84, 5.14,   0.00, 0.00, 16.25);
	CreateDynamicObject(762, -3810.37, 2240.35, 25.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(762, -3717.02, 2225.43, 4.54,   0.00, 0.00, 0.00);
	CreateDynamicObject(762, -3673.37, 2289.33, 26.40,   0.00, 0.00, 18.32);
	CreateDynamicObject(6865, -3781.17, 2282.31, 31.89,   0.00, 0.00, 61.95);
	CreateDynamicObject(3261, -3682.54, 2280.77, 25.03,   0.00, 0.00, 340.71);
	CreateDynamicObject(910, -3704.66, 2249.43, 26.69,   0.00, 0.00, 180.00);
	CreateDynamicObject(18226, -3703.99, 2314.98, 5.66,   0.00, 0.00, 63.25);
	CreateDynamicObject(2937, -3724.93, 2242.07, 25.43,   0.00, 0.00, 0.00);
	CreateDynamicObject(2937, -3724.93, 2244.53, 25.43,   0.00, 0.00, 0.00);
	CreateDynamicObject(13011, -3708.00, 2249.37, 26.80,   0.00, 0.00, 270.76);
	CreateDynamicObject(3461, -3737.08, 2248.03, 26.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(3461, -3707.60, 2231.47, 10.98,   0.00, 90.00, 294.44);
	CreateDynamicObject(3633, -3701.48, 2261.93, 25.98,   0.00, 0.00, 0.00);
	CreateDynamicObject(13489, -3710.90, 2279.14, 27.71,   0.00, 0.00, 85.85);
	CreateDynamicObject(3576, -3739.82, 2279.99, 26.77,   -0.10, 0.00, 346.23);
	CreateDynamicObject(3414, -3723.75, 2203.03, 3.84,   0.00, 0.00, 192.35);
	CreateDynamicObject(1760, -3719.48, 2230.60, 21.08,   0.00, 0.00, 33.33);
	CreateDynamicObject(1760, -3714.80, 2231.60, 21.08,   0.00, 0.00, 356.62);
	CreateDynamicObject(3461, -3702.68, 2229.31, 22.45,   0.00, 0.00, 0.00);
	CreateDynamicObject(3461, -3704.27, 2233.25, 10.98,   0.00, 90.00, 306.75);
	CreateDynamicObject(897, -3763.73, 2307.30, 23.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(17068, -3754.72, 2161.89, 0.51,   0.00, 0.00, 80.77);
	CreateDynamicObject(17068, -3771.86, 2165.52, 0.53,   0.08, 0.00, 170.33);
	CreateDynamicObject(13011, -3706.34, 2233.06, 22.13,   0.00, 0.00, 89.76);
	CreateDynamicObject(964, -3685.28, 2231.50, 2.64,   0.00, 0.00, 294.62);
	CreateDynamicObject(964, -3685.81, 2232.19, 1.71,   0.00, 0.00, 0.00);
	CreateDynamicObject(964, -3685.08, 2230.84, 1.71,   0.00, 0.00, 294.62);
	CreateDynamicObject(18260, -3758.23, 2264.40, 27.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(2912, -3760.18, 2268.58, 25.41,   0.00, 0.00, 0.00);
	CreateDynamicObject(3525, -3797.32, 2236.82, 25.42,   0.00, 0.00, 54.07);
	CreateDynamicObject(3525, -3744.72, 2209.54, 10.54,   0.00, 0.00, 0.00);
	CreateDynamicObject(3525, -3793.37, 2245.10, 24.59,   0.00, 0.00, 90.00);
	CreateDynamicObject(19473, -3682.99, 2279.71, 24.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(19473, -3682.27, 2281.31, 24.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(19473, -3683.42, 2281.17, 24.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(19473, -3680.88, 2281.49, 24.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(19473, -3681.97, 2282.63, 24.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(19473, -3681.56, 2279.38, 24.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(17068, -3760.90, 2185.92, 0.53,   0.08, 0.00, 170.33);
	CreateDynamicObject(17068, -3752.53, 2174.33, 0.53,   0.00, 0.00, 80.77);
	CreateDynamicObject(11494, -3768.88, 2161.02, 0.73,   0.00, 0.00, 304.96);
	CreateDynamicObject(17068, -3764.61, 2164.23, 0.53,   0.08, 0.00, 170.33);
	CreateDynamicObject(2637, -3722.57, 2202.82, 2.09,   0.00, 0.00, 10.85);
	CreateDynamicObject(1714, -3726.55, 2202.09, 1.90,   0.00, 0.00, 92.61);
	CreateDynamicObject(11496, -3724.80, 2200.88, 1.48,   0.00, 0.00, 281.27);
	CreateDynamicObject(2637, -3724.45, 2202.45, 2.09,   0.00, 0.00, 10.85);
	CreateDynamicObject(1715, -3721.40, 2201.73, 1.65,   0.00, 0.00, 191.15);
	CreateDynamicObject(1715, -3722.39, 2204.41, 1.65,   0.00, 0.00, 11.72);
	CreateDynamicObject(1715, -3723.49, 2204.24, 1.65,   0.00, 0.00, 11.83);
	CreateDynamicObject(1715, -3724.62, 2204.08, 1.65,   0.00, 0.00, 14.24);
	CreateDynamicObject(1715, -3725.57, 2203.86, 1.65,   0.00, 0.00, 15.53);
	CreateDynamicObject(1715, -3724.87, 2200.98, 1.65,   0.00, 0.00, 191.15);
	CreateDynamicObject(1715, -3723.46, 2201.28, 1.65,   0.00, 0.00, 191.15);
	CreateDynamicObject(1715, -3722.40, 2201.49, 1.65,   0.00, 0.00, 191.15);
	CreateDynamicObject(3785, -3727.39, 2204.04, 3.87,   0.00, 0.00, 287.95);
	CreateDynamicObject(3785, -3730.15, 2201.50, 3.87,   0.00, 0.00, 18.98);
	CreateDynamicObject(19165, -3723.51, 2204.94, 3.37,   0.00, 90.00, 282.47);
	CreateDynamicObject(1669, -3725.32, 2202.04, 2.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(1665, -3723.54, 2202.64, 2.53,   0.00, 0.00, 0.00);
	CreateDynamicObject(18226, -3767.16, 2327.72, -7.34,   0.00, 0.00, 91.57);
	CreateDynamicObject(897, -3808.16, 2232.95, 20.89,   0.00, 0.00, 0.00);
	CreateDynamicObject(897, -3806.65, 2228.06, 19.62,   0.00, 0.00, 304.42);
	CreateDynamicObject(901, -3805.82, 2225.35, 20.79,   0.00, 0.00, 292.23);
	CreateDynamicObject(3265, -3789.64, 2229.39, 14.52,   0.00, 0.00, 69.46);
	CreateDynamicObject(3264, -3789.61, 2262.31, 21.67,   0.00, 0.00, 35.42);
	CreateDynamicObject(3576, -3794.71, 2275.76, 25.04,   0.00, 0.00, 0.00);

	//Andrew Cook's house
	CreateDynamicObject(1759, 2065.22632, -1700.34839, 13.14640,   0.00000, 0.00000, 35.00000);
	CreateDynamicObject(1337, 2069.14941, -1699.78748, 13.19620,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1339, 2069.17554, -1698.96899, 13.19620,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1215, 2068.55396, -1704.78333, 13.11464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2068.58276, -1701.74268, 13.11464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16052, 2071.63892, -1703.20105, 14.18630,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(8674, 2071.61182, -1687.13599, 12.68690,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8674, 2046.76880, -1687.48999, 12.68690,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8674, 2051.94727, -1682.36133, 12.68690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8674, 2066.47559, -1682.39331, 12.68690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8674, 2066.37646, -1691.58044, 13.16690,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 2071.35010, -1696.84265, 13.51510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 2071.36646, -1682.32068, 13.30310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 2061.66943, -1682.32068, 13.30310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 2056.76440, -1682.32068, 13.30310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 2047.07947, -1682.32068, 13.30310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 2071.35010, -1691.95276, 13.51510,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 2047.07947, -1691.22473, 13.30310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1233, 2061.65942, -1681.96594, 13.03890,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1233, 2056.75537, -1681.96594, 13.03890,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1215, 2058.94531, -1698.69202, 13.11464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2057.18140, -1698.69202, 13.11460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2071.72314, -1696.86621, 13.11464,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2071.72314, -1691.93018, 13.11460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2061.66821, -1681.97668, 13.02660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2056.74023, -1681.97668, 13.02660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3920, 2061.95020, -1698.23279, 15.54210,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(970, 2071.68359, -1708.95544, 13.09410,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 2071.68359, -1706.88745, 13.09410,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 2071.68359, -1699.55750, 13.09410,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1280, 2066.82153, -1698.46790, 12.94730,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(3810, 2069.38574, -1701.53821, 15.48800,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 2047.40479, -1690.70447, 13.30870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 2047.40479, -1682.92151, 13.30870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 2071.24536, -1682.89941, 13.30870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 2071.25098, -1691.32275, 13.30870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1281, 2048.84155, -1704.94775, 13.40920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1481, 2050.95874, -1697.70532, 13.26130,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1481, 2051.88672, -1697.70532, 13.26130,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1670, 2048.98291, -1704.98438, 13.43540,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16151, 2053.90918, -1703.40918, 12.87940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1548, 2053.15015, -1704.61572, 13.51580,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1548, 2053.15015, -1701.44373, 13.51580,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1541, 2053.38916, -1703.10303, 13.71160,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1215, 2054.62036, -1709.77856, 13.11460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2047.06042, -1709.77856, 13.11460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 2047.06042, -1702.75854, 13.11460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2114, 2059.06958, -1698.16150, 12.68490,   0.00000, 0.00000, 0.00000);

	//Lewis' House Exterior
	CreateDynamicObject(3851, 1294.80981, -826.15692, 83.99158,   0.00000, 0.00000, 0.18000);
	CreateDynamicObject(3851, 1289.21301, -831.80042, 83.99160,   0.00000, 0.00000, -89.94010);
	CreateDynamicObject(3851, 1274.12122, -831.77808, 83.99160,   0.00000, 0.00000, -89.58015);
	CreateDynamicObject(3851, 1268.52295, -826.10852, 83.99160,   0.00000, 0.00000, 0.18000);
	CreateDynamicObject(19378, 1270.84509, -833.52771, 85.93950,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3851, 1274.15479, -831.81915, 83.99160,   0.00000, 0.00000, -90.18011);
	CreateDynamicObject(19378, 1281.35840, -833.53888, 85.93950,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, 1291.79602, -833.52771, 85.93950,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, 1291.84106, -823.90564, 85.93950,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, 1281.35193, -823.90808, 85.93950,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19378, 1270.91248, -823.91333, 85.93950,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(3851, 1289.15442, -820.41193, 83.99160,   0.00000, 0.00000, -90.90013);
	CreateDynamicObject(3851, 1273.95435, -820.47375, 83.99160,   0.00000, 0.00000, -90.06016);
	CreateDynamicObject(710, 1256.27783, -838.42468, 88.17894,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1289.45435, -826.98511, 82.17760,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1279.00427, -826.97119, 82.17760,   0.00000, 90.00000, -0.06000);
	CreateDynamicObject(19379, 1273.60693, -826.97003, 82.13760,   0.00000, 90.00000, -0.06000);
	CreateDynamicObject(19379, 1273.89465, -817.45667, 82.13760,   0.00000, 90.00000, -0.06000);
	CreateDynamicObject(19379, 1289.44458, -817.33472, 82.17760,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1281, 1261.05212, -807.42010, 87.98990,   0.00000, 0.00000, -61.01998);
	CreateDynamicObject(1281, 1262.43860, -802.60052, 87.98990,   0.00000, 0.00000, -32.52001);
	CreateDynamicObject(1281, 1267.74438, -801.14026, 87.98990,   0.00000, 0.00000, -43.62000);
	CreateDynamicObject(1724, 1291.06177, -829.68353, 82.25340,   0.00000, 0.00000, 222.12010);
	CreateDynamicObject(1724, 1287.73792, -828.69012, 82.25340,   0.00000, 0.00000, 51.00005);
	CreateDynamicObject(1724, 1289.35303, -826.92841, 82.25340,   0.00000, 0.00000, 43.68008);
	CreateDynamicObject(2311, 1271.63220, -828.15088, 82.26400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2311, 1271.63220, -829.05829, 82.26400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1724, 1274.45361, -828.33643, 82.25340,   0.00000, 0.00000, -88.56004);
	CreateDynamicObject(1724, 1272.01318, -825.98572, 82.25340,   0.00000, 0.00000, 0.35995);
	CreateDynamicObject(1724, 1270.10352, -829.63831, 82.25340,   0.00000, 0.00000, -271.62030);
	CreateDynamicObject(1724, 1274.35815, -826.62567, 82.25340,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1255, 1276.51257, -799.87030, 87.79400,   0.00000, 0.00000, -90.42010);
	CreateDynamicObject(1255, 1274.64124, -799.91302, 87.79400,   0.00000, 0.00000, -90.42010);
	CreateDynamicObject(1255, 1278.19861, -799.84283, 87.79400,   0.00000, 0.00000, -90.42010);
	CreateDynamicObject(1255, 1279.99756, -799.80786, 87.79400,   0.00000, 0.00000, -90.42010);
	CreateDynamicObject(1255, 1281.77966, -799.81561, 87.79400,   0.00000, 0.00000, -90.42010);
	CreateDynamicObject(2205, 1289.17761, -829.35760, 82.22410,   0.00000, 0.00000, 39.62310);
	CreateDynamicObject(2205, 1290.91675, -827.91412, 82.22410,   0.00000, 0.00000, -51.69680);
	CreateDynamicObject(1724, 1272.92627, -830.60120, 82.25340,   0.00000, 0.00000, -180.65987);
	CreateDynamicObject(1536, 1257.99280, -802.99323, 83.10450,   0.00000, 0.08000, 89.94000);
	CreateDynamicObject(672, 1220.86353, -817.44348, 83.75781,   3.14159, 0.00000, 2.32907);
	CreateDynamicObject(1255, 1283.65234, -799.70178, 87.79400,   0.00000, 0.00000, -90.42010);
	CreateDynamicObject(14537, 1264.80530, -790.39539, 89.06820,   0.00000, 0.00000, -1.80000);
	CreateDynamicObject(2125, 1268.71594, -795.81689, 87.63150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2125, 1267.04065, -795.82001, 87.63150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2125, 1262.33142, -795.69073, 87.63150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2125, 1260.40796, -795.67542, 87.63150,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1622, 1294.59949, -801.32544, 94.35649,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1622, 1258.16187, -787.93256, 95.83804,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1622, 1256.57336, -810.29895, 87.66467,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2606, 1294.48242, -828.21918, 83.37080,   0.00000, 0.00000, -89.82000);
	CreateDynamicObject(2606, 1294.49463, -828.21918, 84.26690,   0.00000, 0.00000, -89.82000);
	CreateDynamicObject(2606, 1294.49463, -828.21918, 83.81680,   0.00000, 0.00000, -89.82000);
	CreateDynamicObject(2205, 1294.21448, -828.86469, 82.22410,   0.00000, 0.00000, 87.08320);
	CreateDynamicObject(1670, 1272.76196, -827.89124, 82.76707,   0.00000, 0.00000, -43.74000);
	CreateDynamicObject(1670, 1272.38379, -827.28137, 82.76707,   0.00000, 0.00000, -119.94003);
	CreateDynamicObject(1670, 1272.29517, -828.58698, 82.76707,   0.00000, 0.00000, -43.74000);
	CreateDynamicObject(1670, 1289.16626, -829.29645, 83.17720,   0.00000, 0.00000, -43.74000);
	CreateDynamicObject(1232, 1238.56372, -799.98608, 89.48460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1245.67969, -809.18018, 89.48460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1217.84106, -814.72839, 89.48460,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1210.37268, -804.56525, 90.53082,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1228.59326, -826.10480, 87.50581,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1228.31384, -838.50629, 86.78446,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1250.16980, -826.21082, 86.78446,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1239.17065, -820.41150, 86.78446,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3749, 1245.43445, -766.72693, 96.91708,   0.00000, 0.00000, 359.17142);
	CreateDynamicObject(3749, 1245.45422, -766.77258, 85.92480,   180.00000, 0.00000, -1.32000);
	CreateDynamicObject(1232, 1252.10681, -818.05719, 87.03745,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(10832, 1377.26123, -852.11310, 43.00048,   0.00000, 0.00000, 304.33145);
	CreateDynamicObject(966, 1375.20789, -857.39844, 41.22112,   0.00000, 0.00000, 40.93697);
	CreateDynamicObject(1536, 1257.99280, -802.99323, 83.10450,   0.00000, 0.08000, 89.94000);
	CreateDynamicObject(1536, 1262.36353, -811.90692, 83.10450,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(1536, 1271.12854, -788.03607, 91.00420,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(1536, 1266.06396, -811.87122, 83.10450,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(1536, 1297.01379, -802.62012, 83.12500,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, 1297.09839, -806.17084, 83.12500,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, 1297.08008, -809.68726, 83.12500,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3928, 1289.72485, -829.54749, 86.02390,   0.00000, 0.00000, -89.75996);
	CreateDynamicObject(3928, 1273.37500, -829.74835, 86.02390,   0.00000, 0.00000, -89.88001);
	CreateDynamicObject(14407, 1293.85547, -817.26489, 82.74580,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1291.94055, -817.02618, 81.18310,   90.00000, 0.00000, 1.08000);
	CreateDynamicObject(19454, 1291.96680, -818.72101, 81.18310,   90.00000, 0.00000, 1.02000);
	CreateDynamicObject(19454, 1295.78601, -816.97223, 81.18310,   90.00000, 0.00000, -0.30000);
	CreateDynamicObject(19454, 1293.67371, -820.32068, 81.18310,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1295.76697, -818.69110, 81.18310,   90.00000, 0.00000, 1.02000);
	CreateDynamicObject(1232, 1219.10681, -821.79962, 88.66250,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1212.27856, -832.14520, 87.75056,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1536, 1290.60754, -811.92261, 83.10450,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(1536, 1293.39795, -811.87415, 83.10450,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(19439, 1278.82837, -820.53662, 84.26670,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1284.26172, -820.39844, 84.26670,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1279.03906, -831.80933, 81.57127,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1279.03906, -831.80933, 84.16670,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1284.24841, -831.89630, 84.16670,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1284.26465, -831.89899, 81.67955,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1269.22864, -831.80463, 81.57130,   0.00000, 0.00000, 88.68010);
	CreateDynamicObject(19439, 1269.22424, -831.80640, 84.16670,   0.00000, 0.00000, 88.56000);
	CreateDynamicObject(19439, 1294.14050, -831.75012, 84.25300,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1294.13647, -831.73053, 81.73130,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1293.97791, -820.44171, 81.74658,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1293.97791, -820.46167, 84.25300,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1269.54504, -820.53943, 80.87891,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19439, 1269.23376, -820.45203, 84.26670,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3763, 1266.21570, -775.29681, 95.32538,   356.85840, 0.00000, -150.13177);
	CreateDynamicObject(1232, 1252.10681, -818.05719, 87.03745,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1255, 1285.29272, -799.74634, 87.79400,   0.00000, 0.00000, -90.42010);
	CreateDynamicObject(1281, 1268.33948, -810.47742, 87.98990,   0.00000, 0.00000, 76.98002);
	CreateDynamicObject(672, 1235.77417, -757.20996, 93.78075,   3.14159, 0.00000, 2.08907);
	CreateDynamicObject(672, 1234.77478, -749.06409, 95.57663,   3.14159, 0.00000, 2.08907);
	CreateDynamicObject(672, 1254.09729, -754.59735, 93.48309,   3.14159, 0.00000, 2.08907);
	CreateDynamicObject(672, 1250.92517, -743.88123, 93.48309,   3.14159, 0.00000, 2.08907);
	CreateDynamicObject(2311, 1271.63220, -827.27759, 82.26400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1724, 1270.10999, -827.95477, 82.25340,   0.00000, 0.00000, -271.80029);
	CreateDynamicObject(1723, 1280.55396, -827.59637, 82.23109,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2311, 1280.70898, -829.30499, 82.26400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19439, 1294.85303, -830.96252, 81.09069,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2105, 1290.92297, -827.85712, 83.60940,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19439, 1294.82813, -820.73785, 84.25300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19439, 1268.49878, -821.33124, 84.25300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(16779, 1281.51099, -828.49713, 85.79287,   0.00000, 0.00000, -0.24000);
	CreateDynamicObject(16779, 1274.36914, -826.90063, 85.79287,   0.00000, 0.00000, -0.24000);
	CreateDynamicObject(16779, 1291.59204, -828.94281, 85.79287,   0.00000, 0.00000, -0.24000);
	CreateDynamicObject(967, 1250.47192, -818.81500, 83.13206,   0.00000, 0.00000, -97.91993);
	CreateDynamicObject(966, 1248.82813, -818.56537, 83.04690,   0.00000, 0.00000, -7.68000);
	CreateDynamicObject(1723, 1282.59753, -830.86206, 82.23110,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1594, 1270.88672, -832.91339, 82.58470,   0.00000, 0.00000, -48.12000);
	CreateDynamicObject(1594, 1290.25159, -832.85339, 82.58470,   0.00000, 0.00000, -48.12000);
	CreateDynamicObject(1536, 1258.85571, -811.91425, 83.10450,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(1536, 1278.39355, -788.01068, 91.00420,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(1536, 1274.83020, -788.04156, 91.00420,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(1536, 1291.93774, -792.01172, 87.28700,   0.00000, 0.08000, 0.00000);
	CreateDynamicObject(19439, 1294.85303, -830.96252, 84.25300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19439, 1268.57422, -831.25964, 80.84562,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19439, 1268.57422, -831.25964, 84.25300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1239.28784, -782.76221, 93.06750,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1251.76050, -781.84479, 94.22418,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1232, 1246.18872, -738.54193, 97.41779,   0.00000, 0.00000, -44.75998);
	CreateDynamicObject(1232, 1235.02405, -743.45880, 98.46400,   0.00000, 0.00000, -20.09999);
	CreateDynamicObject(1232, 1371.23694, -866.25024, 42.71800,   356.85840, 0.00000, 3.14159);
	CreateDynamicObject(1255, 1290.89124, -804.16333, 87.79400,   0.00000, 0.00000, -180.78020);
	CreateDynamicObject(1255, 1290.94507, -807.34351, 87.79400,   0.00000, 0.00000, -180.78020);
	CreateDynamicObject(1424, 1241.14075, -817.57666, 83.65130,   0.00000, 0.00000, 176.22000);

	//
	CreateDynamicObject(10789, 1953.48267, -2383.92627, 10.28870,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(10789, 1924.79663, -2384.09814, 10.28870,   0.00000, 0.00000, -0.24000, .worldid = 1);
	CreateDynamicObject(10789, 1953.47974, -2414.10205, 10.28870,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(10789, 1924.84045, -2414.22095, 10.28870,   0.00000, 0.00000, 0.30000, .worldid = 1);
	CreateDynamicObject(19454, 1963.53076, -2416.15283, 14.70040,   0.00000, 0.00000, -51.30000, .worldid = 1);
	CreateDynamicObject(17951, 1957.17432, -2420.81274, 14.65390,   0.00000, 0.00000, -58.26000, .worldid = 1);
	CreateDynamicObject(19454, 1950.09680, -2424.05957, 14.70040,   0.00000, 0.00000, -71.10001, .worldid = 1);
	CreateDynamicObject(19454, 1948.90686, -2429.06567, 14.70040,   0.00000, 0.00000, -136.19977, .worldid = 1);
	CreateDynamicObject(10789, 1953.52661, -2444.26465, 10.24866,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(10789, 1924.92798, -2444.16382, 10.24866,   0.00000, 0.00000, 0.30000, .worldid = 1);
	CreateDynamicObject(19454, 1938.39429, -2427.47559, 14.70040,   0.00000, 0.00000, -204.41965, .worldid = 1);
	CreateDynamicObject(19454, 1943.90796, -2430.09253, 14.70040,   0.00000, 0.00000, -200.51981, .worldid = 1);
	CreateDynamicObject(19454, 1933.84277, -2424.94629, 14.70040,   0.00000, 0.00000, -206.27957, .worldid = 1);
	CreateDynamicObject(19454, 1928.81885, -2422.66016, 14.70040,   0.00000, 0.00000, -209.93942, .worldid = 1);
	CreateDynamicObject(19454, 1938.88257, -2432.82373, 14.70040,   0.00000, 0.00000, -298.19986, .worldid = 1);
	CreateDynamicObject(19454, 1930.61755, -2428.42676, 14.70040,   0.00000, 0.00000, -298.37985, .worldid = 1);
	CreateDynamicObject(19454, 1922.22925, -2423.91064, 14.70040,   0.00000, 0.00000, -298.37985, .worldid = 1);
	CreateDynamicObject(19454, 1929.05334, -2409.03223, 10.67013,   0.00000, 0.00000, -383.04031, .worldid = 1);
	CreateDynamicObject(19454, 1923.94055, -2419.50220, 14.70040,   0.00000, 0.00000, -210.53943, .worldid = 1);
	CreateDynamicObject(19454, 1970.29089, -2409.47388, 14.70040,   0.00000, 0.00000, -219.41934, .worldid = 1);
	CreateDynamicObject(19454, 1960.24524, -2400.23999, 14.70040,   0.00000, 0.00000, -134.51996, .worldid = 1);
	CreateDynamicObject(19454, 1951.01892, -2393.06958, 14.70040,   0.00000, 0.00000, -107.22002, .worldid = 1);
	CreateDynamicObject(19454, 1942.24426, -2393.76465, 14.70040,   0.00000, 0.00000, -423.47977, .worldid = 1);
	CreateDynamicObject(19454, 1931.89917, -2402.54932, 14.70040,   0.00000, 0.00000, -384.72018, .worldid = 1);
	CreateDynamicObject(19378, 1935.63000, -2396.41943, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1935.65137, -2405.99170, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1934.95093, -2415.61816, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1934.91345, -2425.18726, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1924.46118, -2425.31470, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1934.92273, -2434.78052, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1946.08618, -2396.41992, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1946.07568, -2406.00854, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1945.42224, -2415.52271, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1945.41565, -2425.12793, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1945.40393, -2434.65918, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1955.64063, -2396.69971, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1955.83618, -2406.32617, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1955.90820, -2415.95435, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1957.46399, -2418.02026, 24.66280,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1966.19592, -2413.69043, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1966.12964, -2404.07935, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(14438, 1953.36182, -2416.06470, 18.01847,   0.00000, 0.00000, 78.24001, .worldid = 1);
	CreateDynamicObject(14438, 1940.07239, -2413.33984, 18.01847,   0.00000, 0.00000, 78.24001, .worldid = 1);
	CreateDynamicObject(14438, 1930.66492, -2410.46533, 18.01847,   0.00000, 0.00000, 78.24001, .worldid = 1);
	CreateDynamicObject(19454, 1921.26416, -2416.03076, 14.70040,   0.00000, 0.00000, -268.50082, .worldid = 1);
	CreateDynamicObject(19454, 1925.52576, -2405.18774, 14.70040,   0.00000, 0.00000, -289.08002, .worldid = 1);
	CreateDynamicObject(19454, 1921.96790, -2409.16797, 14.70040,   0.00000, 0.00000, -385.14023, .worldid = 1);
	CreateDynamicObject(19454, 1929.01331, -2409.03271, 11.92800,   0.00000, 0.00000, -383.04031, .worldid = 1);
	CreateDynamicObject(3851, 1929.38062, -2408.18970, 15.00976,   0.00000, 0.00000, -22.74002, .worldid = 1);
	CreateDynamicObject(2184, 1923.90564, -2409.07959, 12.87541,   0.00000, 0.00000, 14.28001, .worldid = 1);
	CreateDynamicObject(14455, 1929.00293, -2406.71240, 14.43790,   0.00000, 0.00000, -196.62019, .worldid = 1);
	CreateDynamicObject(1671, 1924.56714, -2406.99902, 13.25870,   0.00000, 0.00000, 12.30001, .worldid = 1);
	CreateDynamicObject(2332, 1922.55298, -2407.50854, 14.77188,   0.00000, 0.00000, 64.50009, .worldid = 1);
	CreateDynamicObject(2190, 1925.59277, -2408.67578, 13.64140,   0.00000, 0.00000, -146.88000, .worldid = 1);
	CreateDynamicObject(10789, 1982.17041, -2411.38599, 10.24866,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19454, 1962.22241, -2407.99829, 14.70040,   0.00000, 0.00000, -231.41907, .worldid = 1);
	CreateDynamicObject(19454, 1966.78711, -2407.00000, 14.70040,   0.00000, 0.00000, -317.75934, .worldid = 1);
	CreateDynamicObject(1724, 1926.67529, -2409.41309, 12.77773,   0.00000, 0.00000, -144.95992, .worldid = 1);
	CreateDynamicObject(2614, 1932.20386, -2402.73242, 15.14776,   0.00000, 0.00000, 65.75487, .worldid = 1);
	CreateDynamicObject(1724, 1924.89258, -2410.43066, 12.77773,   0.00000, 0.00000, -181.37990, .worldid = 1);
	CreateDynamicObject(1676, 1966.53284, -2413.08496, 14.39970,   0.00000, 0.00000, 36.66000, .worldid = 1);
	CreateDynamicObject(19454, 1953.87927, -2393.75977, 14.70040,   0.00000, 0.00000, -128.22006, .worldid = 1);
	CreateDynamicObject(19454, 1958.19568, -2402.88232, 14.70040,   0.00000, 0.00000, -210.17957, .worldid = 1);
	CreateDynamicObject(19454, 1954.22583, -2400.11841, 14.70040,   0.00000, 0.00000, -210.17957, .worldid = 1);
	CreateDynamicObject(19454, 1948.72192, -2396.94800, 14.70040,   0.00000, 0.00000, -210.17957, .worldid = 1);
	CreateDynamicObject(19454, 1942.69214, -2394.24536, 14.70040,   0.00000, 0.00000, -210.17957, .worldid = 1);
	CreateDynamicObject(19454, 1937.11719, -2394.88696, 14.70040,   0.00000, 0.00000, -317.51950, .worldid = 1);
	CreateDynamicObject(19454, 1955.14673, -2407.60034, 14.70040,   0.00000, 0.00000, -134.51996, .worldid = 1);
	CreateDynamicObject(1676, 1964.11584, -2415.09595, 14.39970,   0.00000, 0.00000, 36.66000, .worldid = 1);
	CreateDynamicObject(19174, 1955.27527, -2408.05127, 14.56674,   0.00000, 0.00000, -44.76004, .worldid = 1);
	CreateDynamicObject(19379, 1940.26660, -2403.11523, 21.20860,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1964.10083, -2404.54248, 22.95670,   0.00000, 0.00000, -40.50000, .worldid = 1);
	CreateDynamicObject(19450, 1964.28125, -2402.47949, 22.95670,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1944.01611, -2407.75610, 22.95670,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19379, 1960.53857, -2415.75098, 21.20860,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19379, 1950.18127, -2415.75049, 21.20860,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1959.52356, -2399.41797, 22.95670,   0.00000, 0.00000, -93.29990, .worldid = 1);
	CreateDynamicObject(19450, 1950.60803, -2399.04492, 22.95670,   0.00000, 0.00000, -91.56000, .worldid = 1);
	CreateDynamicObject(19450, 1952.79370, -2400.02808, 25.73950,   0.00000, 0.00000, 180.00000, .worldid = 1);
	CreateDynamicObject(1723, 1953.43848, -2403.92773, 21.28360,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(1723, 1958.99243, -2401.71387, 21.28360,   0.00000, 0.00000, -89.70000, .worldid = 1);
	CreateDynamicObject(2311, 1955.13757, -2401.99438, 21.26010,   0.00000, 0.00000, -89.94000, .worldid = 1);
	CreateDynamicObject(2311, 1956.06824, -2401.99854, 21.26010,   0.00000, 0.00000, -89.94000, .worldid = 1);
	CreateDynamicObject(2131, 1946.43225, -2401.36597, 21.28020,   0.02000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2339, 1950.32910, -2399.45313, 21.26020,   0.00000, 0.00000, 358.25949, .worldid = 1);
	CreateDynamicObject(2341, 1952.32227, -2399.49316, 21.28020,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2132, 1952.32227, -2401.44824, 21.28080,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2134, 1952.32227, -2400.49756, 21.28020,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2134, 1952.32227, -2403.36792, 21.28020,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2134, 1952.32227, -2404.33301, 21.28020,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2339, 1950.22839, -2401.57959, 21.28020,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2339, 1949.23462, -2401.56689, 21.28020,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2339, 1950.22827, -2402.56226, 21.28020,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2339, 1949.23608, -2402.55347, 21.28020,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2339, 1951.32568, -2399.49316, 21.26020,   0.00000, 0.00000, 358.13120, .worldid = 1);
	CreateDynamicObject(2339, 1949.34900, -2399.41943, 21.26020,   0.00000, 0.00000, 358.25949, .worldid = 1);
	CreateDynamicObject(2339, 1948.35876, -2399.39331, 21.26020,   0.00000, 0.00000, 358.25949, .worldid = 1);
	CreateDynamicObject(19450, 1962.70032, -2400.63916, 22.95670,   0.00000, 0.00000, 50.76000, .worldid = 1);
	CreateDynamicObject(19450, 1952.79370, -2400.02808, 20.80000,   0.00000, 0.00000, 180.00000, .worldid = 1);
	CreateDynamicObject(2311, 1956.95532, -2401.99146, 21.26010,   0.00000, 0.00000, -89.82000, .worldid = 1);
	CreateDynamicObject(1723, 1955.14172, -2399.91821, 21.28360,   0.00000, 0.00000, -0.89990, .worldid = 1);
	CreateDynamicObject(2339, 1947.36926, -2399.35620, 21.26020,   0.00000, 0.00000, 358.25949, .worldid = 1);
	CreateDynamicObject(2341, 1946.42126, -2399.40039, 21.28020,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19450, 1945.83472, -2401.00537, 22.95670,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1941.22424, -2398.95117, 22.95670,   0.00000, 0.00000, -89.94000, .worldid = 1);
	CreateDynamicObject(19450, 1956.27051, -2407.77100, 22.95670,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(14407, 1950.24377, -2411.17139, 21.53760,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1952.28625, -2410.65137, 26.35980,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1948.32739, -2412.64722, 22.95670,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1952.25806, -2412.57227, 22.95670,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1948.32739, -2410.49292, 26.35980,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1947.49670, -2407.80249, 26.35980,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19388, 1948.32739, -2416.84106, 26.35980,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19388, 1952.28625, -2417.00952, 26.35980,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1941.88123, -2409.10986, 26.33980,   0.00000, 0.00000, 134.03999, .worldid = 1);
	CreateDynamicObject(19450, 1939.05579, -2416.11060, 26.35980,   0.00000, 0.00000, 180.00000, .worldid = 1);
	CreateDynamicObject(19450, 1957.47998, -2418.46631, 26.35980,   0.00000, 0.00000, 88.62008, .worldid = 1);
	CreateDynamicObject(19450, 1943.78186, -2418.21484, 26.35980,   0.00000, 0.00000, 88.62008, .worldid = 1);
	CreateDynamicObject(19450, 1957.03479, -2413.18018, 26.35980,   0.00000, 0.00000, 88.62008, .worldid = 1);
	CreateDynamicObject(19450, 1956.16479, -2415.04272, 26.35979,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1947.97437, -2418.37598, 26.35980,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19450, 1935.05957, -2405.45752, 22.95670,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1938.10461, -2408.05054, 22.95670,   0.00000, 0.00000, 91.20004, .worldid = 1);
	CreateDynamicObject(19388, 1935.73645, -2399.82324, 22.95670,   0.00000, 0.00000, -39.84000, .worldid = 1);
	CreateDynamicObject(14407, 1931.99438, -2400.02930, 18.06130,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(14407, 1922.43652, -2400.02563, 11.75820,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1922.79224, 14.70040, 14.70040,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1926.29773, -2400.83521, 18.06440,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1929.69592, -2400.85034, 20.97410,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1933.12573, -2400.85522, 20.97410,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19378, 1922.32898, -2397.19482, 20.32079,   20.00000, 90.00000, -90.12000, .worldid = 1);
	CreateDynamicObject(19378, 1930.46118, -2395.75366, 23.26011,   20.00000, 90.00000, -90.12000, .worldid = 1);
	CreateDynamicObject(19454, 1922.90112, -2400.80713, 16.32560,   90.00000, 0.00000, 88.56001, .worldid = 1);
	CreateDynamicObject(19454, 1921.23608, -2399.95190, 21.32770,   0.00000, 0.00000, -538.37988, .worldid = 1);
	CreateDynamicObject(19454, 1927.00366, -2391.01001, 14.64040,   0.00000, 0.00000, -443.16000, .worldid = 1);
	CreateDynamicObject(19378, 1935.61084, -2386.78735, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1915.99719, -2401.97314, 16.25280,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19454, 1920.22986, -2399.85791, 11.95898,   0.00000, 0.00000, -492.06000, .worldid = 1);
	CreateDynamicObject(19454, 1918.97278, -2395.85864, 14.64040,   0.00000, 0.00000, -362.33990, .worldid = 1);
	CreateDynamicObject(19454, 1920.22986, -2399.85791, 15.44040,   0.00000, 0.00000, -492.06000, .worldid = 1);
	CreateDynamicObject(19454, 1919.34619, -2383.09595, 14.64040,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19454, 1921.13806, -2382.23096, 14.64040,   0.00000, 0.00000, -443.16000, .worldid = 1);
	CreateDynamicObject(19454, 1922.19055, -2382.12378, 14.64040,   0.00000, 0.00000, -359.69992, .worldid = 1);
	CreateDynamicObject(19454, 1915.66223, -2386.85889, 14.57340,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1928.70154, -2386.53345, 17.20170,   0.00000, 0.00000, -445.26001, .worldid = 1);
	CreateDynamicObject(2315, 1956.26453, -2407.25684, 21.25898,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2069, 1953.36401, -2399.72339, 21.30840,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2841, 1944.40393, -2414.12207, 24.85824,   0.00000, 0.00000, -33.66000, .worldid = 1);
	CreateDynamicObject(14446, 1945.70471, -2410.16553, 25.25840,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19450, 1941.27014, -2417.36694, 26.35980,   0.00000, 0.00000, 226.19980, .worldid = 1);
	CreateDynamicObject(2819, 1943.69202, -2414.86890, 24.79778,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1960.21948, -2403.66187, 24.65890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1949.73193, -2403.66357, 24.65890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19379, 1950.74866, -2403.10645, 21.20860,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19379, 1961.24890, -2403.33350, 21.20860,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1939.25378, -2403.84082, 24.65890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1939.26221, -2394.25073, 24.65890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1925.13440, -2393.19434, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1924.47217, -2415.60229, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1925.16541, -2405.96655, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1925.12256, -2383.55957, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1914.64014, -2385.10010, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1914.63977, -2394.66162, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19454, 1922.72644, -2398.06177, 16.32560,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1926.26306, -2398.06177, 25.60360,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1929.69104, -2398.06177, 16.32560,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1932.10352, -2398.16113, 16.32560,   90.00000, 0.00000, 88.56004, .worldid = 1);
	CreateDynamicObject(19454, 1926.21802, -2398.06177, 16.32560,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1928.88733, -2398.06177, 25.60360,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1932.39246, -2398.16113, 25.93950,   90.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1934.98962, -2398.37500, 25.93950,   90.00000, 0.00000, 70.56004, .worldid = 1);
	CreateDynamicObject(19378, 1955.89294, -2425.44653, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1943.63477, -2422.74316, 24.62280,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1943.05627, -2412.36182, 27.98970,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19366, 1950.98572, -2415.56714, 24.67350,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19439, 1948.47119, -2415.73047, 24.63350,   0.00000, 90.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19366, 1950.97205, -2418.76880, 24.67350,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19439, 1948.49353, -2419.16797, 24.65350,   0.00000, 90.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19378, 1943.09473, -2413.16357, 24.62280,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1943.08691, -2421.87256, 27.98970,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1953.44360, -2413.70972, 27.98970,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1953.57288, -2404.14160, 27.98970,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2131, 1946.37585, -2405.29614, 21.28020,   0.02000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2132, 1946.43054, -2403.36597, 21.28080,   0.00000, 0.00000, 89.33997, .worldid = 1);
	CreateDynamicObject(1491, 1935.22644, -2400.36011, 21.28540,   0.00000, 0.00000, 49.56000, .worldid = 1);
	CreateDynamicObject(19391, 1919.25317, -2389.50635, 14.64040,   0.00000, 0.00000, -3.42000, .worldid = 1);
	CreateDynamicObject(19454, 1914.15039, -2394.46704, 14.57340,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19391, 1920.69031, -2391.56543, 14.64040,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1910.66492, -2391.55884, 14.57340,   0.00000, 0.00000, -1.98000, .worldid = 1);
	CreateDynamicObject(2627, 1918.07788, -2387.57861, 12.91569,   0.00000, 0.00000, 269.09943, .worldid = 1);
	CreateDynamicObject(2627, 1917.94275, -2390.84326, 12.91569,   0.00000, 0.00000, 269.81970, .worldid = 1);
	CreateDynamicObject(2630, 1911.66565, -2391.40308, 12.91634,   0.00000, 0.00000, -88.02005, .worldid = 1);
	CreateDynamicObject(2628, 1911.68884, -2393.10278, 12.96859,   0.00000, 0.00000, 149.81990, .worldid = 1);
	CreateDynamicObject(2631, 1912.75696, -2387.71216, 12.91622,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2629, 1912.45630, -2387.79736, 12.96927,   0.00000, 0.00000, 87.90003, .worldid = 1);
	CreateDynamicObject(14792, 1913.58533, -2383.52344, 14.35660,   0.00000, 0.00000, -2.58000, .worldid = 1);
	CreateDynamicObject(1726, 1945.19653, -2401.66504, 21.29669,   0.00000, 0.00000, -91.56000, .worldid = 1);
	CreateDynamicObject(1726, 1941.62463, -2399.61157, 21.29669,   0.00000, 0.00000, -1.74002, .worldid = 1);
	CreateDynamicObject(1786, 1936.09509, -2407.04224, 21.79250,   0.00000, 0.00000, 142.19965, .worldid = 1);
	CreateDynamicObject(2346, 1936.73938, -2406.91089, 21.30510,   0.00000, 0.00000, 143.04013, .worldid = 1);
	CreateDynamicObject(2528, 1952.89673, -2413.63965, 24.75104,   0.00000, 0.00000, -0.29984, .worldid = 1);
	CreateDynamicObject(2522, 1955.58667, -2413.74780, 24.73050,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2518, 1955.58350, -2416.81055, 25.08730,   0.00000, 0.00000, -90.00000, .worldid = 1);
	CreateDynamicObject(2091, 1945.94324, -2417.94312, 24.81000,   0.00000, 0.00000, 180.00000, .worldid = 1);
	CreateDynamicObject(2087, 1941.01855, -2416.78711, 24.69000,   0.00000, 0.00000, 136.32040, .worldid = 1);
	CreateDynamicObject(2088, 1940.29700, -2413.64697, 24.69000,   0.00000, 0.00000, 90.90000, .worldid = 1);
	CreateDynamicObject(2088, 1941.24756, -2411.08154, 24.69000,   0.00000, 0.00000, 42.12004, .worldid = 1);
	CreateDynamicObject(1433, 1942.65076, -2402.32642, 21.47440,   -0.04000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(14455, 1937.88770, -2407.67944, 22.81470,   0.00000, 0.00000, -0.06000, .worldid = 1);
	CreateDynamicObject(2267, 1942.76379, -2399.14331, 23.24048,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2270, 1955.41882, -2407.15015, 22.74100,   0.00000, 0.00000, 180.00000, .worldid = 1);
	CreateDynamicObject(2270, 1958.52942, -2407.17041, 22.78100,   0.00000, 0.00000, 180.00000, .worldid = 1);
	CreateDynamicObject(19450, 1935.79578, -2407.05786, 22.95670,   0.00000, 0.00000, 54.60000, .worldid = 1);
	CreateDynamicObject(14455, 1935.14075, -2401.24438, 22.81470,   0.00000, 0.00000, -90.35999, .worldid = 1);
	CreateDynamicObject(19450, 1947.36060, -2408.48291, 26.31980,   0.00000, 0.00000, 90.18000, .worldid = 1);
	CreateDynamicObject(1506, 1964.22693, -2404.08691, 21.32290,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19454, 1921.23535, -2399.97192, 17.92510,   0.02000, 0.00000, -538.37988, .worldid = 1);
	CreateDynamicObject(19454, 1933.01440, -2390.94800, 15.02040,   90.00000, 0.00000, 74.33993, .worldid = 1);
	CreateDynamicObject(19454, 1936.10278, -2389.89746, 14.64040,   0.00000, 0.00000, -443.16000, .worldid = 1);
	CreateDynamicObject(19454, 1928.67542, -2386.42261, 13.70355,   0.00000, 0.00000, -445.25998, .worldid = 1);
	CreateDynamicObject(19454, 1941.47266, -2385.84131, 14.64040,   0.00000, 0.00000, -399.42020, .worldid = 1);
	CreateDynamicObject(19378, 1946.09534, -2386.92554, 16.24890,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19454, 1924.89014, -2381.89722, 14.64040,   0.00000, 0.00000, -353.58017, .worldid = 1);
	CreateDynamicObject(19454, 1926.16504, -2372.25806, 14.64040,   0.00000, 0.00000, -9.54000, .worldid = 1);
	CreateDynamicObject(19454, 1931.56458, -2367.45850, 14.64040,   0.00000, 0.00000, -89.51999, .worldid = 1);
	CreateDynamicObject(19454, 1941.20386, -2367.36401, 14.64040,   0.00000, 0.00000, -89.51999, .worldid = 1);
	CreateDynamicObject(14537, 1897.44336, -2438.58618, 14.74087,   0.00000, 0.00000, -1.02000, .worldid = 1);
	CreateDynamicObject(19454, 1919.09583, -2386.78491, 17.08170,   0.00000, 0.00000, -451.97977, .worldid = 1);
	CreateDynamicObject(18102, 1939.70251, -2378.77686, 18.04654,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19454, 1926.28296, -2386.36353, 14.64040,   0.00000, 0.00000, -359.45993, .worldid = 1);
	CreateDynamicObject(1491, 1919.22205, -2390.25293, 12.90250,   0.00000, 0.00000, 86.52000, .worldid = 1);
	CreateDynamicObject(1491, 1948.40015, -2417.59570, 24.61990,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(1491, 1952.26978, -2417.75171, 24.61990,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19388, 1950.24060, -2407.76587, 22.95670,   0.00000, 0.00000, 89.59400, .worldid = 1);
	CreateDynamicObject(1491, 1949.45435, -2407.81445, 21.20380,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2010, 1943.51575, -2407.45337, 21.29160,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2010, 1935.39697, -2400.49780, 21.29160,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2010, 1936.46448, -2399.25195, 21.29160,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2010, 1945.51025, -2399.34717, 21.29160,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2069, 1959.46826, -2399.85596, 21.30840,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2069, 1940.45300, -2399.42676, 21.30840,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2069, 1936.74536, -2407.34717, 21.30840,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(16779, 1940.76099, -2402.15308, 24.58700,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(16779, 1949.63623, -2402.39893, 24.58700,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(16779, 1956.32410, -2403.18726, 24.58700,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(16779, 1950.17810, -2416.24243, 27.90830,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2848, 1949.41431, -2401.86182, 22.33186,   0.00000, 0.00000, 50.81999, .worldid = 1);
	CreateDynamicObject(2848, 1950.03455, -2402.16235, 22.33186,   0.00000, 0.00000, -147.54001, .worldid = 1);
	CreateDynamicObject(2858, 1952.47327, -2400.58203, 22.33237,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1781, 1952.55627, -2399.28442, 22.33217,   0.00000, 0.00000, -25.14000, .worldid = 1);
	CreateDynamicObject(2863, 1946.20044, -2403.29590, 22.33290,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2149, 1949.32056, -2399.39526, 22.47220,   0.00000, 0.00000, -2.64000, .worldid = 1);
	CreateDynamicObject(2849, 1955.12866, -2403.20337, 21.76355,   0.00000, 0.00000, 27.42001, .worldid = 1);
	CreateDynamicObject(2858, 1956.37891, -2402.14258, 21.76330,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2105, 1957.86499, -2407.36133, 22.19850,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2288, 1956.81177, -2407.19946, 22.73210,   0.00000, 0.00000, 180.00000, .worldid = 1);
	CreateDynamicObject(325, 1956.33264, -2407.46631, 21.79810,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2437, 1947.64380, -2398.98438, 22.31206,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2848, 1956.03174, -2407.79224, 21.75190,   0.00000, 0.00000, -66.36000, .worldid = 1);
	CreateDynamicObject(2860, 1942.65881, -2402.40552, 21.98162,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1812, 1924.47839, -2384.48120, 12.91598,   0.00000, 0.00000, 2.94000, .worldid = 1);
	CreateDynamicObject(1812, 1919.98254, -2385.07007, 12.91598,   0.00000, 0.00000, 3.06000, .worldid = 1);
	CreateDynamicObject(2602, 1924.86926, -2386.06494, 13.38116,   0.00000, 0.00000, -80.75990, .worldid = 1);
	CreateDynamicObject(2602, 1919.75024, -2385.81567, 13.38116,   0.00000, 0.00000, 90.12012, .worldid = 1);
	CreateDynamicObject(10789, 1895.98535, -2414.17920, 10.28870,   0.00000, 0.00000, 0.30000, .worldid = 1);
	CreateDynamicObject(19454, 1915.38098, -2413.55078, 14.70040,   0.00000, 0.00000, -271.19986, .worldid = 1);
	CreateDynamicObject(19454, 1915.84985, -2416.00317, 14.70040,   0.00000, 0.00000, -270.23987, .worldid = 1);
	CreateDynamicObject(19454, 1915.72461, -2414.71216, 16.29918,   0.00000, 90.00000, 98.75998, .worldid = 1);
	CreateDynamicObject(19454, 1920.59802, -2420.84692, 14.70040,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19446, 1906.34741, -2411.31274, 17.50817,   0.00000, 0.00000, -117.06002, .worldid = 1);
	CreateDynamicObject(19446, 1906.32947, -2411.41602, 14.54070,   0.00000, 0.00000, -116.88000, .worldid = 1);
	CreateDynamicObject(19446, 1910.78418, -2420.36865, 14.54070,   0.00000, 0.00000, -0.12000, .worldid = 1);
	CreateDynamicObject(19446, 1910.74036, -2418.29810, 17.50820,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19446, 1910.76965, -2427.84741, 17.50820,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19446, 1910.78967, -2429.79785, 14.54070,   0.00000, 0.00000, -0.36000, .worldid = 1);
	CreateDynamicObject(10789, 1896.30859, -2444.30884, 10.28870,   0.00000, 0.00000, 0.30000, .worldid = 1);
	CreateDynamicObject(19446, 1898.14624, -2407.27417, 17.50817,   0.00000, 0.00000, -116.34002, .worldid = 1);
	CreateDynamicObject(19446, 1897.71362, -2407.10449, 14.54070,   0.00000, 0.00000, -116.34000, .worldid = 1);
	CreateDynamicObject(19446, 1910.62537, -2437.28882, 17.50820,   0.00000, 0.00000, -1.26000, .worldid = 1);
	CreateDynamicObject(19446, 1910.69788, -2439.36865, 14.54070,   0.00000, 0.00000, -0.36000, .worldid = 1);
	CreateDynamicObject(19446, 1907.10681, -2440.56665, 17.50820,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19446, 1907.62793, -2440.64697, 14.54070,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19446, 1898.27625, -2440.65430, 14.54070,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19446, 1889.12988, -2405.29248, 14.54070,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19446, 1897.65979, -2440.56226, 17.50820,   0.00000, 0.00000, 90.47998, .worldid = 1);
	CreateDynamicObject(19446, 1888.74292, -2440.63623, 14.54070,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19446, 1889.31079, -2405.19897, 17.50820,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19446, 1883.86755, -2437.08789, 14.54070,   0.00000, 0.00000, 2.46001, .worldid = 1);
	CreateDynamicObject(19446, 1883.48425, -2427.47925, 14.54070,   0.00000, 0.00000, 2.40001, .worldid = 1);
	CreateDynamicObject(19446, 1883.30713, -2417.88965, 14.54070,   0.00000, 0.00000, -0.05998, .worldid = 1);
	CreateDynamicObject(19446, 1884.54224, -2408.49902, 17.52760,   0.00000, 0.00000, -15.83999, .worldid = 1);
	CreateDynamicObject(19446, 1884.62439, -2408.54297, 14.54070,   0.00000, 0.00000, -16.26000, .worldid = 1);
	CreateDynamicObject(19446, 1883.19849, -2415.78613, 17.52760,   0.00000, 0.00000, -2.16000, .worldid = 1);
	CreateDynamicObject(19446, 1883.37378, -2425.39600, 17.52760,   0.00000, 0.00000, 2.22000, .worldid = 1);
	CreateDynamicObject(19446, 1888.15857, -2440.60767, 17.50820,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19446, 1883.74304, -2434.80371, 17.52760,   0.00000, 0.00000, 1.98000, .worldid = 1);
	CreateDynamicObject(19446, 1886.17529, -2439.75659, 17.52760,   0.00000, 0.00000, 49.98000, .worldid = 1);
	CreateDynamicObject(19446, 1886.25842, -2439.76025, 14.54070,   0.00000, 0.00000, 49.98000, .worldid = 1);
	CreateDynamicObject(19379, 1905.70642, -2412.80200, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1905.65344, -2422.36792, 12.84110,   0.00000, 90.00000, -0.90000, .worldid = 1);
	CreateDynamicObject(19379, 1895.24182, -2412.53491, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1884.86243, -2412.34521, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1895.41931, -2402.93896, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1885.02124, -2402.71167, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1895.23303, -2422.15137, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1884.80823, -2421.83765, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1905.52478, -2431.92920, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1905.38110, -2441.39722, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1894.97424, -2441.29932, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1895.14697, -2431.70850, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1884.52710, -2441.08936, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19379, 1884.65210, -2431.47217, 12.84110,   0.00000, 90.00000, -1.20000, .worldid = 1);
	CreateDynamicObject(19128, 1892.61841, -2418.04492, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1892.60339, -2414.11621, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1896.52478, -2414.12012, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1900.48975, -2418.04712, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1900.48108, -2414.07495, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1900.48108, -2414.07495, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1896.54797, -2418.09302, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1896.55737, -2421.97339, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1900.49231, -2421.98926, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1892.62671, -2421.98120, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1726, 1885.43018, -2419.51196, 12.98239,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1726, 1884.08472, -2422.93994, 12.98240,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(1726, 1887.61096, -2424.58472, 12.98240,   0.00000, 0.00000, -180.00000, .worldid = 1);
	CreateDynamicObject(2311, 1885.73926, -2422.46631, 12.92570,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2311, 1885.71118, -2421.53125, 12.92570,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1726, 1885.16077, -2413.39526, 12.98239,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1726, 1884.08301, -2416.41187, 12.98240,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(1726, 1887.26819, -2417.41138, 12.98240,   0.00000, 0.00000, -180.00000, .worldid = 1);
	CreateDynamicObject(2311, 1885.57104, -2415.95215, 12.92570,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(2311, 1885.57117, -2415.04053, 12.92570,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1726, 1885.87793, -2407.51514, 12.98239,   0.00000, 0.00000, 44.22003, .worldid = 1);
	CreateDynamicObject(1726, 1889.91992, -2409.00464, 12.98240,   0.00000, 0.00000, -142.26013, .worldid = 1);
	CreateDynamicObject(2311, 1887.34192, -2408.78760, 12.92570,   0.00000, 0.00000, 40.79998, .worldid = 1);
	CreateDynamicObject(2311, 1908.17297, -2423.38989, 12.92570,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(1726, 1909.59265, -2421.70923, 12.98240,   0.00000, 0.00000, -89.28009, .worldid = 1);
	CreateDynamicObject(1726, 1906.68408, -2423.72803, 12.98240,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(19128, 1892.64185, -2425.95093, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1896.59351, -2425.97803, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19128, 1900.50391, -2425.98486, 12.92410,   0.00000, 0.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(1726, 1910.16064, -2427.87744, 12.98240,   0.00000, 0.00000, -91.26006, .worldid = 1);
	CreateDynamicObject(1726, 1909.04810, -2431.04541, 12.98240,   0.00000, 0.00000, -180.00000, .worldid = 1);
	CreateDynamicObject(1726, 1907.15332, -2426.15454, 12.98240,   0.00000, 0.00000, -0.18009, .worldid = 1);
	CreateDynamicObject(2311, 1908.59375, -2429.39087, 12.92570,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2311, 1907.71326, -2429.38477, 12.92570,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(1726, 1907.77454, -2439.93335, 12.98240,   0.00000, 0.00000, -180.00000, .worldid = 1);
	CreateDynamicObject(1726, 1909.43286, -2437.09790, 12.98240,   0.00000, 0.00000, -91.26006, .worldid = 1);
	CreateDynamicObject(1726, 1909.31079, -2433.96851, 12.98240,   0.00000, 0.00000, -91.26006, .worldid = 1);
	CreateDynamicObject(1726, 1905.92224, -2433.06396, 12.98240,   0.00000, 0.00000, -0.84005, .worldid = 1);
	CreateDynamicObject(2311, 1907.46997, -2436.16357, 12.92570,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2311, 1906.53772, -2436.16724, 12.92570,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2311, 1906.52979, -2438.54590, 12.92570,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(2311, 1907.42334, -2438.51074, 12.92570,   0.00000, 0.00000, 90.00000, .worldid = 1);
	CreateDynamicObject(1726, 1896.49658, -2407.16699, 12.98240,   0.00000, 0.00000, -27.65998, .worldid = 1);
	CreateDynamicObject(1726, 1899.54700, -2408.73242, 12.98240,   0.00000, 0.00000, -27.65998, .worldid = 1);
	CreateDynamicObject(1726, 1903.20886, -2410.50830, 12.98240,   0.00000, 0.00000, -27.65998, .worldid = 1);
	CreateDynamicObject(19446, 1889.66846, -2438.03638, 14.54070,   0.00000, 0.00000, -0.71999, .worldid = 1);
	CreateDynamicObject(19446, 1883.29407, -2428.72192, 14.54070,   0.00000, 0.00000, 58.80004, .worldid = 1);
	CreateDynamicObject(19384, 1888.56238, -2432.22583, 14.54070,   0.00000, 0.00000, 48.42006, .worldid = 1);
	CreateDynamicObject(19446, 1886.52393, -2442.34692, 14.54070,   0.00000, 0.00000, -0.71999, .worldid = 1);
	CreateDynamicObject(19446, 1881.70508, -2437.30200, 14.54070,   0.00000, 0.00000, 86.10013, .worldid = 1);
	CreateDynamicObject(19384, 1888.07349, -2437.66748, 14.54070,   0.00000, 0.00000, 87.60006, .worldid = 1);
	CreateDynamicObject(19384, 1886.48035, -2436.08545, 14.54070,   0.00000, 0.00000, 182.46008, .worldid = 1);
	CreateDynamicObject(19446, 1881.69434, -2434.22461, 14.54070,   0.00000, 0.00000, 86.10013, .worldid = 1);
	CreateDynamicObject(2311, 1895.86304, -2408.76489, 12.92570,   0.00000, 0.00000, -26.87997, .worldid = 1);
	CreateDynamicObject(2311, 1899.11597, -2410.31006, 12.92570,   0.00000, 0.00000, -26.87997, .worldid = 1);
	CreateDynamicObject(2311, 1903.08630, -2411.94312, 12.92570,   0.00000, 0.00000, -26.87997, .worldid = 1);
	CreateDynamicObject(19378, 1885.73364, -2433.23926, 16.25280,   0.00000, 90.00000, 0.72000, .worldid = 1);
	CreateDynamicObject(19378, 1885.79663, -2442.74097, 16.25280,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1888.21680, -2437.65088, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1888.23303, -2428.02393, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1888.25024, -2418.43945, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1888.22363, -2408.94189, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1898.63525, -2408.90308, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1898.73059, -2418.43286, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1898.72961, -2428.02271, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1898.70923, -2437.50464, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1909.07361, -2408.84424, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1909.13635, -2418.37915, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1909.06433, -2437.55615, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19378, 1909.18262, -2427.98218, 18.79670,   0.00000, 90.00000, 0.00000, .worldid = 1);
	CreateDynamicObject(19446, 1881.87573, -2432.82349, 14.44500,   0.00000, 0.00000, -55.74000, .worldid = 1);
	CreateDynamicObject(2518, 1884.21655, -2432.24072, 13.30131,   0.00000, 0.00000, 32.16001, .worldid = 1);
	CreateDynamicObject(2518, 1884.97217, -2431.73560, 13.30131,   0.00000, 0.00000, 32.16001, .worldid = 1);
	CreateDynamicObject(2518, 1885.98389, -2430.98584, 13.30131,   0.00000, 0.00000, -38.21997, .worldid = 1);
	CreateDynamicObject(2514, 1884.40564, -2436.07397, 12.92881,   0.00000, 0.00000, 91.91988, .worldid = 1);
	CreateDynamicObject(2514, 1888.26001, -2439.96362, 12.92881,   0.00000, 0.00000, 178.02023, .worldid = 1);
	CreateDynamicObject(1491, 1887.28113, -2437.65796, 12.91290,   0.00000, 0.00000, -2.64000, .worldid = 1);
	CreateDynamicObject(1491, 1886.51489, -2436.86401, 12.91290,   0.00000, 0.00000, 91.44000, .worldid = 1);
	CreateDynamicObject(1491, 1889.07825, -2432.77344, 12.91290,   0.00000, 0.00000, 137.64005, .worldid = 1);
	CreateDynamicObject(18102, 1894.09668, -2410.88599, 19.19160,   0.00000, 0.00000, 115.62003, .worldid = 1);
	CreateDynamicObject(18102, 1894.40149, -2423.00293, 19.19160,   0.00000, 0.00000, 164.94006, .worldid = 1);


	//Tim Boss's Elevator Building Floor
	CreateDynamicObject(3471,1789.4004000,-1300.5000000,76.9000000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(vgschinalion1) (1)
	CreateDynamicObject(3471,1784.2002000,-1300.5000000,76.9000000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(vgschinalion1) (2)
	CreateDynamicObject(2207,1776.1000000,-1303.5000000,75.6000000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(med_office7_desk_1) (1)
	CreateDynamicObject(1714,1774.6000000,-1302.6000000,75.7000000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(kb_swivelchair1) (1)
	CreateDynamicObject(1723,1776.0000000,-1297.3000000,75.7000000,0.0000000,0.0000000,22.2500000, .streamdistance = 60); //object(mrk_seating1) (1)
	CreateDynamicObject(1724,1777.1000000,-1300.7000000,75.7000000,0.0000000,0.0000000,306.0000000, .streamdistance = 60); //object(mrk_seating1b) (1)
	CreateDynamicObject(1724,1777.7000000,-1303.5000000,75.7000000,0.0000000,0.0000000,239.9970000, .streamdistance = 60); //object(mrk_seating1b) (2)
	CreateDynamicObject(2725,1775.0000000,-1297.6000000,75.9000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(lm_striptable) (3)
	CreateDynamicObject(2800,1774.9440000,-1297.6888000,76.1500000,0.0000000,0.0000000,355.0000000, .streamdistance = 60); //object(castable2top) (1)
	CreateDynamicObject(14535,1814.2000000,-1308.8000000,77.7000000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(ab_woozies03) (1)
	CreateDynamicObject(3497,1824.5000000,-1306.0000000,78.4000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(vgsxrefbballnet2) (1)
	CreateDynamicObject(2114,1826.1000000,-1305.1000000,76.7700000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(basketball) (1)
	CreateDynamicObject(4724,1818.2000000,-1306.5000000,77.7000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(librarywall_lan2) (1)
	CreateDynamicObject(16151,1825.2000000,-1307.9000000,76.0000000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(ufo_bar) (1)
	CreateDynamicObject(14651,1831.2000000,-1291.0000000,77.9000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(trukstp05) (1)
	CreateDynamicObject(1481,1826.1000000,-1306.2000000,76.6000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(dyn_bar_b_q) (1)
	CreateDynamicObject(1828,1817.0000000,-1317.0000000,75.6420000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(man_sdr_rug) (1)
	CreateDynamicObject(2517,1820.0000000,-1288.0000000,75.7000000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(cj_shower1) (1)
	CreateDynamicObject(14527,1815.6000000,-1295.5000000,78.1000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(fannyfan) (1)
	CreateDynamicObject(1824,1830.5000000,-1301.7000000,76.2000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(craps_table) (1)
	CreateDynamicObject(14814,1819.2998000,-1296.7998000,77.4000000,0.0000000,0.0000000,179.9950000, .streamdistance = 60); //object(studiohallbuild) (1)
	CreateDynamicObject(5020,1823.5996000,-1291.5000000,77.3000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(mul_las) (1)
	CreateDynamicObject(5020,1823.6000000,-1297.4000000,77.3000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(mul_las) (2)
	CreateDynamicObject(5020,1823.6000000,-1303.8000000,77.3000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(mul_las) (3)
	CreateDynamicObject(5020,1820.5000000,-1305.4000000,77.3000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(mul_las) (4)
	CreateDynamicObject(5020,1819.2000000,-1298.4000000,77.3000000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(mul_las) (6)
	CreateDynamicObject(5020,1819.2000000,-1292.5000000,77.3000000,0.0000000,0.0000000,179.9950000, .streamdistance = 60); //object(mul_las) (7)
	CreateDynamicObject(5020,1819.2000000,-1290.5000000,77.3000000,0.0000000,0.0000000,179.9950000, .streamdistance = 60); //object(mul_las) (8)
	CreateDynamicObject(2988,1823.4000000,-1288.2000000,75.7000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(comp_wood_gate) (1)
	CreateDynamicObject(3063,1819.2000000,-1297.3000000,75.6000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(break_wall_3a) (1)
	CreateDynamicObject(2957,1821.5999800,-1297.0000000,77.3000000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(chinatgaragedoor) (2)
	CreateDynamicObject(1506,1822.2000000,-1296.9000000,75.6000000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(gen_doorext08) (1)
	CreateDynamicObject(2528,1822.4000000,-1288.8000000,75.7000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(cj_toilet3) (1)
	CreateDynamicObject(2524,1823.0000000,-1290.4004000,75.7000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(cj_b_sink4) (1)
	CreateDynamicObject(1506,1806.5000000,-1288.7000000,75.7000000,0.0000000,0.0000000,220.4950000, .streamdistance = 60); //object(gen_doorext08) (2)
	CreateDynamicObject(2245,1817.2000000,-1311.9000000,79.9000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(plant_pot_11) (1)
	CreateDynamicObject(2811,1815.0000000,-1312.0000000,78.9000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(gb_romanpot01) (1)
	CreateDynamicObject(2253,1818.0000000,-1311.9004000,79.9000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(plant_pot_22) (3)
	CreateDynamicObject(2253,1816.3000000,-1311.9000000,79.9000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(plant_pot_22) (4)
	CreateDynamicObject(14446,1817.1000000,-1313.9222000,76.2000000,0.0000000,0.0000000,0.1100000, .streamdistance = 60); //object(smokes_bed) (1)
	CreateDynamicObject(2869,1811.1000000,-1308.8000000,76.4550000,0.0000000,0.0000000,56.0000000, .streamdistance = 60); //object(gb_ornament04) (1)
	CreateDynamicObject(14806,1816.9000000,-1272.8000000,76.7000000,0.0000000,0.0000000,31.5000000, .streamdistance = 60); //object(bdupshifi) (1)
	CreateDynamicObject(1670,1826.3000000,-1308.2000000,76.6400000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(propcollecttable) (1)
	CreateDynamicObject(2836,1786.3000000,-1300.7000000,75.6590000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(gb_livingrug05) (1)
	CreateDynamicObject(14867,1814.6000000,-1301.5000000,77.2000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(bobbie-cupboards) (1)
	CreateDynamicObject(1723,1817.6000000,-1294.5000000,75.7000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(mrk_seating1) (2)
	CreateDynamicObject(1724,1817.5000000,-1298.4000000,75.7000000,0.0000000,0.0000000,218.0000000, .streamdistance = 60); //object(mrk_seating1b) (3)
	CreateDynamicObject(3095,1811.6000000,-1281.0000000,75.1000000,0.0000000,0.0000000,43.0000000, .streamdistance = 60); //object(a51_jetdoor) (1)
	CreateDynamicObject(3095,1805.1000000,-1287.0601000,75.0990000,0.0000000,0.0000000,42.9950000, .streamdistance = 60); //object(a51_jetdoor) (2)
	CreateDynamicObject(3095,1800.9000000,-1292.8000000,75.1000000,0.0000000,0.0000000,64.4950000, .streamdistance = 60); //object(a51_jetdoor) (3)
	CreateDynamicObject(970,1798.0000000,-1288.7000000,76.2000000,0.0000000,0.0000000,63.9950000, .streamdistance = 60); //object(fencesmallb) (5)
	CreateDynamicObject(970,1796.2000000,-1292.4000000,76.2000000,0.0000000,0.0000000,63.9900000, .streamdistance = 60); //object(fencesmallb) (6)
	CreateDynamicObject(970,1800.4000000,-1285.4000000,76.2000000,0.0000000,0.0000000,43.2450000, .streamdistance = 60); //object(fencesmallb) (7)
	CreateDynamicObject(970,1803.4000000,-1282.6000000,76.2000000,0.0000000,0.0000000,43.2420000, .streamdistance = 60); //object(fencesmallb) (10)
	CreateDynamicObject(970,1806.4000000,-1279.8000000,76.2000000,0.0000000,0.0000000,43.2450000, .streamdistance = 60); //object(fencesmallb) (11)
	CreateDynamicObject(970,1809.4000000,-1277.0000000,76.2000000,0.0000000,0.0000000,43.2420000, .streamdistance = 60); //object(fencesmallb) (12)
	CreateDynamicObject(970,1812.4000000,-1274.2000000,76.2000000,0.0000000,0.0000000,43.2420000, .streamdistance = 60); //object(fencesmallb) (13)
	CreateDynamicObject(1506,1822.5000000,-1311.7998000,75.6000000,0.0000000,0.0000000,179.9950000, .streamdistance = 60); //object(gen_doorext08) (3)
	CreateDynamicObject(1481,1797.2000000,-1294.0000000,76.4000000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(dyn_bar_b_q) (2)
	CreateDynamicObject(2802,1809.5000000,-1280.2000000,76.0000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(castable1) (2)
	CreateDynamicObject(2802,1807.8000000,-1284.5000000,76.0000000,0.0000000,0.0000000,292.0000000, .streamdistance = 60); //object(castable1) (3)
	CreateDynamicObject(2802,1806.2000000,-1282.3000000,76.0000000,0.0000000,0.0000000,329.9950000, .streamdistance = 60); //object(castable1) (4)
	CreateDynamicObject(2800,1806.1000000,-1282.4000000,76.1000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(castable2top) (2)
	CreateDynamicObject(2800,1807.7000000,-1284.5000000,76.1000000,0.0000000,0.0000000,260.0000000, .streamdistance = 60); //object(castable2top) (3)
	CreateDynamicObject(2800,1809.4000000,-1280.1000000,76.1000000,0.0000000,0.0000000,299.9970000, .streamdistance = 60); //object(castable2top) (4)
	CreateDynamicObject(2571,1801.0000000,-1291.3000000,75.7000000,0.0000000,0.0000000,200.0000000, .streamdistance = 60); //object(hotel_single_1) (2)
	CreateDynamicObject(2357,1815.6000000,-1295.4000000,76.0000000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(dunc_dinning) (1)
	CreateDynamicObject(1255,1801.6000000,-1286.9000000,76.2000000,0.0000000,0.0000000,134.0000000, .streamdistance = 60); //object(lounger) (1)
	CreateDynamicObject(1823,1801.9000000,-1286.2000000,75.7000000,0.0000000,0.0000000,314.0000000, .streamdistance = 60); //object(coffee_med_5) (1)
	CreateDynamicObject(1255,1803.4000000,-1285.2000000,76.2000000,0.0000000,0.0000000,133.9950000, .streamdistance = 60); //object(lounger) (2)
	CreateDynamicObject(2007,1772.3000000,-1306.6000000,75.6000000,0.0000000,0.0000000,153.5000000, .streamdistance = 60); //object(filing_cab_nu01) (1)
	CreateDynamicObject(1486,1799.6000000,-1292.8000000,76.3000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(dyn_beer_1) (1)
	CreateDynamicObject(1455,1803.0000000,-1286.1000000,76.3000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(dyn_glass) (1)
	CreateDynamicObject(2072,1817.8000000,-1297.8000000,77.2000000,0.0000000,0.0000000,76.0000000, .streamdistance = 60); //object(cj_mlight4) (1)
	CreateDynamicObject(1703,1814.6000000,-1292.0000000,75.6000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(kb_couch02) (1)
	CreateDynamicObject(1703,1813.8000000,-1296.4000000,75.6000000,0.0000000,0.0000000,90.0000000, .streamdistance = 60); //object(kb_couch02) (2)
	CreateDynamicObject(1753,1820.1000000,-1276.3000000,75.6000000,0.0000000,0.0000000,213.7500000, .streamdistance = 60); //object(swank_couch_1) (2)
	CreateDynamicObject(2571,1817.1000000,-1277.2000000,75.6000000,0.0000000,0.0000000,160.0000000, .streamdistance = 60); //object(hotel_single_1) (3)
	CreateDynamicObject(14455,1789.0000000,-1306.0000000,77.3000000,0.0000000,0.0000000,180.0000000, .streamdistance = 60); //object(gs_bookcase) (2)
	CreateDynamicObject(2568,1805.8500000,-1302.1990000,75.6000000,0.0000000,0.0000000,270.7500000, .streamdistance = 60); //object(hotel_dresser_3) (1)
	CreateDynamicObject(2295,1815.1000000,-1317.7000000,75.6000000,0.0000000,0.0000000,120.0000000, .streamdistance = 60); //object(cj_beanbag) (1)
	CreateDynamicObject(2332,1773.2000000,-1307.6000000,76.5000000,0.0000000,0.0000000,153.5000000, .streamdistance = 60); //object(kev_safe) (1)
	CreateDynamicObject(2700,1824.1000000,-1309.7000000,78.4000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(cj_sex_tv2) (1)
	CreateDynamicObject(2818,1821.0000000,-1296.6000000,75.7000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(gb_bedrug02) (1)
	CreateDynamicObject(2526,1819.7000000,-1291.6000000,75.7000000,0.0000000,0.0000000,270.0000000, .streamdistance = 60); //object(cj_bath4) (1)
	CreateDynamicObject(14651,1831.0000000,-1282.5000000,77.9000000,0.0000000,0.0000000,0.0000000, .streamdistance = 60); //object(trukstp05) (1)

	// mapping gan market
	CreateDynamicObject(10281, 1395.40857, -1385.90649, 16.54680,   30.00000, -15.00000, 0.00000);
	CreateDynamicObject(19452, 1402.34998, -1384.66394, 17.29020,   90.00000, 0.00000, 90.30100);
	CreateDynamicObject(19452, 1387.00720, -1385.03723, 17.29020,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19452, 1391.72607, -1384.90320, 17.20986,   130.00000, 0.00000, 271.72949);
	CreateDynamicObject(19452, 1397.58228, -1384.72253, 15.34918,   130.00000, 0.00000, 90.30100);
	CreateDynamicObject(2714, 1395.39941, -1386.45874, 15.71120,   30.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1388.31677, -1390.22644, 13.08910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1393.08215, -1390.22644, 13.08910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1397.93201, -1390.22644, 13.08910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1402.70605, -1390.22644, 13.08910,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(641, 1385.78882, -1389.52795, 11.03696,   0.00000, 0.00000, 80.00000);
	CreateDynamicObject(742, 1385.69250, -1389.74231, 12.89350,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(742, 1405.43848, -1389.64111, 12.89350,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(641, 1405.49219, -1389.43481, 10.89290,   0.00000, 0.00000, 80.00000);
	CreateDynamicObject(11327, 1423.17615, -1385.23279, 15.12870,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(644, 1400.47290, -1389.73438, 12.82200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(644, 1390.64526, -1389.78015, 12.82200,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(644, 1395.58264, -1389.76050, 12.82200,   0.00000, 0.00000, 322.77905);
	CreateDynamicObject(1280, 1388.19250, -1389.62952, 12.95880,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1280, 1402.92676, -1389.83374, 12.95880,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1280, 1393.11536, -1389.68518, 12.95880,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1280, 1398.10034, -1389.74146, 12.95880,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1557, 1399.02820, -1384.83398, 12.58060,   0.00000, 0.00000, 0.90600);
	CreateDynamicObject(3498, 1398.92920, -1384.71240, 16.76200,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1557, 1402.04187, -1384.77979, 12.58060,   0.00000, 0.00000, -179.10400);
	CreateDynamicObject(19446, 1400.57446, -1384.72571, 17.28550,   90.00000, 0.00000, 90.90600);
	CreateDynamicObject(3498, 1402.12744, -1384.68274, 16.76200,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(3498, 1391.86365, -1385.02979, 16.76200,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1557, 1391.74475, -1385.07153, 12.58060,   0.00000, 0.00000, -179.10400);
	CreateDynamicObject(1557, 1388.82544, -1385.10034, 12.58060,   0.00000, 0.00000, 0.90600);
	CreateDynamicObject(3498, 1388.68091, -1384.99377, 16.76200,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1557, 1393.90991, -1385.06299, 12.58060,   0.00000, 0.00000, 0.90600);
	CreateDynamicObject(3498, 1393.76355, -1384.95581, 16.76200,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1557, 1396.90222, -1385.02905, 12.58060,   0.00000, 0.00000, -179.10400);
	CreateDynamicObject(3498, 1397.00244, -1384.93506, 16.76200,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19460, 1388.96802, -1385.05823, 12.46020,   0.00000, 0.00000, 91.69080);
	CreateDynamicObject(19460, 1398.84009, -1384.73181, 12.46020,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19368, 1390.13428, -1385.09741, 16.76080,   180.00000, 0.00000, 90.50400);
	CreateDynamicObject(19368, 1400.40796, -1384.81689, 16.76080,   180.00000, 0.00000, 90.50400);
	CreateDynamicObject(19368, 1395.33960, -1385.04919, 16.76080,   180.00000, 0.00000, 90.50400);

	//Customer: Mani
	CreateDynamicObject(8572, 125.10242, -1491.52576, 19.90740,   0.00000, 0.00000, -123.00000);
	CreateDynamicObject(12839, 133.63741, -1493.04285, 23.91670,   0.00000, 0.00000, -122.00000);
	CreateDynamicObject(12985, 135.74370, -1498.90906, 17.94260,   0.00000, 0.00000, 149.00000);
	CreateDynamicObject(1506, 124.41730, -1494.36365, 21.13950,   0.00000, 0.00000, 58.00000);
	CreateDynamicObject(1698, 123.81419, -1493.20374, 17.66270,   0.00000, 0.00000, -32.00000);
	CreateDynamicObject(983, 142.60855, -1490.45435, 18.44500,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(983, 136.94411, -1487.28345, 18.40900,   -1.00000, 0.00000, 60.00000);
	CreateDynamicObject(983, 131.41273, -1483.92456, 18.19300,   -3.00000, 0.00000, 57.00000);
	CreateDynamicObject(983, 127.65347, -1481.35974, 17.94100,   -3.00000, 0.00000, 55.00000);
	CreateDynamicObject(3934, 124.75460, -1505.48120, 26.58230,   0.00000, 0.00000, 58.00000);
	CreateDynamicObject(970, 131.07024, -1502.14160, 27.05810,   0.00000, 0.00000, 148.00000);
	CreateDynamicObject(970, 124.30276, -1497.93909, 27.05810,   0.00000, 0.00000, 148.00000);
	CreateDynamicObject(970, 133.93251, -1501.45203, 27.05810,   0.00000, 0.00000, 58.00000);
	CreateDynamicObject(970, 136.12083, -1497.90869, 27.05810,   0.00000, 0.00000, 59.00000);
	CreateDynamicObject(970, 123.65321, -1495.08667, 27.05810,   0.00000, 0.00000, 58.00000);
	CreateDynamicObject(970, 125.85027, -1491.54175, 27.05810,   0.00000, 0.00000, 58.00000);
	CreateDynamicObject(970, 135.53450, -1494.85376, 27.05810,   0.00000, 0.00000, 148.00000);
	CreateDynamicObject(1726, 131.87140, -1501.70605, 26.52900,   0.00000, 0.00000, 148.00000);
	CreateDynamicObject(1726, 134.19949, -1499.62244, 26.52900,   0.00000, 0.00000, 238.00000);
	CreateDynamicObject(1726, 129.93756, -1499.34448, 26.52900,   0.00000, 0.00000, 59.00000);
	CreateDynamicObject(1463, 132.26450, -1499.19336, 26.56430,   0.00000, 0.00000, 60.00000);
	CreateDynamicObject(3461, 132.25729, -1499.19861, 24.99770,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1481, 135.68890, -1497.72693, 27.15410,   0.00000, 0.00000, -105.00000);
	CreateDynamicObject(2230, 137.16631, -1496.27698, 26.55700,   0.00000, 0.00000, -76.00000);
	CreateDynamicObject(2230, 132.48650, -1502.88428, 26.55700,   0.00000, 0.00000, -171.00000);
	CreateDynamicObject(1215, 131.19431, -1492.35583, 27.14660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 129.39590, -1491.24487, 27.14660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 121.11353, -1485.81091, 15.65300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 125.35620, -1480.19885, 17.76500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 145.27319, -1492.19714, 18.35300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 136.12119, -1495.66748, 18.35300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, 136.93947, -1505.32239, 18.35300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(983, 123.07786, -1487.13367, 16.96100,   -22.00000, 0.00000, 57.00000);
	CreateDynamicObject(1506, 130.63660, -1506.20178, 22.72650,   0.00000, 0.00000, 60.00000);
	CreateDynamicObject(1215, 127.61466, -1490.48389, 18.35300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(17950, 129.76094, -1496.29089, 19.58430,   0.00000, 0.00000, -32.00000);
	CreateDynamicObject(1966, 131.90530, -1492.64734, 18.88360,   0.00000, 0.00000, -32.00000);
	CreateDynamicObject(13011, 133.76596, -1502.14270, 19.37990,   0.00000, 0.00000, -210.00000);

	//Price's Elevator Building Floor
	CreateDynamicObject(14446, 1825.99585, -1296.66125, 65.39840,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2614, 1824.39673, -1296.76917, 67.80930,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2207, 1788.44214, -1297.06116, 64.79000,   0.00000, 0.00000, 317.83871);
	CreateDynamicObject(1671, 1791.20679, -1296.19861, 65.27980,   0.00000, 0.00000, 339.21667);
	CreateDynamicObject(2614, 1790.65649, -1295.01160, 67.61778,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14806, 1827.45850, -1310.60706, 65.89890,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2576, 1824.62976, -1292.30615, 64.75560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2164, 1793.36414, -1295.73999, 64.81180,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2164, 1793.37000, -1297.52466, 64.81180,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2164, 1793.43237, -1296.51355, 64.81180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14455, 1808.44556, -1301.53662, 66.50420,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(14813, 1816.46655, -1299.96594, 65.21730,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(14805, 1813.90417, -1292.58362, 65.55870,   0.00000, 0.00000, 208.65877);
	CreateDynamicObject(2824, 1789.99561, -1297.88086, 65.56509,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2571, 1771.91040, -1299.95654, 64.81165,   0.00000, 0.00000, 314.81061);
	CreateDynamicObject(2571, 1784.40784, -1296.75574, 64.81165,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2571, 1780.10547, -1296.71887, 64.81165,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2290, 1774.64246, -1303.90918, 64.81450,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2164, 1793.43237, -1298.31348, 64.81180,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14651, 1802.37756, -1306.69458, 67.03970,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(14651, 1800.31738, -1299.81604, 67.03970,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(18766, 1818.36450, -1321.32739, 64.24400,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(18766, 1828.35205, -1321.32739, 64.24400,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1828.10767, -1318.38696, 64.67240,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19379, 1818.48938, -1318.38696, 64.67240,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(970, 1813.64099, -1321.28394, 65.26870,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(970, 1816.28821, -1323.71094, 65.26870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1830.61987, -1323.74561, 65.26870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1825.96155, -1323.75427, 65.26870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1820.94678, -1323.71960, 65.26870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, 1833.02649, -1321.35010, 65.26870,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19176, 1822.38379, -1318.86475, 66.14660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19176, 1822.74084, -1318.86475, 66.14660,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(4724, 1817.92395, -1292.91943, 66.77500,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4724, 1824.74512, -1305.84692, 66.77500,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(4724, 1824.51685, -1292.69556, 66.77500,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 1824.29651, -1284.07019, 67.23410,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19465, 1821.37817, -1281.19336, 67.23410,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1491, 1820.61182, -1281.17139, 64.69110,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1818.43396, -1284.07019, 67.23410,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2528, 1823.65723, -1282.41602, 64.81380,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2527, 1822.67834, -1286.33704, 64.77220,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2523, 1823.66235, -1283.82251, 64.81440,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(11245, 1813.90491, -1321.55066, 69.18179,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(1255, 1818.56165, -1321.91150, 65.33720,   0.00000, 0.00000, 236.82393);
	CreateDynamicObject(1255, 1816.08997, -1321.54211, 65.33720,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(16151, 1828.31873, -1319.88855, 65.16360,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(15036, 1816.17029, -1307.38562, 65.94792,   0.00000, 0.00000, 180.00000);

	//Jareds Elevator Floor
	CreateDynamicObject(19384,1778.7506100,-1297.7143600,121.0195000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19427,1823.5808100,-1296.6579600,119.3406000,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(19427,1778.7506100,-1295.3062700,121.0195000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1778.7506100,-1308.9541000,124.5200000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1778.7506100,-1299.3199500,124.5200000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1778.7506100,-1302.5307600,124.5200000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1778.7506100,-1305.7420700,124.5200000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1772.5073200,-1297.9455600,121.0195000,0.0000000,0.0000000,112.5000000); //
	CreateDynamicObject(19354,1772.4422600,-1307.1489300,121.0175000,0.0000000,0.0000000,63.3060000); //
	CreateDynamicObject(19354,1778.7506100,-1308.9541000,121.0195000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19450,1829.3404500,-1283.7816200,124.5184000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19450,1816.4968300,-1283.7816200,124.5184000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19431,1832.4953600,-1271.0255100,124.5184000,0.0000000,0.0000000,39.4000000); //
	CreateDynamicObject(19450,1829.3404500,-1283.7816200,121.0192000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19388,1822.9185800,-1283.7816200,121.0192000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19450,1816.4587400,-1272.7103300,124.5184000,0.0000000,0.0000000,-59.4000000); //
	CreateDynamicObject(19431,1834.9560500,-1283.7816200,124.5184000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19358,1834.0233200,-1272.8857400,124.5184000,0.0000000,0.0000000,39.4000000); //
	CreateDynamicObject(19450,1816.4968300,-1283.7816200,121.0192000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19358,1822.9185800,-1283.7816200,124.5184000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19450,1816.4587400,-1272.7103300,121.0192000,0.0000000,0.0000000,-59.4000000); //
	CreateDynamicObject(19431,1834.9560500,-1283.7816200,121.0192000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19358,1834.0233200,-1272.8857400,121.0192000,0.0000000,0.0000000,39.4000000); //
	CreateDynamicObject(19431,1832.4952400,-1271.0255100,121.0192000,0.0000000,0.0000000,39.4000000); //
	CreateDynamicObject(19354,1778.7506100,-1305.7420700,121.0195000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1811.3531500,-1312.3177500,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1822.5775100,-1311.7100800,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1818.0022000,-1311.7772200,124.5110000,0.0000000,0.0000000,98.0000000); //
	CreateDynamicObject(19368,1814.8227500,-1312.2242400,124.5110000,0.0000000,0.0000000,98.0000000); //
	CreateDynamicObject(19396,1806.4663100,-1307.4998800,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1815.8714600,-1314.0046400,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1806.4663100,-1307.4998800,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1806.4654500,-1310.7106900,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1806.4654500,-1310.7106900,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1818.5639600,-1306.8415500,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1813.5977800,-1312.3261700,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19441,1813.5977800,-1312.3261700,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1811.3531500,-1312.3177500,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1808.1413600,-1312.3178700,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1808.1413600,-1312.3178700,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1808.1541700,-1305.8139600,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1811.3658400,-1305.8133500,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1814.5766600,-1305.8133500,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1817.7867400,-1305.8133500,121.0154000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1818.5639600,-1310.0512700,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1818.5639600,-1310.0512700,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1818.5639600,-1306.8415500,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1817.7867400,-1305.8133500,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1814.5766600,-1305.8133500,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1811.3658400,-1305.8133500,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1808.1541700,-1305.8139600,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1818.0022000,-1311.7772200,121.0154000,0.0000000,0.0000000,98.0000000); //
	CreateDynamicObject(19368,1819.3659700,-1311.7581800,121.0154000,0.0000000,0.0000000,91.7620000); //
	CreateDynamicObject(19444,1815.1552700,-1318.8587600,120.8774000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19444,1815.1552700,-1318.8587600,124.3770000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19368,1814.8227500,-1312.2242400,121.0154000,0.0000000,0.0000000,98.0000000); //
	CreateDynamicObject(19368,1824.1134000,-1317.2164300,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1824.1134000,-1311.5964400,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1815.8714600,-1317.2164300,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19396,1824.1134000,-1314.0046400,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1818.3595000,-1307.6346400,119.9321000,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(19368,1824.1093800,-1317.2164300,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1824.1134000,-1314.1279300,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1824.1134000,-1311.7204600,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1815.8735400,-1317.2164300,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1815.8714600,-1314.1265900,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1815.8675500,-1312.8094500,124.5110000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19368,1819.3659700,-1311.7581800,124.5110000,0.0000000,0.0000000,91.7620000); //
	CreateDynamicObject(19368,1822.5775100,-1311.7100800,124.5110000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(2948,1835.8907500,-1318.2269300,119.2597000,0.0000000,0.0000000,-45.5000000); //
	CreateDynamicObject(2948,1833.9874300,-1315.2330300,119.2717000,0.0000000,0.0000000,-29.0000000); //
	CreateDynamicObject(19369,1837.1358600,-1320.6959200,119.1742000,0.0000000,-89.9380000,90.0000000); //
	CreateDynamicObject(19369,1833.9261500,-1320.6959200,119.1742000,0.0000000,-90.0000000,90.0000000); //
	CreateDynamicObject(19369,1837.2567100,-1314.6567400,119.1742000,0.0000000,-90.0000000,180.0000000); //
	CreateDynamicObject(19369,1837.2567100,-1320.8400900,119.1722000,0.0000000,-90.0000000,180.0000000); //
	CreateDynamicObject(19369,1837.2567100,-1317.6296400,119.1722000,0.0000000,-90.0000000,180.0000000); //
	CreateDynamicObject(19441,1834.0893600,-1318.2086200,119.1682000,0.0000000,-90.0000000,0.0000000); //
	CreateDynamicObject(19354,1777.1886000,-1309.5161100,124.5200000,0.0000000,0.0000000,63.5000000); //
	CreateDynamicObject(19354,1777.1886000,-1309.5161100,121.0195000,0.0000000,0.0000000,63.5000000); //
	CreateDynamicObject(19354,1774.3138400,-1308.0839800,121.0175000,0.0000000,0.0000000,63.5000000); //
	CreateDynamicObject(19354,1774.3138400,-1308.0839800,124.5180000,0.0000000,0.0000000,63.5000000); //
	CreateDynamicObject(19354,1772.4422600,-1307.1489300,124.5180000,0.0000000,0.0000000,63.3060000); //
	CreateDynamicObject(19354,1824.6857900,-1294.8366700,121.0195000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19354,1777.1425800,-1296.0264900,121.0195000,0.0000000,0.0000000,112.5000000); //
	CreateDynamicObject(19354,1774.1763900,-1297.2552500,121.0195000,0.0000000,0.0000000,112.5000000); //
	CreateDynamicObject(19354,1778.7506100,-1296.1095000,124.5200000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1777.1425800,-1296.0264900,124.5200000,0.0000000,0.0000000,112.5000000); //
	CreateDynamicObject(19354,1774.1763900,-1297.2552500,124.5200000,0.0000000,0.0000000,112.5000000); //
	CreateDynamicObject(19354,1772.5073200,-1297.9455600,124.5200000,0.0000000,0.0000000,112.5000000); //
	CreateDynamicObject(743,1789.9399400,-1300.5647000,119.5533000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19473,1789.9073500,-1300.5813000,119.8211000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(743,1783.4052700,-1300.5647000,119.5533000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19473,1783.3847700,-1300.5813000,119.8211000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(970,1838.9444600,-1315.1550300,119.7866000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(970,1836.8906300,-1322.4043000,119.7865600,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(970,1832.3676800,-1320.3422900,119.7866000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(970,1836.8885500,-1313.0860600,119.7865600,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(970,1834.4288300,-1322.3991700,119.7865600,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(970,1838.9399400,-1320.3469200,119.7866000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(970,1838.9456800,-1316.2326700,119.7866000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(14384,1814.8531500,-1309.3724400,120.4039000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1815.8675500,-1312.8094500,121.0154000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1810.9450700,-1306.7556200,119.7751000,-90.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19441,1815.2180200,-1304.9803500,119.7323800,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(19441,1812.8112800,-1305.9650900,119.8848600,0.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(19441,1817.4331100,-1305.9267600,119.9321400,0.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(19441,1811.1496600,-1306.7252200,119.9185500,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(2207,1776.2179000,-1304.5450400,119.2540500,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(1714,1777.1070600,-1303.1116900,119.2620000,0.0000000,0.0000000,-45.0000000); //
	CreateDynamicObject(2008,1776.1579600,-1305.9615500,119.2184000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1714,1773.3647500,-1302.9781500,119.2620000,0.0000000,0.0000000,45.0000000); //
	CreateDynamicObject(1714,1775.2321800,-1306.5609100,119.2620000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(1714,1775.2467000,-1302.7746600,119.2620000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19383,1810.9583700,-1294.8737800,121.0192000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19445,1815.8198200,-1301.6250000,121.0192000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19445,1818.5524900,-1298.0695800,121.0192000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19445,1810.9622800,-1298.0915500,124.5184000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19445,1815.6898200,-1293.1876200,124.5184000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(2528,1817.9780300,-1300.3670700,119.2677000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(2523,1811.5706800,-1299.1794400,119.2677000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(2526,1816.7585400,-1293.7614700,119.3588000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2632,1816.5210000,-1294.1971400,119.3089000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1575,1776.3367900,-1306.0791000,120.0253000,0.0000000,0.0000000,40.0000000); //
	CreateDynamicObject(3077,1774.7308300,-1297.1203600,119.2374000,0.0000000,0.0000000,22.5000000); //
	CreateDynamicObject(19513,1775.6568600,-1305.0794700,120.0184000,0.0000000,0.0000000,45.0000000); //
	CreateDynamicObject(2894,1774.5747100,-1305.0730000,120.0305000,0.0000000,0.0000000,45.0000000); //
	CreateDynamicObject(14455,1778.6397700,-1305.5544400,120.9218000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(16662,1775.0009800,-1308.1441700,129.0641900,63.5000000,90.0000000,63.5000000); //
	CreateDynamicObject(1651,1816.5731200,-1272.7631800,122.5561600,0.0000000,0.0000000,-59.5000000); //
	CreateDynamicObject(11665,1820.1071800,-1272.5109900,119.9622000,0.0000000,0.0000000,120.5000000); //
	CreateDynamicObject(11665,1817.3636500,-1274.1464800,119.9622000,0.0000000,0.0000000,120.5000000); //
	CreateDynamicObject(11665,1814.6403800,-1275.7471900,119.9622000,0.0000000,0.0000000,120.5000000); //
	CreateDynamicObject(1703,1818.5648200,-1277.1816400,119.2631500,0.0000000,0.0000000,-509.5000000); //
	CreateDynamicObject(1703,1821.2800300,-1275.5775100,119.2631500,0.0000000,0.0000000,-509.5000000); //
	CreateDynamicObject(14791,1828.7093500,-1274.8723100,121.2158700,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2630,1826.6575900,-1282.7728300,119.2481000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(2627,1830.9582500,-1282.5512700,119.2209000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(2628,1832.8999000,-1282.6657700,119.3009000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(2629,1828.6075400,-1282.7981000,119.2609000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(19427,1778.7506100,-1300.1228000,121.0195000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(16151,1825.2642800,-1305.6110800,119.6006000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(19354,1778.7506100,-1302.5307600,121.0195000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1829.4134500,-1296.5299100,121.0195000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19354,1827.8974600,-1294.8366700,121.0195000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19427,1827.7476800,-1297.3272700,120.5271000,0.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(19427,1827.7385300,-1296.6090100,119.8122000,90.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(19427,1827.7385300,-1298.0426000,119.8122000,90.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(14820,1827.7019000,-1297.0988800,120.7225200,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19427,1825.2392600,-1295.7183800,119.4979000,0.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(19427,1825.1866500,-1296.6579600,119.3406000,0.0000000,90.0000000,90.0000000); //
	CreateDynamicObject(19427,1827.7392600,-1295.7183800,119.6768000,0.0000000,90.0000000,0.0000000); //
	CreateDynamicObject(2232,1826.3402100,-1296.9880400,119.9237000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(2232,1826.3402100,-1297.6844500,119.9237000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(2232,1826.3393600,-1298.3303200,119.8614000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2232,1829.1353800,-1298.3303200,119.8614000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2232,1828.4246800,-1298.3303200,119.8594000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2232,1827.7347400,-1298.3303200,119.8614000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2232,1827.0235600,-1298.3303200,119.8594000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1753,1835.1700400,-1299.4751000,119.2559000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1753,1835.1700400,-1310.7214400,119.2559000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1753,1835.1700400,-1307.9080800,119.2559000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1753,1835.1700400,-1305.0953400,119.2559000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1753,1835.1700400,-1302.2908900,119.2559000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(2300,1820.3890400,-1316.7121600,119.2741000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(2296,1823.7934600,-1315.8770800,119.2535000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(2314,1822.0913100,-1312.2235100,119.2511000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1494,1823.6597900,-1283.7761200,119.2563000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(1502,1824.0883800,-1313.2189900,119.2543000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1502,1810.9349400,-1294.0888700,119.2543000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1494,1778.7497600,-1296.9357900,119.2563000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(2357,1798.1911600,-1306.8343500,119.6634000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2357,1798.1911600,-1308.1546600,119.6634000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1720,1795.1567400,-1307.5000000,119.2466000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(1720,1799.0188000,-1305.3371600,119.2466000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1720,1797.1458700,-1305.3371600,119.2466000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1720,1801.3349600,-1307.5000000,119.2466000,0.0000000,0.0000000,-90.0000000); //
	CreateDynamicObject(1720,1799.0188000,-1309.7039800,119.2466000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(1720,1797.1458700,-1309.7039800,119.2466000,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(1670,1776.0773900,-1305.0905800,120.0420000,0.0000000,0.0000000,140.0000000); //
	CreateDynamicObject(3044,1775.9018600,-1305.2982200,119.9961000,7.0000000,-100.5000000,130.0000000); //
	CreateDynamicObject(1550,1777.9903600,-1309.5304000,119.6103400,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1550,1778.4099100,-1309.8029800,119.6103400,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1550,1778.3770800,-1309.2913800,119.6103400,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1210,1774.3371600,-1305.5378400,119.3991000,-20.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(2035,1822.9300500,-1312.1069300,119.7635000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(348,1775.9663100,-1306.0371100,120.0682000,-90.0000000,0.0000000,40.0000000); //
	CreateDynamicObject(2332,1816.3697500,-1312.9271200,119.7190000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(2332,1772.2045900,-1307.2341300,120.7947100,0.0000000,0.0000000,153.0000000); //
	CreateDynamicObject(19445,1815.6857900,-1293.1835900,121.0192000,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(19445,1810.9603300,-1301.0456500,121.0192000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19445,1818.5524900,-1298.0695800,124.5184000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(19445,1815.8198200,-1301.6250000,124.5184000,0.0000000,0.0000000,90.0000000); //

	//Emilio Benitos Island re add (Order 34306)
	CreateDynamicObject(4823, 1198.77, -3219.98, 32.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(4852, 1261.90, -3237.90, 30.83,   0.00, 0.00, 0.00);
	CreateDynamicObject(4875, 1131.20, -3440.00, 38.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(4851, 1042.50, -3230.98, 35.38,   0.00, 0.00, 0.00);
	CreateDynamicObject(4824, 1084.93, -3280.40, 58.36,   0.00, 0.00, 0.00);
	CreateDynamicObject(4825, 1006.45, -3280.35, 60.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(4810, 955.65, -3457.50, 37.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(4826, 963.50, -3280.40, 73.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1595, 976.44, -3280.75, 78.01,   0.00, 0.00, 270.00);
	CreateDynamicObject(5114, 990.00, -3153.00, 9.60,   0.00, 0.00, 172.49);
	CreateDynamicObject(618, 1152.85, -3319.16, 51.73,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1147.05, -3314.69, 52.57,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1139.53, -3315.36, 53.02,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1130.96, -3315.33, 52.97,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1123.41, -3314.52, 53.17,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1115.64, -3313.72, 53.75,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1109.62, -3313.21, 54.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1100.35, -3312.59, 54.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1148.72, -3288.35, 53.33,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1150.20, -3281.17, 52.89,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1150.13, -3271.86, 52.86,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1147.91, -3263.97, 53.07,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1146.54, -3256.20, 53.18,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1145.38, -3248.87, 53.28,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1141.62, -3242.08, 52.44,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1135.22, -3241.66, 52.55,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1127.49, -3241.28, 52.71,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1120.34, -3240.79, 52.83,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1113.53, -3240.19, 52.98,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1106.95, -3240.97, 53.45,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1220.19, -3267.68, 46.24,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1254.20, -3265.79, 45.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1263.84, -3240.43, 42.14,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1272.05, -3195.69, 28.44,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1291.06, -3183.69, 21.17,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1343.16, -3186.26, 18.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1362.66, -3217.99, 20.85,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1365.03, -3242.72, 24.01,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1367.09, -3266.52, 24.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1369.46, -3288.44, 25.24,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1374.67, -3310.34, 24.12,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1123.67, -3382.40, 44.31,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1099.78, -3389.56, 46.95,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1081.74, -3415.47, 42.76,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1056.14, -3420.67, 50.35,   0.00, 0.00, 0.00);
	CreateDynamicObject(647, 1099.60, -3148.70, 26.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(647, 1096.50, -3146.80, 26.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(647, 1094.40, -3149.70, 26.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(708, 1032.01, -3155.88, 28.00,   0.00, 0.00, 69.98);
	CreateDynamicObject(708, 984.61, -3165.99, 32.79,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 1096.70, -3150.50, 25.00,   0.00, 0.00, 69.98);
	CreateDynamicObject(708, 1073.43, -3161.75, 25.38,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 1134.81, -3215.70, 47.30,   0.00, 0.00, 69.98);
	CreateDynamicObject(708, 1033.08, -3216.41, 55.19,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 1124.62, -3165.95, 24.68,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 1351.98, -3338.10, 24.93,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 884.63, -3359.93, 33.71,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 888.80, -3378.95, 34.49,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 899.89, -3392.28, 37.77,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 880.04, -3408.38, 33.09,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 920.04, -3389.39, 44.89,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 939.01, -3388.53, 51.55,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 898.67, -3441.86, 32.99,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 928.02, -3455.30, 39.05,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 933.36, -3484.14, 37.15,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 950.11, -3512.84, 37.77,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 990.94, -3427.18, 57.24,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 968.62, -3473.19, 44.42,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 1008.22, -3448.01, 48.93,   0.00, 0.00, 69.99);
	CreateDynamicObject(708, 994.62, -3474.52, 43.28,   0.00, 0.00, 69.99);
	CreateDynamicObject(726, 974.60, -3337.63, 61.67,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 972.90, -3363.02, 62.51,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 983.98, -3376.29, 64.05,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 993.98, -3350.63, 65.39,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1016.02, -3343.22, 65.49,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1023.07, -3360.74, 63.76,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1046.71, -3335.35, 60.93,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1072.90, -3346.06, 57.44,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1040.32, -3383.26, 61.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1048.33, -3353.89, 59.78,   0.00, 0.00, 0.00);
	CreateDynamicObject(726, 1068.23, -3374.50, 55.72,   0.00, 0.00, 0.00);
	CreateDynamicObject(13725, 1151.10, -3019.00, -2.50,   0.00, 0.00, 178.98);
	CreateDynamicObject(1337, 1313.81, -4114.48, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(5114, 1146.00, -3134.00, 5.00,   0.00, 0.00, 145.23);
	CreateDynamicObject(5114, 1095.70, -3120.00, 5.00,   0.00, 0.00, 155.98);
	CreateDynamicObject(17031, 1402.58, -3152.40, 0.00,   0.00, 0.00, 55.99);
	CreateDynamicObject(17031, 1388.50, -3164.72, 8.00,   0.00, 0.00, 73.98);
	CreateDynamicObject(17031, 1349.34, -3164.52, 4.50,   0.00, 0.00, 81.99);
	CreateDynamicObject(17031, 1310.76, -3166.82, 4.50,   0.00, 0.00, 81.97);
	CreateDynamicObject(17031, 1246.20, -3145.51, -0.50,   0.00, 359.75, 71.98);
	CreateDynamicObject(17031, 1217.69, -3143.43, -2.00,   0.00, 359.75, 71.98);
	CreateDynamicObject(17031, 1223.13, -3139.69, -0.50,   0.00, 359.75, 71.98);
	CreateDynamicObject(17031, 962.47, -3136.70, 2.25,   0.00, 359.75, 89.98);
	CreateDynamicObject(17031, 930.20, -3155.08, 2.25,   0.00, 359.75, 147.97);
	CreateDynamicObject(17031, 932.79, -3187.43, 2.25,   0.00, 359.75, 161.97);
	CreateDynamicObject(17031, 933.87, -3220.59, 2.25,   0.00, 359.75, 191.96);
	CreateDynamicObject(17031, 890.51, -3234.78, -5.81,   0.00, 359.75, 249.96);
	CreateDynamicObject(17031, 926.20, -3246.05, -2.31,   0.00, 359.75, 249.96);
	CreateDynamicObject(9551, 890.58, -3328.22, 24.66,   0.00, 0.00, 334.48);
	CreateDynamicObject(17031, 910.51, -3226.14, 2.25,   0.00, 359.75, 123.96);
	CreateDynamicObject(17031, 923.54, -3240.00, 21.75,   0.00, 359.75, 123.96);
	CreateDynamicObject(17031, 918.20, -3326.35, 25.00,   0.00, 359.75, 155.96);
	CreateDynamicObject(9551, 885.80, -3499.23, 24.66,   0.00, 0.00, 30.98);
	CreateDynamicObject(17031, 819.23, -3423.71, 2.44,   0.00, 359.75, 149.96);
	CreateDynamicObject(17031, 829.72, -3426.59, 20.69,   0.00, 39.74, 149.96);
	CreateDynamicObject(17031, 847.15, -3423.06, 28.94,   0.00, 355.74, 83.96);
	CreateDynamicObject(17031, 904.11, -3483.09, 19.94,   0.00, 311.74, 199.96);
	CreateDynamicObject(17031, 914.73, -3512.00, 20.94,   0.00, 311.74, 199.96);
	CreateDynamicObject(9551, 1034.45, -3564.02, 8.66,   0.00, 0.00, 100.99);
	CreateDynamicObject(17031, 834.03, -3445.63, 2.44,   0.00, 357.74, 245.96);
	CreateDynamicObject(17031, 935.44, -3599.55, -2.81,   0.00, 357.74, 247.96);
	CreateDynamicObject(17031, 942.50, -3587.11, 13.44,   0.00, 33.73, 241.95);
	CreateDynamicObject(17031, 958.75, -3561.45, 19.19,   0.00, 33.73, 321.95);
	CreateDynamicObject(17031, 945.62, -3567.29, 22.26,   14.00, 5.73, 321.95);
	CreateDynamicObject(17031, 949.93, -3553.69, 19.19,   0.00, 33.72, 31.95);
	CreateDynamicObject(9551, 1137.17, -3450.49, 8.66,   0.00, 0.00, 144.98);
	CreateDynamicObject(9551, 1253.71, -3386.84, 13.16,   0.00, 0.00, 110.98);
	CreateDynamicObject(17031, 1127.60, -3516.70, 0.00,   0.00, 357.74, 345.96);
	CreateDynamicObject(17031, 1115.53, -5693.41, 6.69,   0.00, 27.74, 7.95);
	CreateDynamicObject(17031, 1091.90, -3481.98, 14.44,   0.00, 5.74, 327.95);
	CreateDynamicObject(17031, 1113.23, -3444.81, 14.44,   0.00, 5.74, 315.94);
	CreateDynamicObject(17031, 1146.88, -3422.67, 14.44,   0.00, 5.74, 289.95);
	CreateDynamicObject(17031, 1170.91, -3432.17, 6.69,   331.99, 5.74, 207.94);
	CreateDynamicObject(17031, 1225.81, -3374.68, 15.19,   5.99, 3.72, 299.94);
	CreateDynamicObject(17031, 1258.96, -3353.74, 15.19,   5.99, 3.73, 287.94);
	CreateDynamicObject(17031, 1291.69, -3345.90, 15.19,   5.99, 3.72, 273.94);
	CreateDynamicObject(9551, 1322.12, -3351.59, 10.16,   0.00, 0.00, 100.98);
	CreateDynamicObject(17031, 1363.07, -3357.62, 0.44,   5.99, 3.72, 293.93);
	CreateDynamicObject(17031, 1341.55, -3347.02, 10.69,   1.98, 47.71, 305.93);
	CreateDynamicObject(17031, 1337.38, -3337.60, 14.44,   1.98, 47.71, 283.93);
	CreateDynamicObject(17031, 1384.96, -3328.42, 13.69,   1.97, 25.71, 303.93);
	CreateDynamicObject(17031, 1398.33, -3341.71, 4.69,   1.97, 25.71, 281.92);
	CreateDynamicObject(17031, 1409.82, -3362.76, -8.56,   1.96, 357.71, 281.92);
	CreateDynamicObject(17031, 1401.07, -3349.75, 1.94,   1.96, 15.70, 281.92);
	CreateDynamicObject(17031, 1420.09, -3347.39, 1.94,   1.95, 15.69, 303.91);
	CreateDynamicObject(17031, 1404.49, -3346.00, 6.44,   1.95, 15.69, 303.91);
	CreateDynamicObject(17031, 1380.03, -3301.73, 13.69,   1.97, 25.71, 21.92);
	CreateDynamicObject(17031, 1401.70, -3320.62, 13.69,   1.96, 25.71, 21.91);
	CreateDynamicObject(17031, 1376.51, -3267.21, 13.69,   1.96, 25.71, 351.91);
	CreateDynamicObject(17031, 1375.01, -3229.09, 9.44,   1.95, 25.71, 351.91);
	CreateDynamicObject(8355, 1289.80, -3057.00, 7.91,   0.00, 0.00, 0.00);
	CreateDynamicObject(17031, 1307.80, -3143.80, 0.00,   0.00, 0.00, 25.98);
	CreateDynamicObject(17031, 1270.00, -3142.10, 0.00,   0.00, 0.00, 179.97);
	CreateDynamicObject(6300, 1313.30, -3099.00, -0.20,   0.00, 0.00, 90.00);
	CreateDynamicObject(8251, 1323.30, -3100.30, 11.80,   0.00, 0.00, 179.99);
	CreateDynamicObject(2885, 1315.50, -3094.50, 13.33,   90.00, 0.00, 0.00);
	CreateDynamicObject(2885, 1315.50, -3101.00, 13.33,   89.99, 0.00, 0.00);
	CreateDynamicObject(2885, 1315.50, -3106.80, 13.33,   89.99, 0.00, 0.00);
	CreateDynamicObject(2885, 1315.50, -3112.60, 13.33,   89.99, 0.00, 0.00);
	CreateDynamicObject(2885, 1326.40, -3094.50, 13.33,   89.99, 0.00, 0.00);
	CreateDynamicObject(2885, 1326.40, -3101.00, 13.33,   89.99, 0.00, 0.00);
	CreateDynamicObject(2885, 1326.40, -3106.80, 13.33,   89.99, 0.00, 0.00);
	CreateDynamicObject(2885, 1326.40, -3112.60, 13.33,   89.99, 0.00, 0.00);
	CreateDynamicObject(2885, 1335.95, -3093.10, 13.33,   89.99, 0.00, 90.00);
	CreateDynamicObject(2885, 1335.95, -3104.00, 13.34,   89.99, 0.00, 89.99);
	CreateDynamicObject(2885, 1335.95, -3107.50, 13.35,   89.99, 0.00, 89.99);
	CreateDynamicObject(6300, 1348.30, -3148.00, -3.50,   0.00, 0.00, 90.00);
	CreateDynamicObject(17031, 1263.50, -3090.40, 0.00,   0.00, 0.00, 179.96);
	CreateDynamicObject(17031, 1263.50, -3049.30, 0.00,   0.00, 0.00, 179.96);
	CreateDynamicObject(17031, 1316.50, -3039.50, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(9339, 1300.00, -2937.90, 7.20,   0.00, 0.00, 90.00);
	CreateDynamicObject(9339, 1274.90, -2937.90, 7.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1304.90, -2937.90, 4.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1293.60, -2937.90, 4.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1282.30, -2937.90, 4.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1271.00, -2937.90, 4.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1300.70, -2937.90, 3.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1274.90, -2937.90, 3.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1304.90, -2937.90, 0.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1293.60, -2937.90, 0.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1282.30, -2937.90, 0.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1271.00, -2937.90, 0.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(11496, 1317.30, -3129.20, 5.10,   0.00, 90.00, 270.00);
	CreateDynamicObject(11496, 1333.10, -3129.20, 5.10,   0.00, 89.99, 269.99);
	CreateDynamicObject(11496, 1343.90, -3129.20, 5.10,   0.00, 89.99, 269.99);
	CreateDynamicObject(11496, 1343.90, -3117.80, 5.10,   0.00, 89.99, 90.00);
	CreateDynamicObject(905, 1310.00, -3068.80, 8.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 1310.60, -3068.80, 8.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 1311.20, -3068.70, 8.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(5130, 1357.50, -3123.90, 4.80,   0.00, 0.00, 313.99);
	CreateDynamicObject(10230, 1414.30, -3101.70, 5.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(7515, 1413.70, -3103.00, 7.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(8886, 1382.00, -3097.40, 4.70,   0.00, 0.00, 90.00);
	CreateDynamicObject(3630, 1385.10, -3097.70, 6.20,   0.00, 0.00, 270.00);
	CreateDynamicObject(3630, 1384.70, -3108.80, 6.20,   0.00, 0.00, 269.99);
	CreateDynamicObject(3630, 1381.60, -3108.80, 6.20,   0.00, 0.00, 269.99);
	CreateDynamicObject(7836, 1347.80, -3151.00, 9.90,   0.00, 0.00, 90.00);
	CreateDynamicObject(1383, 1388.10, -3131.30, -10.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1388, 1388.00, -3131.30, 22.60,   0.00, 0.00, 325.99);
	CreateDynamicObject(1392, 1410.40, -3098.50, 26.20,   0.00, 0.00, 325.99);
	CreateDynamicObject(1393, 1410.50, -3098.00, 25.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(11495, 1373.00, -3124.00, 2.50,   19.98, 0.00, 0.00);
	CreateDynamicObject(2935, 1410.30, -3098.10, 22.80,   0.00, 0.00, 322.00);
	CreateDynamicObject(12913, 1384.00, -3122.00, 6.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(12930, 1381.40, -3141.20, 5.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(12930, 1379.00, -3141.20, 5.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(16601, 1325.40, -3137.20, 9.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(16601, 1325.30, -3132.40, 9.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(11496, 1351.80, -3121.40, 5.10,   0.00, 89.99, 0.00);
	CreateDynamicObject(3066, 1334.80, -3130.80, 5.60,   0.00, 0.00, 90.00);
	CreateDynamicObject(3066, 1346.50, -3130.70, 5.60,   0.00, 0.00, 89.99);
	CreateDynamicObject(3577, 1353.70, -3127.30, 5.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1353.80, -3120.20, 5.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1384.20, -3127.20, 5.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1381.00, -3127.20, 5.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3630, 1368.50, -3135.70, 6.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3630, 1368.60, -3131.10, 6.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3630, 1368.60, -3126.40, 6.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1354.10, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1358.20, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1362.30, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1366.40, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1370.00, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1376.00, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1380.10, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1384.20, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1384.80, -3117.60, 5.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1321.60, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1325.70, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1329.80, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1333.90, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1338.00, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1342.10, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1346.20, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1349.80, -3068.60, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1351.90, -3070.70, 8.40,   0.00, 0.00, 90.00);
	CreateDynamicObject(970, 1351.90, -3074.80, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3078.90, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3083.00, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3087.10, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3091.20, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3095.30, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3099.40, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3103.50, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3107.60, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3111.70, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3115.80, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3119.90, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1351.90, -3127.30, 8.40,   0.00, 0.00, 89.99);
	CreateDynamicObject(970, 1349.80, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1345.70, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1341.60, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1337.50, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1333.40, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1329.30, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1325.20, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1321.10, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1317.00, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(970, 1312.90, -3129.30, 8.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(897, 1308.40, -3133.10, 9.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3569, 1329.50, -3077.20, 10.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3569, 1329.50, -3071.90, 10.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3567, 1318.10, -3116.20, 8.70,   0.00, 0.00, 90.00);
	CreateDynamicObject(3567, 1318.20, -3121.50, 8.70,   0.00, 0.00, 89.99);
	CreateDynamicObject(3630, 1317.60, -3127.40, 9.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(8077, 1346.70, -3079.50, 11.80,   0.00, 0.00, 179.99);
	CreateDynamicObject(8077, 1346.70, -3099.60, 11.90,   0.00, 0.00, 179.99);
	CreateDynamicObject(3630, 1327.10, -3127.40, 9.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3630, 1336.60, -3127.40, 9.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3630, 1345.90, -3127.50, 9.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1349.60, -3112.10, 8.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1346.40, -3112.10, 8.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1343.20, -3112.10, 8.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1349.60, -3115.30, 8.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1346.40, -3115.30, 8.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1343.20, -3115.30, 8.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3749, 1287.30, -3127.00, 13.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 1292.70, -3435.60, 8.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 1292.30, -3435.80, 8.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 1281.90, -3435.70, 8.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(9339, 1338.00, -3073.00, 0.00,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1324.70, -3073.00, 0.00,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1345.53, -3073.00, 2.70,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1335.70, -3073.00, 2.70,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1324.40, -3073.00, 2.70,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1338.00, -3073.00, 4.00,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1320.00, -3073.00, 4.00,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1345.50, -3073.00, 5.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1334.60, -3073.00, 5.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3851, 1323.40, -3073.00, 5.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1297.50, -2937.90, 0.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1271.80, -2937.90, 0.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(9339, 1351.20, -3085.90, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(9339, 1351.20, -3111.90, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3851, 1351.20, -3078.60, 2.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3851, 1351.20, -3089.90, 2.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(17031, 1078.00, -3583.60, 3.00,   0.00, 5.74, 321.95);
	CreateDynamicObject(17031, 1100.90, -3579.40, 9.00,   0.00, 5.73, 245.94);
	CreateDynamicObject(3851, 1351.20, -3101.20, 2.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3851, 1351.20, -3112.40, 2.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(9339, 1351.20, -3085.90, 4.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(9339, 1351.20, -3111.90, 4.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3851, 1351.10, -3078.60, 5.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3851, 1351.10, -3089.90, 5.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3851, 1351.10, -3101.20, 5.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3851, 1351.10, -3112.50, 5.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(11496, 1359.10, -3117.80, 2.00,   0.00, 89.99, 89.99);
	CreateDynamicObject(11496, 1375.10, -3117.80, 2.00,   0.00, 89.99, 89.99);
	CreateDynamicObject(11496, 1378.93, -3117.80, 2.00,   0.00, 89.99, 89.99);
	CreateDynamicObject(11496, 1386.73, -3125.60, 2.00,   0.00, 89.99, 0.00);
	CreateDynamicObject(11496, 1386.73, -3134.30, 2.00,   0.00, 89.99, 0.00);
	CreateDynamicObject(8661, 1389.30, -3188.00, 13.30,   19.99, 0.00, 90.00);
	CreateDynamicObject(8661, 1408.00, -3188.00, 9.90,   0.00, 0.00, 89.99);
	CreateDynamicObject(17031, 1393.00, -3207.50, 0.00,   1.95, 25.71, 271.91);
	CreateDynamicObject(8661, 1427.30, -3194.00, 6.50,   19.98, 0.00, 89.99);
	CreateDynamicObject(8661, 1446.00, -3194.00, 3.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(8661, 1446.00, -3233.70, 3.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(8661, 1426.10, -3234.00, 3.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(17031, 1406.10, -3233.60, 0.00,   1.94, 25.71, 353.90);
	CreateDynamicObject(17031, 1442.10, -3164.70, 0.00,   1.94, 0.00, 267.89);
	CreateDynamicObject(17031, 1460.30, -3185.00, 2.00,   1.93, 0.00, 1.88);
	CreateDynamicObject(17031, 1460.60, -3229.10, 2.00,   1.94, 0.00, 1.88);
	CreateDynamicObject(8661, 1446.00, -3273.70, 3.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(8661, 1426.10, -3274.00, 3.20,   0.00, 0.00, 89.99);
	CreateDynamicObject(17031, 1463.00, -3272.60, 3.00,   1.93, 0.00, 1.88);
	CreateDynamicObject(17031, 1412.50, -3256.00, 0.00,   1.93, 0.00, 179.99);
	CreateDynamicObject(17031, 1406.60, -3293.90, 0.00,   1.93, 0.00, 13.86);
	CreateDynamicObject(17031, 1427.00, -3293.00, 0.00,   1.93, 0.00, 265.98);
	CreateDynamicObject(14394, 1451.00, -3294.55, 2.39,   0.00, 0.00, 90.00);
	CreateDynamicObject(14394, 1451.00, -3296.50, 0.80,   0.00, 0.00, 89.99);
	CreateDynamicObject(11496, 1451.80, -3298.90, -0.15,   0.00, 0.00, 270.00);
	CreateDynamicObject(17031, 1398.20, -3214.40, 11.00,   1.95, 0.00, 271.91);
	CreateDynamicObject(17031, 1438.90, -3163.50, 10.00,   1.93, 0.00, 263.89);
	CreateDynamicObject(17031, 1385.20, -3168.10, 11.00,   10.00, 0.00, 73.98);
	CreateDynamicObject(17031, 1416.00, -3208.20, 3.00,   1.94, 0.00, 271.91);
	CreateDynamicObject(2944, 1461.51, -3100.45, 10.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(17031, 1316.50, -3005.50, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(17031, 1263.50, -3012.00, 0.00,   0.00, 0.00, 179.96);
	CreateDynamicObject(900, 1395.00, -3205.60, 27.00,   0.00, 0.00, 51.99);
	CreateDynamicObject(900, 1394.90, -3176.00, 27.00,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1401.90, -3203.90, 25.00,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1407.00, -3179.50, 25.00,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1422.60, -3173.70, 22.00,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1417.60, -3201.90, 23.60,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1435.40, -3176.40, 21.00,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1431.90, -3201.70, 21.00,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1451.00, -3180.10, 19.00,   0.00, 0.00, 51.98);
	CreateDynamicObject(900, 1453.60, -3201.40, 19.00,   0.00, 0.00, 5.99);
	CreateDynamicObject(900, 1445.20, -3208.90, 19.00,   0.00, 0.00, 3.98);
	CreateDynamicObject(900, 1441.90, -3220.70, 19.00,   0.00, 0.00, 3.98);
	CreateDynamicObject(900, 1416.30, -3225.40, 19.00,   0.00, 0.00, 3.98);
	CreateDynamicObject(900, 1442.40, -3237.00, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1420.00, -3236.60, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1420.50, -3254.50, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1447.20, -3251.90, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1422.80, -3271.00, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1446.00, -3272.90, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1431.70, -3284.70, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1447.10, -3290.30, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(17031, 1397.80, -3278.80, 5.00,   1.96, 25.71, 351.91);
	CreateDynamicObject(900, 1447.20, -3261.50, 19.00,   0.00, 0.00, 359.98);
	CreateDynamicObject(900, 1432.50, -3290.90, 17.80,   0.00, 0.00, 359.98);
	CreateDynamicObject(17031, 1462.00, -3281.00, 0.00,   1.93, 0.00, 5.87);
	CreateDynamicObject(3707, 1407.00, -3251.00, 11.00,   0.00, 0.00, 179.99);
	CreateDynamicObject(17031, 1395.00, -3268.20, 9.00,   1.95, 0.00, 351.91);
	CreateDynamicObject(17031, 1394.00, -3241.10, 15.00,   1.95, 0.00, 351.91);
	CreateDynamicObject(900, 1455.90, -3297.80, 18.00,   90.00, 0.00, 359.98);
	CreateDynamicObject(17324, 1433.30, -3285.30, 1.00,   0.00, 0.00, 182.00);
	CreateDynamicObject(2985, 1427.80, -3284.60, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1427.80, -3283.50, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1427.80, -3282.50, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1427.80, -3281.40, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1427.80, -3280.10, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1429.30, -3284.60, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1429.20, -3283.50, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1429.20, -3282.50, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1429.20, -3281.40, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2985, 1429.20, -3280.20, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(3795, 1427.30, -3278.00, 3.50,   0.00, 0.00, 90.00);
	CreateDynamicObject(3795, 1428.76, -3278.16, 3.50,   0.00, 0.00, 89.99);
	CreateDynamicObject(3794, 1428.00, -3275.70, 3.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(3794, 1428.00, -3274.30, 3.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(941, 1437.00, -3285.30, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(941, 1434.70, -3285.30, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(941, 1432.40, -3285.30, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(941, 1437.10, -3282.70, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(941, 1434.80, -3282.70, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(941, 1432.50, -3282.70, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1437.80, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1437.80, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1437.10, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1437.20, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1436.40, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1436.50, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1435.80, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1435.80, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1435.20, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1435.20, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1434.60, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1434.60, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1434.10, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1434.10, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1433.60, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1433.60, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1433.00, -3282.42, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1433.11, -3283.05, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1432.50, -3282.40, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1432.50, -3282.90, 4.15,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1431.90, -3282.40, 4.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2891, 1431.90, -3282.90, 4.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(2901, 1437.50, -3285.10, 4.53,   0.00, 0.00, 0.00);
	CreateDynamicObject(2901, 1434.90, -3285.20, 4.53,   0.00, 0.00, 29.99);
	CreateDynamicObject(2901, 1433.50, -3285.20, 4.53,   0.00, 0.00, 1.99);
	CreateDynamicObject(2901, 1432.20, -3285.10, 4.53,   0.00, 0.00, 13.99);
	CreateDynamicObject(2901, 1433.20, -3284.40, 3.60,   0.00, 0.00, 13.99);
	CreateDynamicObject(2901, 1436.40, -3284.30, 3.60,   0.00, 0.00, 343.98);
	CreateDynamicObject(937, 1438.90, -3274.50, 3.70,   0.00, 0.00, 90.00);
	CreateDynamicObject(937, 1438.90, -3276.40, 3.70,   0.00, 0.00, 89.99);
	CreateDynamicObject(937, 1438.90, -3278.70, 3.70,   0.00, 0.00, 89.99);
	CreateDynamicObject(937, 1438.90, -3280.50, 3.70,   0.00, 0.00, 89.99);
	CreateDynamicObject(2901, 1436.30, -3285.20, 4.53,   0.00, 0.00, 322.00);
	CreateDynamicObject(3637, 1431.00, -3220.90, 10.00,   0.00, 0.00, 355.99);
	CreateDynamicObject(3675, 1454.30, -3259.80, 9.00,   0.00, 0.00, 270.00);
	CreateDynamicObject(3675, 1454.30, -3261.90, 9.00,   0.00, 0.00, 269.99);
	CreateDynamicObject(3675, 1454.30, -3264.30, 9.00,   0.00, 0.00, 269.99);
	CreateDynamicObject(3675, 1454.30, -3266.60, 9.00,   0.00, 0.00, 269.99);
	CreateDynamicObject(3273, 1451.70, -3225.30, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(1690, 1449.20, -3225.30, 3.90,   0.00, 0.00, 179.99);
	CreateDynamicObject(914, 1452.45, -3231.60, 6.20,   0.00, 0.00, 90.00);
	CreateDynamicObject(986, 1451.00, -3221.30, 4.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(986, 1451.00, -3229.40, 4.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(986, 1447.00, -3225.40, 4.80,   0.00, 0.00, 90.00);
	CreateDynamicObject(3273, 1451.50, -3237.80, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(1690, 1449.10, -3237.70, 3.90,   0.00, 0.00, 179.99);
	CreateDynamicObject(986, 1447.00, -3237.40, 4.80,   0.00, 0.00, 90.00);
	CreateDynamicObject(986, 1451.10, -3233.40, 4.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(986, 1451.10, -3241.40, 4.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(3273, 1451.80, -3248.20, 3.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(1690, 1448.90, -3248.00, 3.90,   0.00, 0.00, 179.99);
	CreateDynamicObject(986, 1447.00, -3247.80, 4.80,   0.00, 0.00, 90.00);
	CreateDynamicObject(986, 1451.00, -3243.70, 4.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(986, 1451.00, -3251.80, 4.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1452.00, -3253.00, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1452.00, -3254.30, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1451.90, -3255.60, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1451.90, -3256.90, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1451.90, -3258.20, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1450.60, -3253.00, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1450.60, -3254.30, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1450.60, -3255.60, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1450.60, -3256.90, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1450.60, -3258.20, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1449.30, -3253.00, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1449.30, -3254.30, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1449.30, -3255.60, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1449.30, -3256.90, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(3633, 1449.30, -3258.20, 3.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(5269, 1452.90, -3272.00, 5.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(5269, 1452.90, -3280.10, 5.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(5269, 1452.90, -3272.00, 10.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(5269, 1452.90, -3280.00, 10.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1452.30, -3285.80, 4.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1427.40, -3258.80, 4.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, 1427.40, -3243.50, 4.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1225, 1451.60, -3186.00, 3.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1225, 1450.50, -3186.30, 3.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1225, 1451.10, -3188.00, 3.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1225, 1420.60, -3202.40, 9.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(1225, 1436.30, -3213.90, 3.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1225, 1436.30, -3212.80, 3.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1100.30, -3241.10, 54.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1104.00, -3232.40, 52.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1126.00, -3230.90, 50.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1153.70, -3235.20, 49.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1143.70, -3327.30, 51.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1125.40, -3331.30, 52.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1103.70, -3323.10, 54.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1093.70, -3328.70, 55.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(3605, 1182.60, -3329.80, 57.40,   0.00, 0.00, 179.99);
	CreateDynamicObject(683, 1311.20, -3191.10, 19.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1316.70, -3228.70, 26.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1319.90, -3261.40, 34.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1269.40, -3314.00, 40.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1293.40, -3314.90, 36.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1311.40, -3316.90, 30.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1338.50, -3315.60, 25.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1332.20, -3309.20, 27.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(683, 1332.70, -3282.90, 28.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(6300, 1179.00, -3310.00, 43.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(3660, 1208.50, -3319.10, 53.00,   0.00, 0.00, 270.00);
	CreateDynamicObject(3660, 1208.50, -3338.60, 53.00,   0.00, 0.00, 269.99);
	CreateDynamicObject(3660, 1197.70, -3347.70, 53.00,   0.00, 0.00, 179.99);
	CreateDynamicObject(3660, 1178.10, -3347.70, 53.00,   0.00, 0.00, 179.99);
	CreateDynamicObject(3660, 1158.60, -3347.70, 53.00,   0.00, 0.00, 179.99);
	CreateDynamicObject(3660, 1149.50, -3336.70, 53.00,   0.00, 0.00, 90.01);
	CreateDynamicObject(3660, 1149.50, -3317.10, 53.00,   0.00, 0.00, 90.00);
	CreateDynamicObject(4100, 1209.40, -3315.40, 53.10,   0.00, 0.00, 50.00);
	CreateDynamicObject(4100, 1209.40, -3329.20, 53.10,   0.00, 0.00, 49.99);
	CreateDynamicObject(4100, 1209.40, -3341.40, 53.10,   0.00, 0.00, 49.99);
	CreateDynamicObject(4100, 1202.80, -3348.60, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1189.00, -3348.60, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1175.20, -3348.60, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1161.40, -3348.60, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1155.80, -3348.60, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1148.60, -3341.40, 53.10,   0.00, 0.00, 49.99);
	CreateDynamicObject(4100, 1148.70, -3327.60, 53.10,   0.00, 0.00, 49.99);
	CreateDynamicObject(4100, 1169.00, -3319.00, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(1594, 1167.40, -3339.30, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1171.20, -3339.40, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1175.10, -3339.60, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1179.40, -3339.60, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1187.20, -3339.90, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1190.70, -3339.90, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1194.30, -3340.00, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1198.60, -3339.90, 52.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1213.10, -3327.70, 45.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1213.30, -3333.70, 45.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1212.40, -3338.70, 43.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1211.20, -3344.60, 41.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1209.30, -3349.30, 40.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1203.70, -3352.00, 39.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1197.40, -3352.30, 39.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1191.50, -3353.80, 42.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1184.00, -3354.90, 43.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1178.90, -3353.30, 42.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1173.80, -3353.20, 42.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1166.50, -3353.20, 42.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1160.10, -3354.30, 43.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(618, 1155.20, -3353.20, 45.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1160.20, -3353.60, 44.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1155.30, -3352.20, 46.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1162.10, -3347.60, 44.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1166.10, -3353.10, 43.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1170.70, -3348.00, 43.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1173.90, -3353.10, 42.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1178.70, -3353.20, 43.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1184.10, -3354.30, 43.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1185.90, -3348.40, 43.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1176.90, -3347.50, 43.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1191.10, -3353.70, 42.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1196.90, -3351.90, 40.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1203.20, -3351.70, 39.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1209.40, -3349.20, 41.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1204.40, -3347.90, 40.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1211.30, -3343.90, 42.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1203.70, -3336.50, 45.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1212.70, -3338.10, 43.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1213.40, -3333.10, 45.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1213.20, -3327.10, 46.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(869, 1207.80, -3330.60, 45.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(6300, 1176.00, -3286.00, 43.37,   0.00, 0.00, 179.99);
	CreateDynamicObject(3606, 1191.20, -3260.40, 55.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3660, 1205.50, -3278.10, 53.00,   0.00, 0.00, 269.99);
	CreateDynamicObject(3660, 1205.50, -3258.50, 53.00,   0.00, 0.00, 269.99);
	CreateDynamicObject(3660, 1196.40, -3248.30, 53.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3660, 1176.80, -3248.30, 53.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3660, 1157.30, -3248.30, 53.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(4100, 1206.30, -3280.80, 53.10,   0.00, 0.00, 49.99);
	CreateDynamicObject(4100, 1206.30, -3267.00, 53.10,   0.00, 0.00, 49.99);
	CreateDynamicObject(4100, 1206.30, -3253.90, 53.10,   0.00, 0.00, 49.99);
	CreateDynamicObject(4100, 1199.60, -3247.50, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1185.90, -3247.40, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1172.10, -3247.40, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(4100, 1158.30, -3247.40, 53.10,   0.00, 0.00, 319.98);
	CreateDynamicObject(9241, 1164.50, -3277.00, 53.00,   0.00, 0.00, 87.99);
	CreateDynamicObject(1594, 1161.20, -3260.10, 51.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1161.30, -3253.50, 51.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1168.90, -3260.30, 51.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1168.70, -3253.60, 51.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1176.30, -3260.60, 51.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1176.10, -3253.80, 51.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(6300, 1053.00, -3146.00, 16.00,   0.00, 0.00, 185.99);
	CreateDynamicObject(3607, 1045.70, -3126.40, 30.20,   0.00, 0.00, 6.00);
	CreateDynamicObject(3604, 1070.90, -3115.20, 26.60,   0.00, 0.00, 6.00);
	CreateDynamicObject(3660, 1081.60, -3136.10, 26.70,   0.00, 0.00, 275.99);
	CreateDynamicObject(3660, 1079.60, -3116.70, 26.70,   0.00, 0.00, 275.99);
	CreateDynamicObject(3660, 1069.40, -3106.70, 26.70,   0.00, 0.00, 5.99);
	CreateDynamicObject(3660, 1050.00, -3108.74, 26.70,   0.00, 0.00, 5.99);
	CreateDynamicObject(3660, 1030.50, -3110.80, 26.70,   0.00, 0.00, 5.99);
	CreateDynamicObject(3660, 1020.70, -3121.00, 26.70,   0.00, 0.00, 96.00);
	CreateDynamicObject(3660, 1022.74, -3140.30, 26.70,   0.00, 0.00, 95.99);
	CreateDynamicObject(4100, 1082.70, -3138.50, 25.80,   0.00, 0.00, 55.99);
	CreateDynamicObject(4100, 1081.30, -3124.80, 25.80,   0.00, 0.00, 55.98);
	CreateDynamicObject(4100, 1079.80, -3111.10, 25.80,   0.00, 0.00, 55.96);
	CreateDynamicObject(4100, 1072.00, -3105.30, 25.80,   0.00, 0.00, 145.96);
	CreateDynamicObject(4100, 1058.30, -3106.70, 25.80,   0.00, 0.00, 145.95);
	CreateDynamicObject(4100, 1044.60, -3108.20, 25.80,   0.00, 0.00, 145.94);
	CreateDynamicObject(4100, 1030.90, -3109.60, 25.80,   0.00, 0.00, 145.94);
	CreateDynamicObject(4100, 1025.40, -3110.20, 25.80,   0.00, 0.00, 145.93);
	CreateDynamicObject(4100, 1019.50, -3117.50, 25.80,   0.00, 0.00, 55.96);
	CreateDynamicObject(4100, 1020.90, -3131.20, 25.80,   0.00, 0.00, 55.96);
	CreateDynamicObject(4100, 1022.30, -3144.90, 25.80,   0.00, 0.00, 55.96);
	CreateDynamicObject(1594, 1058.70, -3115.00, 25.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1051.50, -3115.50, 25.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1035.70, -3117.40, 25.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(1594, 1028.80, -3117.90, 25.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(11496, 1154.10, -3044.90, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(14537, 1171.90, -3082.00, 6.00,   0.00, 0.00, 351.99);
	CreateDynamicObject(1646, 1225.30, -3084.60, 2.30,   14.99, 0.00, 175.99);
	CreateDynamicObject(1646, 1237.80, -3094.80, 2.70,   14.99, 0.00, 165.99);
	CreateDynamicObject(1646, 1211.50, -3081.60, 1.50,   10.00, 0.00, 175.98);
	CreateDynamicObject(1646, 1190.90, -3075.40, 3.90,   10.00, 0.00, 155.97);
	CreateDynamicObject(1646, 1176.20, -3063.80, 2.80,   10.00, 0.00, 153.96);
	CreateDynamicObject(1646, 1165.70, -3053.70, 1.60,   0.00, 0.00, 165.95);
	CreateDynamicObject(1646, 1142.70, -3055.10, 0.90,   10.00, 0.00, 189.95);
	CreateDynamicObject(1646, 1121.80, -3059.30, 0.90,   10.00, 0.00, 189.95);
	CreateDynamicObject(1646, 1100.80, -3063.60, 1.00,   10.00, 0.00, 167.94);
	CreateDynamicObject(1646, 1080.80, -3070.80, 0.90,   10.00, 0.00, 199.94);
	CreateDynamicObject(1646, 1058.10, -3069.60, 2.80,   25.00, 0.00, 151.94);
	CreateDynamicObject(1646, 1037.90, -3060.70, 2.20,   19.99, 0.00, 163.93);
	CreateDynamicObject(1646, 1018.10, -3066.30, 1.60,   25.00, 0.00, 205.92);
	CreateDynamicObject(1639, 1144.30, -3102.80, 13.30,   0.00, 0.00, 82.00);
	CreateDynamicObject(1598, 1143.60, -3108.10, 13.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(1598, 1136.10, -3048.80, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1598, 1134.00, -3057.50, 0.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(1598, 1104.80, -3064.10, 0.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(1598, 1170.10, -3048.50, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1598, 1223.60, -3084.40, 2.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(1598, 1238.20, -3085.30, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(1598, 1076.30, -3065.80, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1238.60, -3104.90, 18.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1234.80, -3106.00, 18.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1235.90, -3101.80, 18.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1203.30, -3132.20, 26.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1201.40, -3131.50, 27.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1192.70, -3078.10, 19.20,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1155.40, -3123.90, 26.30,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1154.10, -3124.10, 25.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1152.10, -3124.60, 25.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1164.00, -3062.40, 18.70,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1119.30, -3063.60, 16.40,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1096.00, -3071.60, 20.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1072.00, -3078.90, 20.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1045.60, -3089.90, 23.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(710, 1103.50, -3123.80, 28.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(1637, 1130.40, -3092.70, 14.90,   0.00, 0.00, 95.99);
	CreateDynamicObject(2406, 1245.10, -3113.00, 4.70,   0.00, 0.00, 247.99);
	CreateDynamicObject(2406, 1230.30, -3085.90, 2.40,   0.00, 0.00, 179.99);
	CreateDynamicObject(2406, 1221.80, -3093.90, 4.00,   0.00, 0.00, 219.99);
	CreateDynamicObject(2405, 1189.90, -3074.90, 4.30,   0.00, 0.00, 148.00);
	CreateDynamicObject(2405, 1173.60, -3063.50, 3.00,   0.00, 0.00, 147.99);
	CreateDynamicObject(2405, 1141.30, -3055.70, 1.40,   0.00, 0.00, 169.97);
	CreateDynamicObject(2405, 1098.70, -3063.30, 1.00,   0.00, 0.00, 169.97);
	CreateDynamicObject(6295, 1004.50, -3103.70, 32.00,   0.00, 0.00, 351.99);
	CreateDynamicObject(17031, 1143.30, -3435.00, 1.00,   0.00, 359.75, 93.98);
	CreateDynamicObject(3505, 1064.80, -3242.50, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1053.10, -3242.50, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1038.90, -3242.50, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1024.60, -3242.50, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1006.20, -3242.50, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1064.80, -3318.90, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1053.10, -3318.90, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1038.90, -3318.90, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1024.60, -3318.90, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3505, 1003.50, -3318.60, 63.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(900, 1454.00, -3219.30, 18.30,   0.00, 0.00, 3.98);
	CreateDynamicObject(2934, 1442.80, -3108.70, 6.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(2934, 1445.90, -3108.70, 6.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(2934, 1442.60, -3096.90, 6.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(2934, 1445.70, -3096.90, 6.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(8355, 1289.80, -3007.00, 7.90,   0.00, 0.00, 0.00);
	CreateDynamicObject(17031, 1316.50, -2973.20, -4.10,   0.00, 0.00, 0.00);
	CreateDynamicObject(17031, 1316.50, -2950.30, 0.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(17031, 1264.00, -2976.00, -4.90,   0.00, 0.00, 179.96);
	CreateDynamicObject(17031, 1263.50, -2961.00, 0.00,   0.00, 0.00, 179.96);
	CreateDynamicObject(17031, 1121.30, -3562.20, 0.00,   0.00, 357.74, 333.96);
	CreateDynamicObject(17031, 1119.30, -3545.00, 0.00,   0.00, 357.74, 347.95);
	CreateDynamicObject(17031, 1131.20, -3544.20, 0.00,   0.00, 357.73, 347.94);
	CreateDynamicObject(17031, 1081.00, -3528.00, 7.00,   0.00, 5.74, 47.94);
	CreateDynamicObject(6965, 1034.70, -3303.60, 66.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(6965, 1034.70, -3257.20, 66.80,   0.00, 0.00, 0.00);
	CreateDynamicObject(3660, 1070.00, -3293.55, 66.00,   0.00, 0.00, 90.01);
	CreateDynamicObject(3660, 1070.00, -3313.00, 66.00,   0.00, 0.00, 90.01);
	CreateDynamicObject(3660, 1070.00, -3267.20, 66.00,   0.00, 0.00, 90.01);
	CreateDynamicObject(3660, 1070.00, -3247.60, 66.00,   0.00, 0.00, 90.01);
	CreateDynamicObject(869, 1036.70, -3310.10, 63.80,   0.00, 0.00, 10.00);
	CreateDynamicObject(869, 1037.80, -3310.10, 63.80,   0.00, 0.00, 9.99);
	CreateDynamicObject(869, 1039.30, -3309.30, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1039.40, -3308.20, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1036.20, -3307.50, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1040.50, -3307.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1039.10, -3305.30, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1040.80, -3304.30, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1041.40, -3305.20, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1041.40, -3302.70, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1038.50, -3303.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1035.50, -3306.10, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1033.70, -3310.10, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1031.40, -3309.70, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1030.00, -3308.10, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1033.10, -3307.10, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1035.70, -3308.20, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1029.50, -3305.90, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1037.00, -3301.50, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1038.60, -3300.80, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1041.20, -3300.90, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1040.30, -3299.90, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1039.70, -3298.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1040.60, -3299.10, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1038.20, -3297.40, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1036.70, -3299.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1037.30, -3296.70, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1036.00, -3295.90, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1034.00, -3295.70, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1032.10, -3296.40, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1033.90, -3298.60, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1034.40, -3300.50, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1032.90, -3302.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1032.40, -3304.70, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1031.40, -3303.30, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1032.10, -3301.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1033.40, -3298.90, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1030.90, -3299.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1030.00, -3297.80, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1030.60, -3299.10, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1032.20, -3296.70, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1029.20, -3301.70, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1029.30, -3303.80, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1028.30, -3300.00, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1028.00, -3299.40, 63.80,   0.00, 0.00, 13.99);
	CreateDynamicObject(869, 1027.00, -3302.90, 63.80,   0.00, 0.00, 57.99);
	CreateDynamicObject(869, 1028.20, -3301.00, 63.80,   0.00, 0.00, 57.97);
	CreateDynamicObject(869, 1027.60, -3306.60, 63.80,   0.00, 0.00, 81.97);
	CreateDynamicObject(869, 1042.20, -3258.70, 63.80,   0.00, 0.00, 69.97);
	CreateDynamicObject(869, 1040.90, -3261.30, 63.80,   0.00, 0.00, 45.96);
	CreateDynamicObject(869, 1042.00, -3255.60, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1039.90, -3255.90, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1039.40, -3257.80, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1039.60, -3259.00, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1038.20, -3261.00, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1035.70, -3261.80, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1037.40, -3262.90, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1038.90, -3262.60, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1035.50, -3263.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1033.70, -3263.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1031.90, -3263.20, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1034.00, -3260.70, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1036.90, -3259.00, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1037.40, -3256.00, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1035.50, -3254.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1037.40, -3253.90, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1039.30, -3253.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1040.80, -3253.80, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1041.50, -3253.30, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1041.60, -3255.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1034.30, -3253.00, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1034.80, -3251.20, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1037.00, -3250.90, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1039.50, -3251.20, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1037.70, -3251.10, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1035.30, -3250.30, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1032.40, -3255.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1031.90, -3253.00, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1032.60, -3249.90, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1029.90, -3251.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1029.00, -3253.60, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1029.40, -3255.30, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1033.20, -3260.30, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1029.80, -3261.40, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1029.90, -3262.50, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1031.90, -3262.00, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1031.50, -3258.90, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1030.30, -3257.80, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1028.30, -3259.20, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1028.20, -3260.10, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1027.40, -3257.40, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1027.40, -3255.30, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1028.90, -3253.30, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1030.80, -3253.60, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1032.10, -3253.20, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(869, 1027.90, -3253.20, 63.80,   0.00, 0.00, 59.95);
	CreateDynamicObject(356, 1439.05, -3274.39, 4.20,   90.00, 0.00, 90.00);
	CreateDynamicObject(356, 1438.43, -3274.35, 4.20,   90.00, 0.00, 90.00);
	CreateDynamicObject(356, 1438.43, -3275.40, 4.20,   90.00, 0.00, 90.00);
	CreateDynamicObject(356, 1438.96, -3275.41, 4.20,   90.00, 0.00, 90.00);
	CreateDynamicObject(356, 1438.44, -3276.38, 4.20,   90.00, 0.00, 90.00);
	CreateDynamicObject(356, 1438.96, -3276.36, 4.20,   90.00, 0.00, 90.00);
	CreateDynamicObject(356, 1438.72, -3276.91, 4.20,   90.00, 0.00, 0.00);
	CreateDynamicObject(355, 1439.16, -3278.80, 4.22,   90.00, 0.00, 90.00);
	CreateDynamicObject(355, 1438.55, -3278.81, 4.22,   90.00, 0.00, 90.00);
	CreateDynamicObject(355, 1438.55, -3279.96, 4.22,   90.00, 0.00, 90.00);
	CreateDynamicObject(355, 1439.08, -3280.02, 4.22,   90.00, 0.00, 90.00);
	CreateDynamicObject(355, 1439.10, -3281.11, 4.22,   90.00, 0.00, 90.00);
	CreateDynamicObject(355, 1438.57, -3281.07, 4.22,   90.00, 0.00, 90.00);

	//Kieran Mofujohn
		//Exterior
	CreateDynamicObject(16409,-85.9003900,-1551.5000000,1.6100000,0.0000000,0.0000000,133.9950000); //object(by_weehangr) (1)
	CreateDynamicObject(3356,-94.5000000,-1561.7002000,5.9800000,0.0000000,0.0000000,43.9950000); //object(cxrf_savhus2_) (1)
	CreateDynamicObject(3355,-99.9000000,-1589.5000000,1.6000000,0.0000000,0.0000000,33.0000000); //object(cxrf_savhus1_) (1)
	CreateDynamicObject(1493,-95.5000000,-1565.9700000,2.1700000,0.0000000,0.0000000,44.0000000); //object(gen_doorshop01) (1)
	CreateDynamicObject(3055,-80.0996100,-1556.1801000,3.4000000,0.0000000,0.0000000,43.9950000); //object(kmb_shutter) (1)
	CreateDynamicObject(1497,-96.0000000,-1596.8799000,1.9800000,0.0000000,0.0000000,32.9970000); //object(gen_doorext02) (1)
	CreateDynamicObject(3881,-60.5000000,-1550.6999500,0.0000000,0.0000000,0.0000000,136.0000000); //object(airsecbooth_sfse) (1)
	CreateDynamicObject(3881,-55.9000000,-1555.2000000,0.0000000,0.0000000,0.0000000,136.0000000); //object(airsecbooth_sfse) (2)
	CreateDynamicObject(2714,-93.8000000,-1564.4399000,4.3000000,0.0000000,0.0000000,44.0000000); //object(cj_open_sign_2) (1)
	CreateDynamicObject(1764,-93.5996100,-1565.0000000,2.2000000,0.0000000,0.0000000,43.9950000); //object(low_couch_2) (1)
	CreateDynamicObject(3174,-109.5000000,-1579.5000000,1.6000000,0.0000000,0.0000000,209.9930000); //object(sm_airstrm_sml_) (1)
	CreateDynamicObject(3175,-48.2998000,-1576.2998000,1.5400000,0.0000000,0.0000000,324.9980000); //object(sm_airstrm_med_) (2)
	CreateDynamicObject(3174,-44.7000000,-1569.7000000,1.5400000,0.0000000,0.0000000,0.0000000); //object(sm_airstrm_sml_) (2)
	CreateDynamicObject(3174,-76.7998100,-1547.7998000,1.6000000,0.0000000,0.0000000,223.9950000); //object(sm_airstrm_sml_) (3)
	CreateDynamicObject(3174,-81.9000000,-1608.8000500,1.8000000,0.0000000,0.0000000,270.0000000); //object(sm_airstrm_sml_) (4)
	CreateDynamicObject(3175,-90.2000000,-1582.6000000,1.4000000,0.0000000,0.0000000,213.0000000); //object(sm_airstrm_med_) (3)
	CreateDynamicObject(3174,-68.0000000,-1567.9000000,1.6000000,0.0000000,0.0000000,220.0000000); //object(sm_airstrm_sml_) (5)
	CreateDynamicObject(1766,-97.0000000,-1568.2000000,2.1000000,0.0000000,0.0000000,44.0000000); //object(med_couch_1) (1)
	CreateDynamicObject(2673,-94.0000000,-1566.6000000,2.2900000,0.0000000,0.0000000,0.0000000); //object(proc_rubbish_5) (1)
	CreateDynamicObject(964,-47.3000000,-1566.1000000,2.0000000,0.0000000,0.0000000,314.9950000); //object(cj_metal_crate) (1)
	CreateDynamicObject(2985,-48.3000000,-1565.5000000,2.0000000,0.0000000,0.0000000,179.9950000); //object(minigun_base) (1)
	CreateDynamicObject(3886,-44.5000000,-1611.0000000,1.0500000,0.0000000,0.0000000,43.0000000); //object(ws_jettynol_sfx) (2)
	CreateDynamicObject(2612,-93.6970000,-1595.5303000,3.5000000,0.0000000,0.0000000,31.9980000); //object(police_nb2) (1)
	CreateDynamicObject(1441,-97.4600000,-1599.9000000,2.7000000,0.0000000,0.0000000,116.0000000); //object(dyn_box_pile_4) (1)
	CreateDynamicObject(1810,-46.7000000,-1572.2000000,1.6000000,0.0000000,0.0000000,230.0000000); //object(cj_foldchair) (1)
	CreateDynamicObject(1763,-80.7000000,-1607.1000000,1.8000000,0.0000000,0.0000000,180.0000000); //object(low_couch_1) (1)
	CreateDynamicObject(994,-60.1000000,-1595.4000000,1.6000000,0.0000000,0.0000000,135.0000000); //object(lhouse_barrier2) (1)
	CreateDynamicObject(994,-66.8000000,-1601.7000000,1.6000000,0.0000000,0.0000000,134.0000000); //object(lhouse_barrier2) (2)
	CreateDynamicObject(16105,-62.4003900,-1589.2998000,3.6000000,0.0000000,0.0000000,314.9950000); //object(des_westrn11_04) (1)
	CreateDynamicObject(11501,-46.4000000,-1560.9000000,1.6000000,0.0000000,0.0000000,315.0000000); //object(des_westrn9_03) (1)
	CreateDynamicObject(2673,-64.0000000,-1586.7002000,1.8400000,0.0000000,0.0000000,0.0000000); //object(proc_rubbish_5) (2)
	CreateDynamicObject(2096,-64.9003900,-1587.5000000,1.7200000,0.0000000,0.0000000,199.9950000); //object(cj_rockingchair) (1)
	CreateDynamicObject(966,-69.8000000,-1595.4000000,1.6000000,0.0000000,0.0000000,223.0000000); //object(bar_gatebar01) (1)
	CreateDynamicObject(967,-70.6000000,-1596.2000000,1.6000000,0.0000000,0.0000000,313.0000000); //object(bar_gatebox01) (1)
	CreateDynamicObject(3557,-116.2002000,-1605.5996000,4.3000000,0.0000000,0.0000000,212.9970000); //object(compmedhos4_lae) (1)
	CreateDynamicObject(16285,-74.2000000,-1599.4000000,1.6000000,0.0000000,0.0000000,224.0000000); //object(des_westrn7_03) (1)
	CreateDynamicObject(1362,-65.7001900,-1588.2998000,2.3600000,0.0000000,0.0000000,0.0000000); //object(cj_firebin) (2)
	CreateDynamicObject(3174,-76.2998100,-1606.2998000,1.9000000,0.0000000,0.0000000,304.9970000); //object(sm_airstrm_sml_) (7)
	CreateDynamicObject(3362,-54.1000000,-1581.8000000,1.6000000,0.0000000,0.0000000,144.9980000); //object(des_ruin2_) (1)
	CreateDynamicObject(16326,-70.4003900,-1541.4004000,1.6000000,0.0000000,0.0000000,43.9950000); //object(des_byoffice) (2)
	CreateDynamicObject(1498,-69.9000000,-1545.8860000,1.2000000,0.0000000,0.0000000,44.0000000); //object(gen_doorext03) (1)
	CreateDynamicObject(3175,-59.4000000,-1541.9000000,1.5000000,0.0000000,0.0000000,55.0000000); //object(sm_airstrm_med_) (4)
	CreateDynamicObject(3284,-89.5000000,-1604.9000000,3.4400000,0.0000000,0.0000000,303.0000000); //object(conhoos5) (1)
	CreateDynamicObject(11631,-74.6000000,-1538.3300000,5.5000000,0.0000000,0.0000000,315.0000000); //object(ranch_desk) (1)
	CreateDynamicObject(1768,-77.6000000,-1538.9000000,4.2000000,0.0000000,0.0000000,45.0000000); //object(low_couch_3) (1)
	CreateDynamicObject(2604,-74.6000000,-1541.0000000,5.0000000,0.0000000,0.0000000,225.0000000); //object(cj_police_counter) (1)
	CreateDynamicObject(1712,-79.3000000,-1543.5000000,4.2000000,0.0000000,0.0000000,132.0000000); //object(kb_couch05) (1)
	CreateDynamicObject(1810,-75.4000000,-1539.0000000,4.2000000,0.0000000,0.0000000,180.0000000); //object(cj_foldchair) (2)
	CreateDynamicObject(2315,-78.1000000,-1542.3000000,4.2000000,0.0000000,0.0000000,135.0000000); //object(cj_tv_table4) (1)
	CreateDynamicObject(1760,-76.5996100,-1542.9004000,4.2000000,0.0000000,0.0000000,225.0000000); //object(med_couch_2) (1)
	CreateDynamicObject(2894,-78.1000000,-1542.3000000,4.7000000,0.0000000,0.0000000,0.0000000); //object(kmb_rhymesbook) (1)
	CreateDynamicObject(1544,-78.7000000,-1541.9000000,4.7000000,0.0000000,0.0000000,0.0000000); //object(cj_beer_b_1) (1)
	CreateDynamicObject(1543,-79.1000000,-1541.1000000,4.7000000,0.0000000,0.0000000,0.0000000); //object(cj_beer_b_2) (1)
	CreateDynamicObject(2673,-76.6000000,-1540.3000000,4.3000000,0.0000000,0.0000000,0.0000000); //object(proc_rubbish_5) (3)
	CreateDynamicObject(2837,-78.9000000,-1541.6000000,4.7000000,0.0000000,0.0000000,0.0000000); //object(gb_takeaway02) (1)
	CreateDynamicObject(1369,-67.3000000,-1543.3000000,2.2000000,0.0000000,0.0000000,90.0000000); //object(cj_wheelchair1) (1)
	CreateDynamicObject(3174,-48.6000000,-1554.1000000,1.6000000,0.0000000,0.0000000,0.0000000); //object(sm_airstrm_sml_) (6)
	CreateDynamicObject(985,-76.4500000,-1608.4399000,-0.6000000,0.0000000,0.0000000,30.0000000); //object(gate_autor) (23)
	CreateDynamicObject(985,-69.9000000,-1604.1000000,-0.6000000,0.0000000,0.0000000,37.0000000); //object(gate_autor) (24)
	CreateDynamicObject(985,-44.0500000,-1573.1700000,-1.3000000,0.0000000,0.0000000,61.0000000); //object(gate_autor) (25)
	CreateDynamicObject(985,-48.1000000,-1579.9100000,-1.3000000,0.0000000,0.0000000,57.0000000); //object(gate_autor) (26)
	CreateDynamicObject(985,-52.6000000,-1586.3400000,-1.3000000,0.0000000,0.0000000,53.0000000); //object(gate_autor) (27)
	CreateDynamicObject(985,-57.5000000,-1592.5000000,-1.3000000,0.0000000,0.0000000,50.0000000); //object(gate_autor) (28)
	CreateDynamicObject(3285,-108.5000000,-1571.0000000,3.5000000,0.0000000,0.0000000,135.0000000); //object(conhoos4) (1)
	CreateDynamicObject(1421,-108.3000000,-1574.0000000,2.4000000,0.0000000,0.0000000,224.0000000); //object(dyn_boxes) (1)

		//Interior
	CreateDynamicObject(14748,1921.0000000,-106.6000000,645.5000000,0.0000000,0.0000000,2.0000000); //object(sfhsm1) (2)
	CreateDynamicObject(2009,1970.4000000,-175.6000100,617.2000100,0.0000000,0.0000000,0.0000000); //object(officedesk2l) (1)
	CreateDynamicObject(1798,1911.9000000,-109.6000000,643.5000000,0.0000000,0.0000000,272.0000000); //object(swank_bed_1) (1)
	CreateDynamicObject(2136,1920.2000000,-98.9000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(cj_k3_sink) (1)
	CreateDynamicObject(1753,1910.9000000,-98.1000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(swank_couch_1) (1)
	CreateDynamicObject(1753,1910.9000200,-101.9000000,643.5000000,0.0000000,0.0000000,92.0000000); //object(swank_couch_1) (2)
	CreateDynamicObject(1737,1924.4000000,-105.5000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(med_dinning_5) (1)
	CreateDynamicObject(2311,1913.0000000,-100.2000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(cj_tv_table2) (1)
	CreateDynamicObject(2315,1913.7000000,-103.9000000,643.5000000,0.0000000,0.0000000,0.0000000); //object(cj_tv_table4) (1)
	CreateDynamicObject(1791,1914.3000000,-104.2000000,644.0000000,0.0000000,0.0000000,178.0000000); //object(swank_tv_2) (2)
	CreateDynamicObject(11631,1910.8000000,-105.4000000,644.7000100,0.0000000,0.0000000,0.0000000); //object(ranch_desk) (1)
	CreateDynamicObject(2120,1911.3000000,-106.1000000,644.0999800,0.0000000,0.0000000,268.0000000); //object(med_din_chair_4) (1)
	CreateDynamicObject(2139,1924.1400000,-98.7660000,643.5000000,0.0000000,0.0000000,2.0000000); //object(cj_k3_low_unit2) (1)
	CreateDynamicObject(2147,1925.2000000,-98.8000000,643.5000000,0.0000000,0.0000000,0.0000000); //object(cj_kitch1_fridge) (1)
	CreateDynamicObject(2139,1923.2000000,-98.8000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(cj_k3_low_unit2) (2)
	CreateDynamicObject(2528,1919.5000000,-115.7000000,643.5000000,0.0000000,0.0000000,182.0000000); //object(cj_toilet3) (2)
	CreateDynamicObject(2517,1916.4000000,-114.8000000,643.5000000,0.0000000,0.0000000,182.0000000); //object(cj_shower1) (1)
	CreateDynamicObject(2518,1919.2000000,-113.1000000,643.5000000,0.0000000,0.0000000,272.0000000); //object(cj_b_sink2) (1)
	CreateDynamicObject(2291,1913.8000000,-98.0000000,643.5000000,0.0000000,0.0000000,4.0000000); //object(swk_single_1) (1)
	CreateDynamicObject(2330,1911.4000000,-111.2000000,643.5000000,0.0000000,0.0000000,182.0000000); //object(cj_bedroom1_w) (2)
	CreateDynamicObject(1794,1923.2002000,-112.5000000,643.5000000,0.0000000,0.0000000,182.0000000); //object(low_bed_3) (1)
	CreateDynamicObject(2846,1909.6000000,-111.6000000,643.5000000,0.0000000,0.0000000,0.0000000); //object(gb_bedclothes05) (1)
	CreateDynamicObject(1491,1916.8500000,-110.2000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(gen_doorint01) (1)
	CreateDynamicObject(14604,1923.9000000,-110.4000000,644.5000000,0.0000000,0.0000000,182.0000000); //object(tv_stand_bike) (1)
	CreateDynamicObject(16779,1912.5000000,-108.7000000,647.2999900,0.0000000,0.0000000,0.0000000); //object(ufo_light02) (1)
	CreateDynamicObject(2120,1924.6000000,-104.6000000,644.0999800,0.0000000,0.0000000,92.0000000); //object(med_din_chair_4) (2)
	CreateDynamicObject(2120,1923.6000000,-105.6000000,644.0999800,0.0000000,0.0000000,184.0000000); //object(med_din_chair_4) (3)
	CreateDynamicObject(2120,1925.5000000,-104.6000000,644.0999800,0.0000000,0.0000000,92.0000000); //object(med_din_chair_4) (4)
	CreateDynamicObject(2149,1924.1000000,-98.8000000,644.7000100,0.0000000,0.0000000,2.0000000); //object(cj_microwave1) (1)
	CreateDynamicObject(1783,1915.2000000,-103.8000000,644.0999800,0.0000000,0.0000000,0.0000000); //object(swank_video_2) (1)
	CreateDynamicObject(2855,1914.8000000,-111.2000000,643.5000000,0.0000000,0.0000000,0.0000000); //object(gb_bedmags05) (1)
	CreateDynamicObject(2332,1909.9000000,-107.9000000,644.0000000,0.0000000,0.0000000,92.0000000); //object(kev_safe) (1)
	CreateDynamicObject(1551,1913.7000000,-100.3000000,644.2000100,0.0000000,0.0000000,0.0000000); //object(dyn_wine_big) (1)
	CreateDynamicObject(1551,1924.6000000,-105.3000000,644.5000000,0.0000000,0.0000000,0.0000000); //object(dyn_wine_big) (2)
	CreateDynamicObject(2323,1921.6000000,-113.0000000,643.5000000,0.0000000,0.0000000,92.0000000); //object(cj_bedroom1) (2)
	CreateDynamicObject(1491,1915.4200000,-105.7600000,643.5000000,0.0000000,0.0000000,272.0000000); //object(gen_doorint01) (2)
	CreateDynamicObject(1555,1926.2000000,-107.2000000,643.5000000,0.0000000,0.0000000,271.7500000); //object(gen_doorext17) (2)
	CreateDynamicObject(1555,1910.4200000,-104.3500000,643.5000000,0.0000000,0.0000000,92.0000000); //object(gen_doorext17) (3)
	CreateDynamicObject(357,1913.2000000,-112.6000000,645.4000200,0.0000000,0.0000000,6.0000000); //object(1)
	CreateDynamicObject(2315,1913.1000000,-112.0000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(cj_tv_table4) (2)
	CreateDynamicObject(1544,1923.2000000,-98.9000000,644.5999800,0.0000000,0.0000000,0.0000000); //object(cj_beer_b_1) (1)
	CreateDynamicObject(1491,1921.2400000,-110.1000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(gen_doorint01) (3)
	CreateDynamicObject(16779,1923.2000000,-113.3000000,647.0000000,0.0000000,0.0000000,0.0000000); //object(ufo_light02) (2)
	CreateDynamicObject(2229,1920.0000000,-105.1000000,643.5000000,0.0000000,0.0000000,94.0000000); //object(swank_speaker) (1)
	CreateDynamicObject(15046,2364.6001000,-1146.6000000,1080.6000000,0.0000000,0.0000000,0.0000000); //object(countrysavehouse) (1)
	CreateDynamicObject(2104,1915.5601000,-109.1000000,643.5000000,0.0000000,0.0000000,92.0000000); //object(swank_hi_fi) (1)
	CreateDynamicObject(2282,1920.2000000,-107.0000000,645.5999800,0.0000000,0.0000000,2.0000000); //object(frame_thick_4) (1)
	CreateDynamicObject(346,1920.5000000,-113.0000000,644.5999800,86.0000000,5.0000000,5.0000000); //object(2)
	CreateDynamicObject(2120,1925.7000000,-111.3000000,644.0999800,0.0000000,0.0000000,0.0000000); //object(med_din_chair_4) (5)
	CreateDynamicObject(2281,1920.6000000,-112.0000000,645.7000100,2.0000000,0.0000000,90.0000000); //object(frame_thick_5) (1)
	CreateDynamicObject(2417,1922.2000000,-98.9000000,643.5000000,0.0000000,0.0000000,2.0000000); //object(cj_ff_cooker) (2)

	//Brazil's mapping
    CreateDynamicObject(10972, 565.99280, -645.49713, 11.47098,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(19503, 562.24878, -693.04413, 19.15030,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(19504, 562.24878, -693.04413, 19.15030,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(9339, 545.55328, -701.78113, 15.60370,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(9339, 545.55548, -682.19739, 15.60370,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(9339, 545.55328, -682.19879, 14.21890,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(9339, 544.97601, -713.49323, 14.19890,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1649, 571.34631, -699.19513, 18.05510,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1649, 571.34631, -703.73822, 18.05510,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1649, 568.47491, -705.94354, 18.05510,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1649, 561.18170, -705.94348, 18.05510,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1649, 554.25330, -701.30121, 18.05510,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1649, 554.25330, -692.48462, 18.05510,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(19377, 579.91699, -684.17322, 14.40680,   0.00000, -70.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(19377, 588.98132, -684.17322, 11.09090,   0.00000, -70.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(19378, 578.14948, -679.43707, 9.94140,   -70.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(19378, 588.00452, -679.43707, 6.35290,   -70.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(19378, 578.14954, -688.90204, 9.94140,   -70.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(19378, 588.00452, -688.90222, 6.35290,   -70.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1334, 587.49615, -689.79303, 10.49955,   0.00000, 0.00000, 538.07800, .streamdistance = 180.00);
    CreateDynamicObject(3035, 590.30792, -690.00256, 10.50876,   0.00000, 0.00000, 180.47946, .streamdistance = 180.00);
    CreateDynamicObject(2400, 564.15741, -685.13147, 16.31290,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1709, 557.71771, -681.65234, 16.97960,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1710, 563.46039, -682.61353, 16.97960,   0.00000, 0.00000, -90.00000, .streamdistance = 180.00);
    CreateDynamicObject(2321, 560.36395, -685.48798, 17.00876,   0.00000, 0.00000, 130.80006, .streamdistance = 180.00);
    CreateDynamicObject(2648, 559.63062, -684.91486, 17.75740,   0.00000, 0.00000, 132.00000, .streamdistance = 180.00);
    CreateDynamicObject(2852, 560.20190, -685.55536, 17.50420,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(2300, 566.14008, -701.97461, 16.99990,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(2819, 566.65759, -701.98236, 17.00400,   0.00000, 0.00000, 81.78002, .streamdistance = 180.00);
    CreateDynamicObject(2841, 567.17035, -703.26880, 17.00340,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1828, 559.79706, -693.11072, 17.00370,   0.00000, 0.00000, 180.00000, .streamdistance = 180.00);
    CreateDynamicObject(2165, 554.87579, -704.70825, 16.98410,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(2164, 558.67578, -705.80151, 16.99050,   0.00000, 0.00000, 180.00000, .streamdistance = 180.00);
    CreateDynamicObject(2164, 556.78766, -705.80151, 16.99050,   0.00000, 0.00000, 180.00000, .streamdistance = 180.00);
    CreateDynamicObject(1714, 556.15985, -704.03082, 16.97363,   0.00000, 0.00000, -115.50001, .streamdistance = 180.00);
    CreateDynamicObject(2335, 554.91711, -698.58990, 16.97840,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(2336, 554.91711, -697.50568, 16.97840,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(2135, 554.91711, -695.39508, 16.97840,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(19173, 554.43451, -687.63843, 18.78580,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1825, 558.92383, -697.16650, 16.97306,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1080, 564.50488, -684.92236, 17.62646,   1.86000, -9.24000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1077, 564.39008, -683.16986, 17.60591,   0.48000, -8.82000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(19815, 568.54773, -680.08728, 18.18560,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(19900, 564.49622, -680.56573, 16.33742,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1493, 564.12262, -694.22693, 16.92420,   0.00000, 0.00000, -90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1493, 564.12262, -692.76617, 16.92420,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1501, 554.29028, -683.12042, 16.76390,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1506, 564.14258, -694.25452, 16.91220,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(970, 577.36212, -679.46228, 16.00210,   0.00000, 20.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(970, 581.40430, -679.47260, 14.52110,   0.00000, 20.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(970, 585.46722, -679.47113, 13.04200,   0.00000, 20.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(970, 577.36212, -688.89410, 16.00210,   0.00000, 20.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(970, 581.40430, -688.87250, 14.52110,   0.00000, 20.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(970, 585.46722, -688.84808, 13.04200,   0.00000, 20.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(9339, 545.55328, -708.31927, 14.21890,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1481, 563.41144, -675.95410, 16.87644,   0.00000, 0.00000, 189.59988, .streamdistance = 180.00);
    CreateDynamicObject(1481, 562.20660, -676.00061, 16.87644,   0.00000, 0.00000, 177.42024, .streamdistance = 180.00);
    CreateDynamicObject(19586, 562.59839, -675.91132, 17.04342,   8.34000, 2.64000, -102.66009, .streamdistance = 180.00);
    CreateDynamicObject(19573, 562.80084, -675.65656, 16.27347,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(1281, 558.73340, -675.33948, 17.05680,   0.00000, 0.00000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(1281, 554.98639, -675.33948, 16.87970,   0.00000, 1.44000, 90.00000, .streamdistance = 180.00);
    CreateDynamicObject(8991, 574.15814, -668.65405, 16.78677,   0.00000, 0.00000, 269.45959, .streamdistance = 180.00);
    CreateDynamicObject(8991, 563.57965, -660.67267, 16.69296,   0.00000, 0.00000, 177.65976, .streamdistance = 180.00);
    CreateDynamicObject(1364, 572.42566, -661.42200, 16.94394,   0.00000, 0.00000, -17.51999, .streamdistance = 180.00);
    CreateDynamicObject(1364, 554.38043, -661.72845, 16.72800,   -3.66000, -3.84000, 25.32004, .streamdistance = 180.00);
    CreateDynamicObject(736, 546.01978, -676.52417, 26.83876,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(736, 546.40472, -672.05841, 26.83876,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(736, 548.05042, -667.37799, 26.83876,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(736, 550.64398, -663.58038, 26.83876,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(8623, 562.86481, -668.32501, 16.99305,   0.00000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(9833, 562.50073, -668.34985, 18.35604,   0.00000, 0.00000, -3.78000, .streamdistance = 180.00);
    CreateDynamicObject(638, 546.50031, -674.20587, 16.72310,   -2.34000, 0.00000, 0.00000, .streamdistance = 180.00);
    CreateDynamicObject(638, 547.23505, -669.41992, 16.52950,   -2.16000, 0.00000, -21.96000, .streamdistance = 180.00);
    CreateDynamicObject(638, 549.47034, -665.26135, 16.37530,   -0.36000, 0.00000, -32.64000, .streamdistance = 180.00);

    

	new Float: fPlayerPos[3];
	
	foreach(new i : Player)
	{
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0)
		{
			GetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			Streamer_UpdateEx(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			//SetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2] + 2.5);
			//TogglePlayerControllable(i, true);
			CallRemoteFunction("Player_StreamPrep", "ifffi", i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2], 2500);
		}
	}
	// Headroom for static objects - streamed limits are completely independent (cause of old crashing)
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT, 965);
	return 1;
}

public OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz) // Calling Fix by Winterfield - Do not remove
{
	CallRemoteFunction("OnPlayerEditGate", "iddffffff", playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz);
}
/*
public OnPlayerConnect(playerid)
{
	return 1;
}
*/
