// variables for coordinates
l1 = 1; //half the length of the graphite block
l2 = 0.4; //straight edge length outside channel, see figure
r = 0.2; //channel curved part radius
l3 = 0.8;
x1 = l1-l2-(0.05/4);
x2 = l1-l2-(0.2/4);
x3 = l1-l2-(0.44/4);
y1 = Sqrt((0.2^2)-(x1-l1+l2+r)^2)-1;
y2 = Sqrt((0.2^2)-(x2-l1+l2+r)^2)-1;
y3 = Sqrt((0.2^2)-(x3-l1+l2+r)^2)-1;
x4 = 0.14;
x5 = 0.28;
x6 = 0.42;
a= 0.2/Sqrt(2);
ay = 0.2*Sqrt(2);
x7 = l1-l2+0.08;
x8 = x7-0.06;
x9 = x7-0.14;
y7 = Sqrt((0.3^2)-(x7-l1+l2+r)^2)-l1;
y8 = Sqrt((0.3^2)-(x8-l1+l2+r)^2)-l1;
y9 = Sqrt((0.3^2)-(x9-l1+l2+r)^2)-l1;

h = 62; //channel height-1, inches
n = 126; // no. of vertical layers
hinc = 1; //length of graphite to be deformed to a point

Point(0) = {0,0,-h};
Point(1) = {-l1,-l1,-h};
Point(2) = {-l1+l2,-l1,-h};
Point(3) = {-l1+l2+r,-l1,-h};
Point(4) = {l1-l2-r,-l1,-h};
Point(5) = {l1-l2,-l1,-h};
Point(6) = {l1,-l1,-h};
Point(7) = {-l1+l2+r,-l1+r,-h};
Point(8) = {l1-l2-r,-l1+r,-h};

Point(9) = {-l1+x4,-l1+x4,-h};
Point(10) = {-l1+x5,-l1+x5,-h};
Point(11) = {-l1+x6,-l1+x6,-h};

Point(12) = {l1-x4,-l1+x4,-h};
Point(13) = {l1-x5,-l1+x5,-h};
Point(14) = {l1-x6,-l1+x6,-h};

Point(15) = {-x1,y1,-h};
Point(16) = {-x2,y2,-h};
Point(17) = {-x3,y3,-h};

Point(18) = {x1,y1,-h};
Point(19) = {x2,y2,-h};
Point(20) = {x3,y3,-h};

Point(21) = {-a,-a,-h};
Point(22) = {0,-ay,-h};
Point(23) = {a,-a,-h};
Point(24) = {-(2*a),-(2*a),-h};
Point(25) = {2*a,-2*a,-h};
Point(26) = {-a,-a-ay,-h};
Point(27) = {a,-a-ay,-h};

Point(28) = {-l1+l2-0.1,-l1,-h};
Point(29) = {-l1+l2+r,-l1+r+0.1,-h};
Point(30) = {l1-l2+0.1,-l1,-h};
Point(31) = {l1-l2-r,-l1+r+0.1,-h};

Point(32) = {-x7,y7,-h};
Point(33) = {-x8,y8,-h};
Point(34) = {-x9,y9,-h};

Point(35) = {x7,y7,-h};
Point(36) = {x8,y8,-h};
Point(37) = {x9,y9,-h};

Line(1) = {1,28};
Line(2) = {28,2};
Line(3) = {9,32};
Line(4) = {32,15};
Line(5) = {10,33};
Line(6) = {33,16};
Line(7) = {11,34};
Line(8) = {34,17};
Line(9) = {29,7};
Circle(10) = {2,3,15};
Circle(11) = {15,3,16};
Circle(12) = {16,3,17};
Circle(13) = {17,3,7};
Circle(14) = {28,3,32};
Circle(15) = {32,3,33};
Circle(16) = {33,3,34};
Circle(17) = {34,3,29};
Line(18) = {1,9};
Line(19) = {9,10};
Line(20) = {10,11};

Line(21) = {5,30};
Line(22) = {30,6};
Line(23) = {18,35};
Line(24) = {35,12};
Line(25) = {19,36};
Line(26) = {36,13};
Line(27) = {20,37};
Line(28) = {37,14};
Line(29) = {8,31};
Circle(30) = {5,4,18};
Circle(31) = {18,4,19};
Circle(32) = {19,4,20};
Circle(33) = {20,4,8};
Circle(34) = {30,4,35};
Circle(35) = {35,4,36};
Circle(36) = {36,4,37};
Circle(37) = {37,4,31};
Line(38) = {6,12};
Line(39) = {12,13};
Line(40) = {13,14};

Line(41) = {0,23};
Line(42) = {23,22};
Line(43) = {22,21};
Line(44) = {21,0};
Line(45) = {22,26};
Line(46) = {26,24};
Line(47) = {24,21};
Line(48) = {23,25};
Line(49) = {25,27};
Line(50) = {27,22};


Point(38) = {-0.45, -0.45,-h};
Point(39) = {0.45, -0.45,-h};
Point(40) = {-0, -0.5,-h};
Point(41) = {0, -0.6,-h};
Point(42) = {-0.2, -0.6,-h};
Point(43) = {-0.4, -0.6,-h};
Point(44) = {0.2, -0.6,-h};
Point(45) = {0.3, -0.5,-h};
Point(46) = {-0.7, -1,-h};
Point(47) = {0.7, -1,-h};
Point(48) = {-0.2, -0.7,-h};
Point(49) = {0, -0.7,-h};
Point(50) = {0.2, -0.7,-h};
Point(51) = {-0.2, -0.8,-h};
Point(52) = {0, -0.8,-h};
Point(53) = {0.2, -0.8,-h};
Point(54) = {0.4, -0.6,-h};
Point(55) = {-0.3, -0.5,-h};

Line(51) = {11, 38};
Line(52) = {26, 40};
Line(53) = {40, 27};
Line(54) = {40, 41};
Line(55) = {41, 49};
Line(56) = {48, 49};
Line(57) = {42, 48};
Line(58) = {42, 41};
Line(59) = {29, 48};
Line(60) = {49, 50};
Line(61) = {50, 31};
Line(62) = {7, 51};
Line(63) = {51, 52};
Line(64) = {52, 53};
Line(65) = {53, 8};
Line(66) = {48, 51};
Line(67) = {49, 52};
Line(68) = {50, 53};
Line(69) = {41, 44};
Line(70) = {44, 50};
Line(71) = {42, 43};
Line(72) = {43, 29};
Line(73) = {26, 42};
Line(74) = {27, 44};
Line(75) = {43, 11};
Line(76) = {44, 54};
Line(77) = {54, 31};
Line(78) = {54, 14};
Line(79) = {26, 55};
Line(80) = {55, 38};
Line(81) = {38, 24};
Line(82) = {55, 43};
Line(83) = {27, 45};
Line(84) = {45, 39};
Line(85) = {39, 25};
Line(86) = {39, 14};
Line(87) = {45, 54};
/*

Physical Surface("inlet",10) = {1,2,3} ;
Physical Surface("outlet",20) = {32,54,76} ;
Physical Surface("sym1",30) = {19} ; 
Physical Surface("sym2",40) = {75} ; 
Physical Surface("wall",50) = {23,49,71} ;
Physical Surface("ext1",60) = {31,41,63} ;
Physical Volume("solid",1) = {1,2,3} ;
*/


Curve Loop(1) = {18, 3, -14, -1};
Plane Surface(1) = {1};
//+
Curve Loop(2) = {19, 5, -15, -3};
Plane Surface(2) = {2};
//+
Curve Loop(3) = {20, 7, -16, -5};
Plane Surface(3) = {3};
//+
Curve Loop(4) = {75, 7, 17, -72};
Plane Surface(4) = {4};
//+
Curve Loop(5) = {71, 72, 59, -57};
Plane Surface(5) = {5};
//+
Curve Loop(6) = {58, 55, -56, -57};
Plane Surface(6) = {6};
//+
Curve Loop(7) = {69, 70, -60, -55};
Plane Surface(7) = {7};
//+
Curve Loop(8) = {76, 77, -61, -70};
Plane Surface(8) = {8};
//+
Curve Loop(9) = {78, -28, 37, -77};
Plane Surface(9) = {9};
//+
Curve Loop(10) = {28, -40, -26, 36};
Plane Surface(10) = {10};
//+
Curve Loop(11) = {39, -26, -35, 24};
Plane Surface(11) = {11};
//+
Curve Loop(12) = {34, 24, -38, -22};
Plane Surface(12) = {12};
//+
Curve Loop(13) = {30, 23, -34, -21};
Plane Surface(13) = {13};
//+
Curve Loop(14) = {25, -35, -23, 31};
Plane Surface(14) = {14};
//+
Curve Loop(15) = {27, -36, -25, 32};
Plane Surface(15) = {15};
//+
Curve Loop(16) = {37, -29, -33, 27};
Plane Surface(16) = {16};
//+
Curve Loop(17) = {61, -29, -65, -68};
Plane Surface(17) = {17};
//+
Curve Loop(18) = {60, 68, -64, -67};
Plane Surface(18) = {18};
//+
Curve Loop(19) = {56, 67, -63, -66};
Plane Surface(19) = {19};
//+
Curve Loop(20) = {59, 66, -62, -9};
Plane Surface(20) = {20};
//+
Curve Loop(21) = {17, 9, -13, -8};
Plane Surface(21) = {21};
//+
Curve Loop(22) = {16, 8, -12, -6};
Plane Surface(22) = {22};
//+
Curve Loop(23) = {15, 6, -11, -4};
Plane Surface(23) = {23};
//+
Curve Loop(24) = {14, 4, -10, -2};
Plane Surface(24) = {24};
//+
Curve Loop(25) = {51, -80, 82, 75};
Plane Surface(25) = {25};
//+
Curve Loop(26) = {79, 82, -71, -73};
Plane Surface(26) = {26};
//+
Curve Loop(27) = {52, 54, -58, -73};
Plane Surface(27) = {27};
//+
Curve Loop(28) = {53, 74, -69, -54};
Plane Surface(28) = {28};
//+
Curve Loop(29) = {83, 87, -76, -74};
Plane Surface(29) = {29};
//+
Curve Loop(30) = {84, 86, -78, -87};
Plane Surface(30) = {30};
//+
Curve Loop(31) = {49, 83, 84, 85};
Plane Surface(31) = {31};
//+
Curve Loop(32) = {50, 45, 52, 53};
Plane Surface(32) = {32};
//+
Curve Loop(33) = {46, -81, -80, -79};
Plane Surface(33) = {33};
//+
Curve Loop(34) = {43, -47, -46, -45};
Plane Surface(34) = {34};
//+
Curve Loop(35) = {42, -50, -49, -48};
Plane Surface(35) = {35};
//+
Curve Loop(36) = {43, 44, 41, 42};
Plane Surface(36) = {36};

Transfinite Surface {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36};
Recombine Surface {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36};
//+

Extrude {0,0,h+hinc}{
        Surface{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36};
        Layers{n};
        Recombine;
}
//+
Rotate {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Duplicata { Volume{36}; Volume{34}; Volume{35}; Volume{32}; Volume{33}; Volume{25}; Volume{26}; Volume{27}; Volume{4}; Volume{21}; Volume{3}; Volume{22}; Volume{23}; Volume{24}; Volume{1}; Volume{2}; Volume{20}; Volume{5}; Volume{6}; Volume{19}; Volume{18}; Volume{7}; Volume{28}; Volume{29}; Volume{31}; Volume{8}; Volume{17}; Volume{30}; Volume{9}; Volume{16}; Volume{10}; Volume{15}; Volume{11}; Volume{14}; Volume{13}; Volume{12}; }
}
//+
Rotate {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Duplicata { Volume{1965}; Volume{1934}; Volume{1872}; Volume{1903}; Volume{1841}; Volume{1810}; Volume{1779}; Volume{1748}; Volume{1686}; Volume{1655}; Volume{1717}; Volume{1593}; Volume{1624}; Volume{942}; Volume{880}; Volume{911}; Volume{1004}; Volume{1035}; Volume{1128}; Volume{1190}; Volume{1345}; Volume{1314}; Volume{1283}; Volume{1252}; Volume{1221}; Volume{1159}; Volume{1376}; Volume{1469}; Volume{1500}; Volume{1531}; Volume{1438}; Volume{1407}; Volume{1066}; Volume{1097}; Volume{1562}; Volume{973}; }
}
//+
Rotate {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Duplicata { Volume{2426}; Volume{2457}; Volume{2488}; Volume{2519}; Volume{2581}; Volume{2612}; Volume{2643}; Volume{2674}; Volume{2705}; Volume{2736}; Volume{2767}; Volume{2550}; Volume{2798}; Volume{2953}; Volume{2984}; Volume{2829}; Volume{2922}; Volume{3015}; Volume{3077}; Volume{3046}; Volume{2891}; Volume{2860}; Volume{2240}; Volume{2271}; Volume{2333}; Volume{2395}; Volume{2364}; Volume{2302}; Volume{2209}; Volume{2178}; Volume{2147}; Volume{2116}; Volume{2085}; Volume{2054}; Volume{1992}; Volume{2023}; }
}
// SIDE SETS

//+
Physical surface("inlet",101) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36};

Physical Surface("top1",102) = {615, 109, 131, 593, 571, 153, 549, 175, 527, 197, 505, 219, 681, 659, 637, 813, 835, 879, 791, 857, 769, 703, 241, 483, 461, 263, 725, 747, 285, 439, 307, 329, 351, 373, 395, 417};
//+
Physical Surface("top2",103) = {1320, 1351, 1196, 1134, 1041, 1010, 917, 886, 948, 1630, 1723, 1754, 1816, 1878, 1971, 1940, 1909, 1847, 1785, 1661, 1692, 1506, 1444, 1475, 1382, 1413, 1165, 1227, 1258, 1289, 1072, 1103, 1568, 1599, 979};
//+
Physical Surface("top3",104) = {2432, 2401, 2370, 2308, 2215, 2153, 2060, 1998, 2463, 2494, 2525, 2587, 2618, 2649, 2680, 2711, 2742, 2773, 2556, 2959, 2804, 2990, 3083, 3021, 2928, 2835, 2866, 2897, 3052, 2339, 2277, 2246, 2184, 2122, 2091, 2029};
//+
Physical Surface("top4",105) = {3276, 3245, 3214, 3183, 3152, 3121, 3090, 3865, 3896, 3927, 3958, 4020, 4113, 4144, 4175, 4082, 4051, 3989, 3803, 3772, 3834, 3679, 3710, 3741, 3555, 3586, 3617, 3648, 3493, 3462, 3524, 3431, 3400, 3369, 3338, 3307};
//+
Physical Surface("outwall1",106) = {4164, 4195, 3296, 3327};
//+
Physical Surface("outwall2",107) = {2018, 2049, 2669, 2700};
//+
Physical Surface("outwall3",108) = {1991, 1960, 1340, 1309};
//+
Physical Surface("outwall4",109) = {350, 372, 108, 614, 1960};
//+
Physical Surface("inwall1",110) = {3477, 3570, 3756, 3787, 4004, 4071, 4102, 4180, 3415, 3384, 3322, 3348, 3353};
//+
Physical Surface("inwall2",111) = {2695, 2726, 2757, 2788, 2819, 2850, 2881, 2261, 2199, 2142, 2111, 2034};
//+
Physical Surface("inwall3",112) = {2055, 2783, 1945, 1929, 1867, 1800, 1707, 1521, 1490, 1397, 1180, 1242, 1273, 1304};
//+
Physical Surface("inwall4",113) = {610, 588, 566, 544, 522, 19, 478, 456, 434, 416, 394, 360};
//+
Physical Volume("solid", 10) += {3270, 3239, 3208, 3363, 3332, 3301, 3425, 3487, 3394, 3456, 3580, 3549, 3735, 3704, 3797, 3766, 3983, 4045, 3952, 4014, 4107, 4076, 4138, 4169, 3921, 3890, 3828, 3673, 3859, 3642, 3611, 3518, 3146, 3115, 3084, 3177, 1992, 2054, 2147, 2302, 2364, 2395, 2426, 2457, 2488, 2519, 2581, 2612, 2643, 2674, 2705, 2736, 2550, 2767, 2798, 2953, 2984, 3077, 2333, 3046, 3015, 2922, 2829, 2891, 2860, 2271, 2240, 2209, 2178, 2116, 2085, 2023, 1965, 1872, 1934, 1903, 1810, 1841, 1779, 1748, 1717, 1624, 942, 880, 911, 1004, 1035, 1190, 1345, 1314, 1283, 1252, 1221, 1128, 1159, 1407, 1066, 1376, 1469, 1438, 1097, 973, 1562, 1531, 1500, 1686, 1655, 1593, 36, 35, 31, 30, 10, 11, 12, 13, 14, 15, 16, 9, 29, 8, 17, 18, 7, 28, 32, 34, 27, 6, 19, 20, 5, 26, 21, 33, 25, 4, 22, 3, 2, 1, 23, 24};
