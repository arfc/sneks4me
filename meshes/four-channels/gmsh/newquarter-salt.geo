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

h = 1; //z coordinate at which plenum begins, inches
n = 10; // no. of layers in plenum
hinc = 7; //plenum height, inches
hc = -62; //z coordinate at which channel begins

Point(0) = {0,0,h};
Point(1) = {-l1,-l1,h};
Point(2) = {-l1+l2,-l1,h};
Point(3) = {-l1+l2+r,-l1,h};
Point(4) = {l1-l2-r,-l1,h};
Point(5) = {l1-l2,-l1,h};
Point(6) = {l1,-l1,h};
Point(7) = {-l1+l2+r,-l1+r,h};
Point(8) = {l1-l2-r,-l1+r,h};

Point(9) = {-l1+x4,-l1+x4,h};
Point(10) = {-l1+x5,-l1+x5,h};
Point(11) = {-l1+x6,-l1+x6,h};

Point(12) = {l1-x4,-l1+x4,h};
Point(13) = {l1-x5,-l1+x5,h};
Point(14) = {l1-x6,-l1+x6,h};

Point(15) = {-x1,y1,h};
Point(16) = {-x2,y2,h};
Point(17) = {-x3,y3,h};

Point(18) = {x1,y1,h};
Point(19) = {x2,y2,h};
Point(20) = {x3,y3,h};

Point(21) = {-a,-a,h};
Point(22) = {0,-ay,h};
Point(23) = {a,-a,h};
Point(24) = {-(2*a),-(2*a),h};
Point(25) = {2*a,-2*a,h};
Point(26) = {-a,-a-ay,h};
Point(27) = {a,-a-ay,h};

Point(28) = {-l1+l2-0.1,-l1,h};
Point(29) = {-l1+l2+r,-l1+r+0.1,h};
Point(30) = {l1-l2+0.1,-l1,h};
Point(31) = {l1-l2-r,-l1+r+0.1,h};

Point(32) = {-x7,y7,h};
Point(33) = {-x8,y8,h};
Point(34) = {-x9,y9,h};

Point(35) = {x7,y7,h};
Point(36) = {x8,y8,h};
Point(37) = {x9,y9,h};

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


Point(38) = {-0.45, -0.45,h};
Point(39) = {0.45, -0.45,h};
Point(40) = {-0, -0.5,h};
Point(41) = {0, -0.6,h};
Point(42) = {-0.2, -0.6,h};
Point(43) = {-0.4, -0.6,h};
Point(44) = {0.2, -0.6,h};
Point(45) = {0.3, -0.5,h};
Point(48) = {-0.2, -0.7,h};
Point(49) = {0, -0.7,h};
Point(50) = {0.2, -0.7,h};
Point(51) = {-0.2, -0.8,h};
Point(52) = {0, -0.8,h};
Point(53) = {0.2, -0.8,h};
Point(54) = {0.4, -0.6,h};
Point(55) = {-0.3, -0.5,h};

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

Curve Loop(1) = {18, 3, -14, -1};
Plane Surface(1) = {1};

Curve Loop(2) = {19, 5, -15, -3};
Plane Surface(2) = {2};

Curve Loop(3) = {20, 7, -16, -5};
Plane Surface(3) = {3};

Curve Loop(4) = {75, 7, 17, -72};
Plane Surface(4) = {4};

Curve Loop(5) = {71, 72, 59, -57};
Plane Surface(5) = {5};

Curve Loop(6) = {58, 55, -56, -57};
Plane Surface(6) = {6};

Curve Loop(7) = {69, 70, -60, -55};
Plane Surface(7) = {7};

Curve Loop(8) = {76, 77, -61, -70};
Plane Surface(8) = {8};

Curve Loop(9) = {78, -28, 37, -77};
Plane Surface(9) = {9};

Curve Loop(10) = {28, -40, -26, 36};
Plane Surface(10) = {10};

Curve Loop(11) = {39, -26, -35, 24};
Plane Surface(11) = {11};

Curve Loop(12) = {34, 24, -38, -22};
Plane Surface(12) = {12};

Curve Loop(13) = {30, 23, -34, -21};
Plane Surface(13) = {13};

Curve Loop(14) = {25, -35, -23, 31};
Plane Surface(14) = {14};

Curve Loop(15) = {27, -36, -25, 32};
Plane Surface(15) = {15};

Curve Loop(16) = {37, -29, -33, 27};
Plane Surface(16) = {16};

Curve Loop(17) = {61, -29, -65, -68};
Plane Surface(17) = {17};

Curve Loop(18) = {60, 68, -64, -67};
Plane Surface(18) = {18};

Curve Loop(19) = {56, 67, -63, -66};
Plane Surface(19) = {19};

Curve Loop(20) = {59, 66, -62, -9};
Plane Surface(20) = {20};

Curve Loop(21) = {17, 9, -13, -8};
Plane Surface(21) = {21};

Curve Loop(22) = {16, 8, -12, -6};
Plane Surface(22) = {22};

Curve Loop(23) = {15, 6, -11, -4};
Plane Surface(23) = {23};

Curve Loop(24) = {14, 4, -10, -2};
Plane Surface(24) = {24};

Curve Loop(25) = {51, -80, 82, 75};
Plane Surface(25) = {25};

Curve Loop(26) = {79, 82, -71, -73};
Plane Surface(26) = {26};

Curve Loop(27) = {52, 54, -58, -73};
Plane Surface(27) = {27};

Curve Loop(28) = {53, 74, -69, -54};
Plane Surface(28) = {28};

Curve Loop(29) = {83, 87, -76, -74};
Plane Surface(29) = {29};

Curve Loop(30) = {84, 86, -78, -87};
Plane Surface(30) = {30};

Curve Loop(31) = {49, 83, 84, 85};
Plane Surface(31) = {31};

Curve Loop(32) = {50, 45, 52, 53};
Plane Surface(32) = {32};

Curve Loop(33) = {46, -81, -80, -79};
Plane Surface(33) = {33};

Curve Loop(34) = {43, -47, -46, -45};
Plane Surface(34) = {34};

Curve Loop(35) = {42, -50, -49, -48};
Plane Surface(35) = {35};

Curve Loop(36) = {43, 44, 41, 42};
Plane Surface(36) = {36};

Point(56) = {-l1+l2,-l1,hc};
Point(57) = {-l1+l2+r,-l1,hc};
Point(58) = {l1-l2-r,-l1,hc};
Point(59) = {l1-l2,-l1,hc};
Point(60) = {-l1+l2+r,-l1+r,hc};
Point(61) = {l1-l2-r,-l1+r,hc};
Point(62) = {-x1,y1,hc};
Point(63) = {-x2,y2,hc};
Point(64) = {-x3,y3,hc};
Point(65) = {x1,y1,hc};
Point(66) = {x2,y2,hc};
Point(67) = {x3,y3,hc};
Point(68) = {-0.2, -0.8,hc};
Point(69) = {0, -0.8,hc};
Point(70) = {0.2, -0.8,hc};
Point(71) = {-l1+l2+0.05,-l1,hc};
Point(72) = {-l1+l2+r,-l1+r-0.05,hc};
Point(73) = {l1-l2-0.05,-l1,hc};
Point(74) = {l1-l2-r,-l1+r-0.05,hc};
Point(75) = {-0.2, -0.8-0.05,hc};
Point(76) = {0, -0.8-0.05,hc};
Point(77) = {0.2, -0.8-0.05,hc};
Point(78) = {-0.2, -l1,hc};
Point(79) = {0, -l1,hc};
Point(80) = {0.2, -l1,hc};

chmid1= (-l1+r-0.05-l1)/2;

Point(81) = {-l1+l2+r,chmid1,hc};
Point(82) = {l1-l2-r,chmid1,hc};
Point(83) = {-0.2,chmid1,hc};
Point(84) = {0,chmid1,hc};
Point(85) = {0.2,chmid1,hc};

chmid2=(-l1+l2+r-l1+l2+0.05)/2;

Point(86) = {chmid2,-l1,hc};
Point(87) = {-chmid2,-l1,hc};
Point(88) = {chmid2,chmid1,hc};
Point(89) = {-chmid2,chmid1,hc};

chrad1 = (l1-l2-r) - (l1-l2-0.05);
chx1=0.4;
chy1=-1;
chx2=Sqrt((chrad1^2)-(chmid1-chy1)^2)+chx1;
chy3=Sqrt((chrad1^2)-(-chmid2-chx1)^2)+chy1;
chx4=0.51;
chy4=Sqrt((chrad1^2)-(chx4-chx1)^2)+chy1;

Point(90) = {chx2,chmid1,hc};
Point(91) = {-l1+l2+0.05,chmid1,hc};
Point(92) = {-chmid2,chy3,hc};
//Point(93) = {chmid2,chy3+0.01,hc};
Point(93) = {chmid2,-0.85,hc};
Point(94) = {chx4,chy4,hc};
Point(95) = {-chx4-0.015,chy4+0.015,hc};


Line(88) = {56, 71};
Line(89) = {71, 86};
Line(90) = {86, 57};
Line(91) = {57, 81};
Line(92) = {81, 72};
Line(93) = {72, 60};
Line(94) = {81, 88};
Line(95) = {88, 86};
Line(96) = {88, 91};
Line(97) = {88, 93};
Line(98) = {57, 78};
Line(99) = {78, 83};
Line(100) = {83, 75};
Line(101) = {83, 81};
Line(102) = {72, 75};
Line(103) = {75, 68};
Line(104) = {68, 60};
Line(105) = {75, 76};
Line(106) = {76, 69};
Line(107) = {69, 68};
Line(108) = {76, 84};
Line(109) = {84, 83};
Line(110) = {84, 79};
Line(111) = {79, 78};
Line(112) = {79, 80};
Line(113) = {80, 85};
Line(114) = {85, 84};
Line(115) = {85, 77};
Line(116) = {77, 76};
Line(117) = {77, 70};
Line(118) = {70, 69};
Line(119) = {80, 58};
Line(120) = {58, 82};
Line(121) = {82, 85};
Line(122) = {82, 74};
Line(123) = {74, 77};
Line(124) = {74, 61};
Line(125) = {61, 70};
Line(126) = {58, 87};
Line(127) = {87, 73};
Line(128) = {73, 59};
Line(129) = {87, 89};
Line(130) = {89, 82};
Line(131) = {89, 92};
Line(132) = {89, 90};
Line(133) = {71,91};
Line(134) = {91, 95};
Line(135) = {95, 93};
Line(136) = {93,72};
Circle(137) = {56, 57, 62};
Circle(138) = {62, 57, 63};
Circle(139) = {63, 57, 64};
Circle(140) = {64, 57, 60};
Circle(141) = {73, 58, 90};
Circle(142) = {90, 58, 94};
Circle(143) = {94, 58, 92};
Circle(144) = {92, 58, 74};
Circle(145) = {59, 58, 65};
Circle(146) = {65, 58, 66};
Circle(147) = {66, 58, 67};
Circle(148) = {67, 58, 61};
Line(149) = {91, 62};
Line(150) = {95, 63};
Line(151) = {93, 64};
Line(152) = {90, 65};
Line(153) = {94, 66};
Line(154) = {92, 67};

Curve Loop(37) = {88, 133, 149, -137};
Plane Surface(37) = {37};
Curve Loop(38) = {149, 138, -150, -134};
Plane Surface(38) = {38};
Curve Loop(39) = {150, 139, -151, -135};
Plane Surface(39) = {39};
Curve Loop(40) = {151, 140, -93, -136};
Plane Surface(40) = {40};
Curve Loop(41) = {93, -104, -103, -102};
Plane Surface(41) = {41};
Curve Loop(42) = {103, -107, -106, -105};
Plane Surface(42) = {42};
Curve Loop(43) = {106, -118, -117, 116};
Plane Surface(43) = {43};
Curve Loop(44) = {117, -125, -124, 123};
Plane Surface(44) = {44};
Curve Loop(45) = {124, -148, -154, 144};
Plane Surface(45) = {45};
Curve Loop(46) = {154, -147, -153, 143};
Plane Surface(46) = {46};
Curve Loop(47) = {153, -146, -152, 142};
Plane Surface(47) = {47};
Curve Loop(48) = {152, -145, -128, 141};
Plane Surface(48) = {48};
Curve Loop(49) = {133, -96, 95, -89};
Plane Surface(49) = {49};
Curve Loop(50) = {135, -97, 96, 134};
Plane Surface(50) = {50};
Curve Loop(51) = {136, -92, 94, 97};
Plane Surface(51) = {51};
Curve Loop(52) = {95, 90, 91, 94};
Plane Surface(52) = {52};
Curve Loop(53) = {92, 102, -100, 101};
Plane Surface(53) = {53};
Curve Loop(54) = {91, -101, -99, -98};
Plane Surface(54) = {54};
Curve Loop(55) = {105, 108, 109, 100};
Plane Surface(55) = {55};
Curve Loop(56) = {109, -99, -111, -110};
Plane Surface(56) = {56};
Curve Loop(57) = {116, 108, -114, 115};
Plane Surface(57) = {57};
Curve Loop(58) = {114, 110, 112, 113};
Plane Surface(58) = {58};
Curve Loop(59) = {123, -115, -121, 122};
Plane Surface(59) = {59};
Curve Loop(60) = {121, -113, 119, 120};
Plane Surface(60) = {60};
Curve Loop(61) = {144, -122, -130, 131};
Plane Surface(61) = {61};
Curve Loop(62) = {130, -120, 126, 129};
Plane Surface(62) = {62};
Curve Loop(63) = {143, -131, 132, 142};
Plane Surface(63) = {63};
Curve Loop(64) = {132, -141, -127, 129};
Plane Surface(64) = {64};