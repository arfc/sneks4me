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
hp = 7; //plenum height, inches
hc = -62; //z coordinate at which channel begins
lc = 63; //channel length

Geometry.CopyMeshingMethod=1;

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

Point(90) = {l1-l2-0.06,chmid1,hc};
Point(91) = {-l1+l2+0.06,chmid1,hc};
Point(92) = {-chmid2,-0.86,hc};
//Point(93) = {chmid2,chy3+0.01,hc};
Point(93) = {chmid2,-0.86,hc};
Point(94) = {chx4+0.017,chy4+0.017,hc};
Point(95) = {-chx4-0.017,chy4+0.017,hc};


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
Line(141) = {73,90};
Line(142) = {90,94};
Line(143) = {94,92};
Line(144) = {92,74};
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
//+
Transfinite Surface {37, 38, 49, 50, 52, 39, 51, 40, 54, 53, 41, 56, 55, 42, 58, 57, 43, 60, 59, 62, 44, 61, 64, 63, 45, 48, 46, 47};
//+
Recombine Surface {37, 38, 49, 50, 52, 39, 51, 40, 54, 53, 41, 56, 55, 42, 58, 57, 43, 60, 59, 62, 44, 61, 64, 63, 45, 48, 46, 47};
Transfinite Surface {1, 24, 2, 23, 22, 3, 21, 4, 20, 25, 5, 19, 26, 6, 33, 27, 18, 7, 28, 34, 32, 17, 8, 29, 16, 13, 15, 14, 36, 9, 35, 31, 30, 10, 11, 12};
Recombine Surface {1, 24, 2, 23, 22, 3, 21, 4, 20, 25, 5, 19, 26, 6, 33, 27, 18, 7, 28, 34, 32, 17, 8, 29, 16, 13, 15, 14, 36, 9, 35, 31, 30, 10, 11, 12};
//+
Transfinite Curve {88, 149, 150, 151, 93, 103, 106, 117, 124, 154, 142, 153, 152, 128} = 1 Using Progression 1;
//+
Transfinite Curve {137, 133, 95, 91, 99, 110, 113, 120, 129, 141, 145} = 1 Using Progression 1;
//+
Transfinite Curve {138, 134, 97, 92, 100, 108, 115, 122, 131, 142, 146} = 1 Using Progression 1;
//+
Transfinite Curve {89, 96, 135, 139} = 1 Using Progression 1;
//+
Transfinite Curve {90, 94, 136, 140} = 1 Using Progression 1;
//+
Transfinite Curve {98, 101, 102, 104} = 1 Using Progression 1;
//+
Transfinite Curve {111, 109, 105, 107} = 1 Using Progression 1;
//+
Transfinite Curve {112, 114, 116, 118} = 1 Using Progression 1;
//+
Transfinite Curve {119, 121, 123, 125} = 1 Using Progression 1;
//+
Transfinite Curve {126, 130, 144, 148} = 1 Using Progression 1;
//+
Transfinite Curve {127, 132, 143, 147} = 1 Using Progression 1;
//+
Transfinite Curve {2, 4, 6, 8, 9, 66, 67, 68, 29, 27, 25, 23, 21} = 1 Using Progression 1;
//+
Transfinite Curve {1, 3, 5, 7, 72, 57, 55, 70, 77, 28, 26, 24, 22} = 1 Using Progression 1;
//+
Transfinite Curve {10, 14, 18} = 1 Using Progression 1;
//+
Transfinite Curve {11, 15, 19} = 1 Using Progression 1;
//+
Transfinite Curve {12, 16, 20} = 1 Using Progression 1;
//+
Transfinite Curve {13, 17, 75, 80, 46, 43, 41} = 1 Using Progression 1;
//+
Transfinite Curve {62, 59, 71, 79, 81} = 1 Using Progression 1;
//+
Transfinite Curve {63, 56, 58, 52, 50, 48} = 1 Using Progression 1;
//+
Transfinite Curve {64, 60, 69, 53, 45, 47} = 1 Using Progression 1;
//+
Transfinite Curve {65, 61, 76, 83, 85} = 1 Using Progression 1;
//+
Transfinite Curve {33, 37, 78, 84, 49, 42, 44} = 1 Using Progression 1;
//+
Transfinite Curve {32, 36, 40} = 1 Using Progression 1;
//+
Transfinite Curve {31, 35, 39} = 1 Using Progression 1;
//+
Transfinite Curve {30, 34, 38} = 1 Using Progression 1;
//+
Rotate {{0, 0, 1}, {0, 0, 1}, Pi/2} {
  Duplicata { Point{1}; Point{28}; Point{9}; Point{2}; Point{32}; Point{15}; Point{3}; Point{16}; Point{10}; Point{33}; Point{17}; Point{34}; Point{7}; Point{11}; Point{29}; Point{51}; Point{43}; Point{48}; Point{38}; Point{52}; Point{42}; Point{55}; Point{49}; Point{4}; Point{53}; Point{41}; Point{26}; Point{50}; Point{24}; Point{40}; Point{5}; Point{8}; Point{44}; Point{18}; Point{20}; Point{30}; Point{19}; Point{31}; Point{35}; Point{27}; Point{22}; Point{37}; Point{36}; Point{21}; Point{54}; Point{45}; Point{6}; Point{12}; Point{13}; Point{14}; Point{39}; Point{25}; Point{23}; Point{0}; Curve{1}; Curve{18}; Curve{2}; Curve{14}; Curve{3}; Curve{4}; Curve{10}; Curve{11}; Curve{19}; Curve{5}; Curve{15}; Curve{6}; Curve{12}; Curve{8}; Curve{16}; Curve{13}; Curve{7}; Curve{20}; Curve{17}; Curve{9}; Curve{62}; Curve{75}; Curve{72}; Curve{66}; Curve{59}; Curve{51}; Curve{63}; Curve{71}; Curve{57}; Curve{80}; Curve{82}; Curve{67}; Curve{56}; Curve{64}; Curve{55}; Curve{58}; Curve{73}; Curve{79}; Curve{60}; Curve{68}; Curve{81}; Curve{46}; Curve{52}; Curve{54}; Curve{65}; Curve{70}; Curve{69}; Curve{30}; Curve{33}; Curve{21}; Curve{31}; Curve{32}; Curve{61}; Curve{29}; Curve{34}; Curve{23}; Curve{53}; Curve{74}; Curve{45}; Curve{50}; Curve{27}; Curve{37}; Curve{35}; Curve{25}; Curve{47}; Curve{43}; Curve{36}; Curve{77}; Curve{76}; Curve{87}; Curve{83}; Curve{22}; Curve{24}; Curve{38}; Curve{26}; Curve{39}; Curve{28}; Curve{78}; Curve{40}; Curve{86}; Curve{84}; Curve{49}; Curve{85}; Curve{48}; Curve{42}; Curve{41}; Curve{44}; Surface{1}; Surface{24}; Surface{2}; Surface{23}; Surface{22}; Surface{3}; Surface{21}; Surface{4}; Surface{20}; Surface{5}; Surface{25}; Surface{19}; Surface{26}; Surface{6}; Surface{18}; Surface{33}; Surface{27}; Surface{7}; Surface{17}; Surface{28}; Surface{13}; Surface{8}; Surface{16}; Surface{32}; Surface{14}; Surface{15}; Surface{34}; Surface{29}; Surface{9}; Surface{12}; Surface{11}; Surface{10}; Surface{30}; Surface{31}; Surface{35}; Surface{36}; }
}
//+
Rotate {{0, 0, 1}, {0, 0, 1}, Pi} {
  Duplicata { Point{1}; Point{28}; Point{9}; Point{2}; Point{32}; Point{15}; Point{3}; Point{16}; Point{10}; Point{33}; Point{17}; Point{34}; Point{7}; Point{11}; Point{29}; Point{51}; Point{43}; Point{48}; Point{38}; Point{52}; Point{42}; Point{55}; Point{49}; Point{4}; Point{53}; Point{41}; Point{26}; Point{50}; Point{24}; Point{40}; Point{5}; Point{8}; Point{44}; Point{18}; Point{20}; Point{30}; Point{19}; Point{31}; Point{35}; Point{27}; Point{22}; Point{37}; Point{36}; Point{21}; Point{54}; Point{45}; Point{6}; Point{12}; Point{13}; Point{14}; Point{39}; Point{25}; Point{23}; Point{0}; Point{105}; Point{100}; Point{107}; Point{112}; Point{117}; Point{97}; Point{103}; Point{110}; Point{101}; Point{106}; Point{122}; Point{136}; Point{99}; Point{148}; Point{108}; Point{116}; Point{113}; Point{125}; Point{102}; Point{111}; Point{135}; Point{121}; Point{147}; Point{118}; Point{115}; Point{128}; Point{141}; Point{123}; Point{146}; Point{120}; Point{140}; Point{133}; Point{145}; Point{127}; Point{137}; Point{130}; Point{119}; Point{132}; Point{138}; Point{144}; Point{129}; Point{134}; Point{126}; Point{131}; Point{143}; Point{142}; Curve{1}; Curve{18}; Curve{2}; Curve{14}; Curve{3}; Curve{4}; Curve{10}; Curve{11}; Curve{19}; Curve{5}; Curve{15}; Curve{6}; Curve{12}; Curve{8}; Curve{16}; Curve{13}; Curve{20}; Curve{7}; Curve{17}; Curve{9}; Curve{62}; Curve{75}; Curve{72}; Curve{59}; Curve{66}; Curve{51}; Curve{63}; Curve{71}; Curve{57}; Curve{80}; Curve{82}; Curve{56}; Curve{67}; Curve{64}; Curve{58}; Curve{55}; Curve{73}; Curve{79}; Curve{60}; Curve{68}; Curve{46}; Curve{81}; Curve{54}; Curve{52}; Curve{65}; Curve{70}; Curve{69}; Curve{30}; Curve{33}; Curve{21}; Curve{31}; Curve{32}; Curve{29}; Curve{61}; Curve{23}; Curve{34}; Curve{74}; Curve{53}; Curve{45}; Curve{50}; Curve{27}; Curve{37}; Curve{35}; Curve{25}; Curve{47}; Curve{43}; Curve{36}; Curve{77}; Curve{76}; Curve{87}; Curve{83}; Curve{22}; Curve{24}; Curve{38}; Curve{26}; Curve{39}; Curve{78}; Curve{40}; Curve{28}; Curve{86}; Curve{84}; Curve{85}; Curve{49}; Curve{42}; Curve{48}; Curve{41}; Curve{44}; Curve{164}; Curve{165}; Curve{159}; Curve{171}; Curve{169}; Curve{176}; Curve{185}; Curve{184}; Curve{155}; Curve{158}; Curve{166}; Curve{173}; Curve{177}; Curve{160}; Curve{162}; Curve{167}; Curve{168}; Curve{192}; Curve{196}; Curve{220}; Curve{213}; Curve{161}; Curve{157}; Curve{239}; Curve{240}; Curve{170}; Curve{174}; Curve{191}; Curve{182}; Curve{183}; Curve{179}; Curve{197}; Curve{175}; Curve{178}; Curve{211}; Curve{214}; Curve{190}; Curve{198}; Curve{236}; Curve{238}; Curve{189}; Curve{187}; Curve{181}; Curve{186}; Curve{212}; Curve{201}; Curve{225}; Curve{193}; Curve{200}; Curve{237}; Curve{235}; Curve{188}; Curve{194}; Curve{223}; Curve{224}; Curve{207}; Curve{222}; Curve{234}; Curve{232}; Curve{199}; Curve{208}; Curve{216}; Curve{231}; Curve{203}; Curve{215}; Curve{206}; Curve{218}; Curve{221}; Curve{233}; Curve{229}; Curve{205}; Curve{217}; Curve{210}; Curve{202}; Curve{204}; Curve{209}; Curve{230}; Curve{227}; Curve{228}; Curve{226}; Surface{1}; Surface{24}; Surface{2}; Surface{23}; Surface{22}; Surface{3}; Surface{21}; Surface{4}; Surface{20}; Surface{5}; Surface{25}; Surface{19}; Surface{26}; Surface{6}; Surface{18}; Surface{33}; Surface{27}; Surface{7}; Surface{17}; Surface{28}; Surface{13}; Surface{8}; Surface{16}; Surface{32}; Surface{14}; Surface{15}; Surface{34}; Surface{29}; Surface{9}; Surface{12}; Surface{11}; Surface{10}; Surface{30}; Surface{31}; Surface{35}; Surface{36}; Surface{267}; Surface{252}; Surface{242}; Surface{292}; Surface{317}; Surface{277}; Surface{257}; Surface{262}; Surface{247}; Surface{372}; Surface{272}; Surface{417}; Surface{302}; Surface{287}; Surface{322}; Surface{282}; Surface{357}; Surface{412}; Surface{307}; Surface{337}; Surface{297}; Surface{407}; Surface{327}; Surface{377}; Surface{312}; Surface{347}; Surface{402}; Surface{332}; Surface{382}; Surface{352}; Surface{367}; Surface{397}; Surface{362}; Surface{392}; Surface{342}; Surface{387}; }
}
//+


// Extrusion of plenum fluid from stringer top to outlet
Extrude {0, 0, hp} {
  Surface{1}; Surface{24}; Surface{940}; Surface{2}; Surface{23}; Surface{935}; Surface{930}; Surface{22}; Surface{925}; Surface{3}; Surface{21}; Surface{915}; Surface{920}; Surface{4}; Surface{20}; Surface{910}; Surface{905}; Surface{5}; Surface{19}; Surface{25}; Surface{6}; Surface{18}; Surface{900}; Surface{895}; Surface{26}; Surface{890}; Surface{13}; Surface{7}; Surface{17}; Surface{27}; Surface{33}; Surface{880}; Surface{14}; Surface{16}; Surface{15}; Surface{8}; Surface{885}; Surface{870}; Surface{12}; Surface{28}; Surface{875}; Surface{29}; Surface{11}; Surface{9}; Surface{860}; Surface{32}; Surface{10}; Surface{34}; Surface{865}; Surface{30}; Surface{252}; Surface{242}; Surface{267}; Surface{855}; Surface{850}; Surface{31}; Surface{835}; Surface{845}; Surface{257}; Surface{35}; Surface{247}; Surface{262}; Surface{277}; Surface{292}; Surface{840}; Surface{36}; Surface{825}; Surface{272}; Surface{830}; Surface{317}; Surface{820}; Surface{815}; Surface{302}; Surface{810}; Surface{372}; Surface{287}; Surface{805}; Surface{800}; Surface{785}; Surface{795}; Surface{790}; Surface{417}; Surface{282}; Surface{780}; Surface{760}; Surface{322}; Surface{765}; Surface{357}; Surface{750}; Surface{755}; Surface{745}; Surface{770}; Surface{307}; Surface{775}; Surface{297}; Surface{740}; Surface{725}; Surface{412}; Surface{720}; Surface{337}; Surface{735}; Surface{700}; Surface{715}; Surface{690}; Surface{730}; Surface{680}; Surface{695}; Surface{710}; Surface{327}; Surface{705}; Surface{377}; Surface{407}; Surface{312}; Surface{675}; Surface{685}; Surface{670}; Surface{665}; Surface{660}; Surface{655}; Surface{645}; Surface{650}; Surface{347}; Surface{402}; Surface{332}; Surface{635}; Surface{640}; Surface{630}; Surface{382}; Surface{352}; Surface{625}; Surface{620}; Surface{367}; Surface{397}; Surface{615}; Surface{610}; Surface{362}; Surface{605}; Surface{342}; Surface{392}; Surface{600}; Surface{595}; Surface{590}; Surface{387}; Surface{585}; Layers{{1,2,2,2},{0.05,0.25,0.5,1}}; Recombine;
}





//+
Rotate {{0, 0, 1}, {0, 0, -62}, 3*Pi/2} {
  Duplicata { Point{56}; Point{71}; Point{86}; Point{57}; Point{78}; Point{62}; Point{91}; Point{88}; Point{79}; Point{81}; Point{95}; Point{80}; Point{63}; Point{83}; Point{93}; Point{58}; Point{84}; Point{72}; Point{87}; Point{64}; Point{73}; Point{59}; Point{85}; Point{75}; Point{60}; Point{82}; Point{76}; Point{89}; Point{68}; Point{90}; Point{65}; Point{77}; Point{69}; Point{94}; Point{74}; Point{92}; Point{66}; Point{70}; Point{67}; Point{61}; Curve{88}; Curve{89}; Curve{90}; Curve{98}; Curve{137}; Curve{149}; Curve{133}; Curve{96}; Curve{95}; Curve{111}; Curve{91}; Curve{94}; Curve{134}; Curve{112}; Curve{150}; Curve{138}; Curve{101}; Curve{99}; Curve{97}; Curve{135}; Curve{119}; Curve{110}; Curve{109}; Curve{136}; Curve{92}; Curve{126}; Curve{151}; Curve{139}; Curve{127}; Curve{128}; Curve{113}; Curve{114}; Curve{102}; Curve{100}; Curve{93}; Curve{140}; Curve{121}; Curve{120}; Curve{105}; Curve{108}; Curve{129}; Curve{130}; Curve{103}; Curve{104}; Curve{132}; Curve{141}; Curve{145}; Curve{152}; Curve{115}; Curve{116}; Curve{107}; Curve{106}; Curve{142}; Curve{122}; Curve{123}; Curve{131}; Curve{144}; Curve{143}; Curve{153}; Curve{146}; Curve{117}; Curve{118}; Curve{154}; Curve{147}; Curve{125}; Curve{124}; Curve{148}; Surface{37}; Surface{49}; Surface{52}; Surface{54}; Surface{38}; Surface{50}; Surface{56}; Surface{51}; Surface{39}; Surface{58}; Surface{53}; Surface{40}; Surface{60}; Surface{55}; Surface{41}; Surface{62}; Surface{64}; Surface{57}; Surface{48}; Surface{42}; Surface{59}; Surface{63}; Surface{43}; Surface{61}; Surface{47}; Surface{44}; Surface{46}; Surface{45}; }
}
//+
Rotate {{0, 0, 1}, {0, 0, -62}, Pi/2} {
  Duplicata { Point{56}; Point{71}; Point{86}; Point{57}; Point{78}; Point{62}; Point{91}; Point{88}; Point{79}; Point{81}; Point{95}; Point{80}; Point{63}; Point{83}; Point{93}; Point{58}; Point{84}; Point{72}; Point{87}; Point{64}; Point{73}; Point{59}; Point{85}; Point{75}; Point{60}; Point{82}; Point{76}; Point{89}; Point{68}; Point{90}; Point{65}; Point{77}; Point{69}; Point{94}; Point{74}; Point{92}; Point{66}; Point{70}; Point{67}; Point{61}; Curve{88}; Curve{89}; Curve{90}; Curve{98}; Curve{137}; Curve{149}; Curve{133}; Curve{96}; Curve{95}; Curve{111}; Curve{91}; Curve{94}; Curve{134}; Curve{112}; Curve{150}; Curve{138}; Curve{101}; Curve{99}; Curve{97}; Curve{135}; Curve{119}; Curve{110}; Curve{109}; Curve{136}; Curve{92}; Curve{126}; Curve{151}; Curve{139}; Curve{127}; Curve{128}; Curve{113}; Curve{114}; Curve{102}; Curve{100}; Curve{93}; Curve{140}; Curve{121}; Curve{120}; Curve{105}; Curve{108}; Curve{129}; Curve{130}; Curve{103}; Curve{104}; Curve{132}; Curve{141}; Curve{145}; Curve{152}; Curve{115}; Curve{116}; Curve{107}; Curve{106}; Curve{142}; Curve{122}; Curve{123}; Curve{131}; Curve{144}; Curve{143}; Curve{153}; Curve{146}; Curve{117}; Curve{118}; Curve{154}; Curve{147}; Curve{125}; Curve{124}; Curve{148}; Surface{37}; Surface{49}; Surface{52}; Surface{54}; Surface{38}; Surface{50}; Surface{56}; Surface{51}; Surface{39}; Surface{58}; Surface{53}; Surface{40}; Surface{60}; Surface{55}; Surface{41}; Surface{62}; Surface{64}; Surface{57}; Surface{48}; Surface{42}; Surface{59}; Surface{63}; Surface{43}; Surface{61}; Surface{47}; Surface{44}; Surface{46}; Surface{45}; }
}
//+
Rotate {{0, 0, 1}, {0, 0, -62}, Pi} {
  Duplicata { Point{56}; Point{71}; Point{86}; Point{57}; Point{78}; Point{62}; Point{91}; Point{88}; Point{79}; Point{81}; Point{95}; Point{80}; Point{63}; Point{83}; Point{93}; Point{58}; Point{84}; Point{72}; Point{87}; Point{64}; Point{73}; Point{59}; Point{85}; Point{75}; Point{60}; Point{82}; Point{76}; Point{89}; Point{68}; Point{90}; Point{65}; Point{77}; Point{69}; Point{94}; Point{74}; Point{92}; Point{66}; Point{70}; Point{67}; Point{61}; Curve{88}; Curve{89}; Curve{90}; Curve{98}; Curve{137}; Curve{149}; Curve{133}; Curve{96}; Curve{95}; Curve{111}; Curve{91}; Curve{94}; Curve{134}; Curve{112}; Curve{150}; Curve{138}; Curve{101}; Curve{99}; Curve{97}; Curve{135}; Curve{119}; Curve{110}; Curve{109}; Curve{136}; Curve{92}; Curve{126}; Curve{151}; Curve{139}; Curve{127}; Curve{128}; Curve{113}; Curve{114}; Curve{102}; Curve{100}; Curve{93}; Curve{140}; Curve{121}; Curve{120}; Curve{105}; Curve{108}; Curve{129}; Curve{130}; Curve{103}; Curve{104}; Curve{132}; Curve{141}; Curve{145}; Curve{152}; Curve{115}; Curve{116}; Curve{107}; Curve{106}; Curve{142}; Curve{122}; Curve{123}; Curve{131}; Curve{144}; Curve{143}; Curve{153}; Curve{146}; Curve{117}; Curve{118}; Curve{154}; Curve{147}; Curve{125}; Curve{124}; Curve{148}; Surface{37}; Surface{49}; Surface{52}; Surface{54}; Surface{38}; Surface{50}; Surface{56}; Surface{51}; Surface{39}; Surface{58}; Surface{53}; Surface{40}; Surface{60}; Surface{55}; Surface{41}; Surface{62}; Surface{64}; Surface{57}; Surface{48}; Surface{42}; Surface{59}; Surface{63}; Surface{43}; Surface{61}; Surface{47}; Surface{44}; Surface{46}; Surface{45}; }
}



// Extrustion from inlet to graphite stringer top


Extrude {0, 0, lc} {
  Surface{37}; Surface{49}; Surface{52}; Surface{38}; Surface{50}; Surface{54}; Surface{39}; Surface{51}; Surface{56}; Surface{40}; Surface{53}; Surface{58}; Surface{41}; Surface{55}; Surface{4266}; Surface{60}; Surface{42}; Surface{4296}; Surface{57}; Surface{4256}; Surface{62}; Surface{4281}; Surface{43}; Surface{64}; Surface{59}; Surface{4306}; Surface{48}; Surface{61}; Surface{4251}; Surface{63}; Surface{47}; Surface{44}; Surface{4291}; Surface{46}; Surface{4311}; Surface{45}; Surface{4236}; Surface{4276}; Surface{4301}; Surface{4221}; Surface{4261}; Surface{4286}; Surface{4399}; Surface{4379}; Surface{4419}; Surface{4404}; Surface{4384}; Surface{4434}; Surface{4414}; Surface{4206}; Surface{4389}; Surface{4241}; Surface{4271}; Surface{4449}; Surface{4429}; Surface{4191}; Surface{4394}; Surface{4226}; Surface{4246}; Surface{4186}; Surface{4211}; Surface{4231}; Surface{4181}; Surface{4201}; Surface{4216}; Surface{4474}; Surface{4196}; Surface{4176}; Surface{4444}; Surface{4409}; Surface{4489}; Surface{4464}; Surface{4424}; Surface{4504}; Surface{4479}; Surface{4712}; Surface{4439}; Surface{4717}; Surface{4702}; Surface{4514}; Surface{4707}; Surface{4687}; Surface{4494}; Surface{4697}; Surface{4454}; Surface{4509}; Surface{4672}; Surface{4484}; Surface{4692}; Surface{4682}; Surface{4662}; Surface{4459}; Surface{4657}; Surface{4499}; Surface{4677}; Surface{4667}; Surface{4642}; Surface{4469}; Surface{4652}; Surface{4647}; Surface{4627}; Surface{4637}; Surface{4632}; Surface{4612}; Surface{4622}; Surface{4617}; Surface{4607}; Surface{4597}; Surface{4602}; Surface{4592}; Surface{4587}; Surface{4582}; Layers{{40,10,7,3},{0.75,0.15,0.05,0.05}}; Recombine;
}




// Extrusion of channel top to outlet


//+
Extrude {0, 0, hp} {
 Surface{4739}; Surface{4761}; Surface{4783}; Surface{4849}; Surface{4915}; Surface{4981}; Surface{5069}; Surface{5179}; Surface{5245}; Surface{5311}; Surface{5399}; Surface{5377}; Surface{5333}; Surface{5267}; Surface{5135}; Surface{5025}; Surface{4959}; Surface{4893}; Surface{4827}; Surface{4805}; Surface{4871}; Surface{4937}; Surface{5003}; Surface{5091}; Surface{5223}; Surface{5421}; Surface{5509}; Surface{5465};   Layers{{1,2,2,2},{0.05,0.25,0.5,1}}; Recombine;
}
//+
Extrude {0, 0, hp} {
  Surface{6213}; Surface{6103}; Surface{6037}; Surface{5949}; Surface{5817}; Surface{5597}; Surface{5531}; Surface{5355}; Surface{5157}; Surface{5047}; Surface{5113}; Surface{5201}; Surface{5443}; Surface{5553}; Surface{5619}; Surface{5861}; Surface{5993}; Surface{6059}; Surface{6125}; Surface{6191}; Surface{6147}; Surface{6081}; Surface{6015}; Surface{5883}; Surface{5641}; Surface{5575}; Surface{5487}; Surface{5289};  Layers{{1,2,2,2},{0.05,0.25,0.5,1}}; Recombine;
}
//+
Extrude {0, 0, hp} {
  Surface{6631}; Surface{6719}; Surface{6763}; Surface{6851}; Surface{6939}; Surface{7005}; Surface{7093}; Surface{7137}; Surface{7159}; Surface{7181}; Surface{7115}; Surface{7071}; Surface{7049}; Surface{6983}; Surface{6917}; Surface{6829}; Surface{6697}; Surface{6565}; Surface{6521}; Surface{6455}; Surface{6389}; Surface{6433}; Surface{6499}; Surface{6675}; Surface{6807}; Surface{6895}; Surface{6961}; Surface{7027};  Layers{{1,2,2,2},{0.05,0.25,0.5,1}}; Recombine;
}
//+
Extrude {0, 0, hp} {
  Surface{5685}; Surface{5751}; Surface{5839}; Surface{5971}; Surface{6257}; Surface{6323}; Surface{6411}; Surface{6587}; Surface{6741}; Surface{6873}; Surface{6785}; Surface{6653}; Surface{6543}; Surface{6367}; Surface{6301}; Surface{6235}; Surface{5927}; Surface{5795}; Surface{5729}; Surface{5663}; Surface{5707}; Surface{5773}; Surface{5905}; Surface{6169}; Surface{6279}; Surface{6345}; Surface{6477}; Surface{6609};  Layers{{1,2,2,2},{0.05,0.25,0.5,1}}; Recombine;
}
