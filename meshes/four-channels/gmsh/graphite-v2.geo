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

//+
Rotate {{0, 0, -62}, {0, 0, 1}, Pi/2} {
  Duplicata { Point{34}; Point{23}; Point{24}; Point{25}; Point{26}; Point{27}; Point{28}; Point{29}; Point{30}; Point{31}; Point{32}; Point{33}; Point{22}; Point{35}; Point{36}; Point{37}; Point{38}; Point{39}; Point{40}; Point{41}; Point{42}; Point{43}; Point{44}; Point{11}; Point{1}; Point{2}; Point{3}; Point{4}; Point{5}; Point{6}; Point{7}; Point{8}; Point{9}; Point{10}; Point{45}; Point{12}; Point{13}; Point{14}; Point{15}; Point{16}; Point{17}; Point{18}; Point{19}; Point{20}; Point{21}; Point{46}; Point{47}; Point{48}; Point{49}; Point{50}; Point{51}; Point{52}; Point{53}; Point{54}; Point{55}; Point{0}; Curve{68}; Curve{57}; Curve{58}; Curve{59}; Curve{60}; Curve{61}; Curve{62}; Curve{63}; Curve{64}; Curve{65}; Curve{66}; Curve{67}; Curve{56}; Curve{69}; Curve{70}; Curve{71}; Curve{72}; Curve{73}; Curve{74}; Curve{75}; Curve{76}; Curve{77}; Curve{78}; Curve{45}; Curve{35}; Curve{36}; Curve{37}; Curve{38}; Curve{39}; Curve{40}; Curve{41}; Curve{42}; Curve{43}; Curve{44}; Curve{79}; Curve{46}; Curve{47}; Curve{48}; Curve{49}; Curve{50}; Curve{51}; Curve{52}; Curve{53}; Curve{54}; Curve{55}; Curve{80}; Curve{81}; Curve{82}; Curve{83}; Curve{84}; Curve{85}; Curve{86}; Curve{87}; Curve{34}; Curve{23}; Curve{13}; Curve{14}; Curve{15}; Curve{16}; Curve{17}; Curve{18}; Curve{19}; Curve{20}; Curve{21}; Curve{22}; Curve{12}; Curve{24}; Curve{25}; Curve{26}; Curve{27}; Curve{28}; Curve{29}; Curve{30}; Curve{31}; Curve{32}; Curve{33}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Curve{7}; Curve{8}; Curve{9}; Curve{10}; Curve{11}; Surface{26}; Surface{15}; Surface{16}; Surface{17}; Surface{18}; Surface{19}; Surface{20}; Surface{21}; Surface{22}; Surface{23}; Surface{24}; Surface{25}; Surface{14}; Surface{27}; Surface{28}; Surface{29}; Surface{30}; Surface{31}; Surface{32}; Surface{33}; Surface{34}; Surface{35}; Surface{36}; Surface{3}; Surface{1}; Surface{2}; Surface{4}; Surface{5}; Surface{6}; Surface{7}; Surface{8}; Surface{9}; Surface{10}; Surface{11}; Surface{12}; Surface{13}; }
}
//+
Rotate {{0, 0, -62}, {0, 0, 1}, Pi} {
  Duplicata { Point{55}; Point{67}; Point{66}; Point{65}; Point{64}; Point{63}; Point{62}; Point{61}; Point{60}; Point{58}; Point{56}; Point{68}; Point{54}; Point{53}; Point{52}; Point{51}; Point{50}; Point{49}; Point{48}; Point{45}; Point{44}; Point{43}; Point{79}; Point{90}; Point{89}; Point{88}; Point{87}; Point{86}; Point{84}; Point{83}; Point{82}; Point{81}; Point{80}; Point{42}; Point{78}; Point{77}; Point{76}; Point{75}; Point{74}; Point{72}; Point{71}; Point{70}; Point{69}; Point{10}; Point{20}; Point{19}; Point{18}; Point{17}; Point{16}; Point{15}; Point{14}; Point{13}; Point{12}; Point{11}; Point{21}; Point{9}; Point{8}; Point{7}; Point{6}; Point{5}; Point{4}; Point{3}; Point{2}; Point{1}; Point{31}; Point{41}; Point{40}; Point{39}; Point{38}; Point{37}; Point{36}; Point{35}; Point{34}; Point{33}; Point{32}; Point{94}; Point{30}; Point{29}; Point{28}; Point{27}; Point{26}; Point{25}; Point{24}; Point{23}; Point{22}; Point{106}; Point{110}; Point{109}; Point{108}; Point{107}; Point{105}; Point{104}; Point{103}; Point{100}; Point{99}; Point{98}; Point{97}; Point{96}; Point{95}; Point{0}; Curve{128}; Curve{140}; Curve{137}; Curve{136}; Curve{135}; Curve{134}; Curve{133}; Curve{132}; Curve{131}; Curve{130}; Curve{129}; Curve{141}; Curve{127}; Curve{126}; Curve{124}; Curve{123}; Curve{122}; Curve{121}; Curve{120}; Curve{119}; Curve{114}; Curve{113}; Curve{151}; Curve{161}; Curve{160}; Curve{159}; Curve{158}; Curve{157}; Curve{156}; Curve{155}; Curve{154}; Curve{153}; Curve{152}; Curve{112}; Curve{150}; Curve{149}; Curve{148}; Curve{147}; Curve{146}; Curve{145}; Curve{144}; Curve{143}; Curve{142}; Curve{80}; Curve{90}; Curve{89}; Curve{88}; Curve{87}; Curve{86}; Curve{85}; Curve{84}; Curve{83}; Curve{82}; Curve{81}; Curve{91}; Curve{79}; Curve{78}; Curve{77}; Curve{76}; Curve{75}; Curve{74}; Curve{73}; Curve{72}; Curve{71}; Curve{101}; Curve{111}; Curve{110}; Curve{109}; Curve{108}; Curve{107}; Curve{106}; Curve{105}; Curve{104}; Curve{103}; Curve{102}; Curve{162}; Curve{100}; Curve{99}; Curve{98}; Curve{97}; Curve{96}; Curve{95}; Curve{94}; Curve{93}; Curve{92}; Curve{172}; Curve{174}; Curve{173}; Curve{171}; Curve{170}; Curve{169}; Curve{168}; Curve{167}; Curve{166}; Curve{165}; Curve{164}; Curve{163}; Curve{70}; Curve{38}; Curve{48}; Curve{47}; Curve{46}; Curve{45}; Curve{44}; Curve{43}; Curve{42}; Curve{41}; Curve{40}; Curve{39}; Curve{49}; Curve{37}; Curve{36}; Curve{35}; Curve{34}; Curve{33}; Curve{32}; Curve{31}; Curve{30}; Curve{29}; Curve{59}; Curve{69}; Curve{68}; Curve{67}; Curve{66}; Curve{65}; Curve{64}; Curve{63}; Curve{62}; Curve{61}; Curve{60}; Curve{28}; Curve{58}; Curve{57}; Curve{56}; Curve{55}; Curve{54}; Curve{53}; Curve{52}; Curve{51}; Curve{50}; Curve{6}; Curve{5}; Curve{4}; Curve{3}; Curve{2}; Curve{1}; Curve{7}; Curve{17}; Curve{27}; Curve{26}; Curve{25}; Curve{24}; Curve{23}; Curve{22}; Curve{21}; Curve{20}; Curve{19}; Curve{18}; Curve{16}; Curve{15}; Curve{14}; Curve{13}; Curve{12}; Curve{11}; Curve{10}; Curve{9}; Curve{8}; Surface{195}; Surface{245}; Surface{240}; Surface{235}; Surface{230}; Surface{225}; Surface{220}; Surface{215}; Surface{210}; Surface{205}; Surface{200}; Surface{250}; Surface{190}; Surface{185}; Surface{180}; Surface{175}; Surface{36}; Surface{35}; Surface{34}; Surface{33}; Surface{32}; Surface{31}; Surface{300}; Surface{350}; Surface{345}; Surface{340}; Surface{335}; Surface{330}; Surface{325}; Surface{320}; Surface{315}; Surface{310}; Surface{305}; Surface{30}; Surface{295}; Surface{290}; Surface{285}; Surface{280}; Surface{275}; Surface{270}; Surface{265}; Surface{260}; Surface{255}; Surface{8}; Surface{7}; Surface{6}; Surface{5}; Surface{4}; Surface{3}; Surface{2}; Surface{1}; Surface{9}; Surface{19}; Surface{29}; Surface{28}; Surface{27}; Surface{26}; Surface{25}; Surface{24}; Surface{23}; Surface{22}; Surface{21}; Surface{20}; Surface{18}; Surface{17}; Surface{16}; Surface{15}; Surface{14}; Surface{13}; Surface{12}; Surface{11}; Surface{10}; }
}


Transfinite Surface {29, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 16, 30, 31, 32, 33, 34, 35, 36, 175, 180, 185, 190, 4, 1, 2, 3, 195, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 548, 325, 330, 335, 340, 345, 350, 518, 523, 528, 533, 538, 543, 320, 553, 558, 563, 568, 573, 578, 583, 588, 593, 598, 603, 260, 200, 205, 210, 215, 220, 225, 230, 235, 240, 245, 250, 255, 265, 270, 275, 280, 285, 290, 295, 300, 305, 310, 315, 608, 613, 618, 623, 628, 633, 818, 758, 763, 768, 773, 778, 783, 788, 793, 798, 803, 808, 813, 753, 823, 828, 833, 838, 843, 848, 853, 858, 863, 868, 873, 693, 638, 643, 648, 653, 658, 663, 668, 673, 678, 683, 688, 698, 703, 708, 713, 718, 723, 728, 733, 738, 743, 748};

Recombine Surface {29, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 16, 30, 31, 32, 33, 34, 35, 36, 175, 180, 185, 190, 4, 1, 2, 3, 195, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 548, 325, 330, 335, 340, 345, 350, 518, 523, 528, 533, 538, 543, 320, 553, 558, 563, 568, 573, 578, 583, 588, 593, 598, 603, 260, 200, 205, 210, 215, 220, 225, 230, 235, 240, 245, 250, 255, 265, 270, 275, 280, 285, 290, 295, 300, 305, 310, 315, 608, 613, 618, 623, 628, 633, 818, 758, 763, 768, 773, 778, 783, 788, 793, 798, 803, 808, 813, 753, 823, 828, 833, 838, 843, 848, 853, 858, 863, 868, 873, 693, 638, 643, 648, 653, 658, 663, 668, 673, 678, 683, 688, 698, 703, 708, 713, 718, 723, 728, 733, 738, 743, 748};

//+
Transfinite Curve {2, 4, 6, 8, 9, 66, 67, 68, 29, 27, 25, 23, 21} = 2 Using Progression 1;
//+
Transfinite Curve {1, 3, 5, 7, 72, 57, 55, 70, 77, 28, 26, 24, 22} = 2 Using Progression 1;
//+
Transfinite Curve {446, 444, 442, 440, 423, 396, 358, 425, 418, 377, 379, 381, 383} = 2 Using Progression 1;
//+
Transfinite Curve {445, 443, 441, 439, 436, 429, 428, 397, 376, 378, 380, 393, 373} = 2 Using Progression 1;
//+
Transfinite Curve {496, 494, 492, 497, 413, 483, 485, 448, 408, 481, 500, 502, 504} = 2 Using Progression 1;
//+
Transfinite Curve {495, 493, 491, 517, 516, 474, 473, 472, 469, 499, 501, 503, 505} = 2 Using Progression 1;
//+
Transfinite Curve {164, 166, 168, 170, 104, 89, 132, 102, 109, 158, 156, 154, 152} = 2 Using Progression 1;
//+
Transfinite Curve {165, 167, 169, 171, 172, 98, 99, 88, 159, 157, 155, 142, 151} = 2 Using Progression 1;
//+
Transfinite Curve {10, 14, 18, 141, 160} = 2 Using Progression 1;
//+
Transfinite Curve {11, 15, 19, 112, 161} = 2 Using Progression 1;
//+
Transfinite Curve {12, 16, 20, 113, 162} = 2 Using Progression 1;
//+
Transfinite Curve {30, 34, 38, 391, 438} = 2 Using Progression 1;
//+
Transfinite Curve {31, 35, 39, 390, 437} = 2 Using Progression 1;
//+
Transfinite Curve {32, 36, 40, 389, 382} = 2 Using Progression 1;
//+
Transfinite Curve {426, 372, 506, 509, 513} = 2 Using Progression 1;
//+
Transfinite Curve {374, 384, 507, 510, 514} = 2 Using Progression 1;
//+
Transfinite Curve {375, 362, 508, 511, 515} = 2 Using Progression 1;
//+
Transfinite Curve {466, 462, 150, 146, 153} = 2 Using Progression 1;
//+
Transfinite Curve {174, 145, 149, 463, 467} = 2 Using Progression 1;
//+
Transfinite Curve {173, 144, 148, 464, 468} = 2 Using Progression 1;
//+
Transfinite Curve {13, 17, 75, 80, 46, 43, 41, 370, 364, 353, 417, 371, 447} = 2 Using Progression 1;
//+
Transfinite Curve {62, 59, 71, 79, 81, 136, 108, 93, 97} = 2 Using Progression 1;
//+
Transfinite Curve {63, 56, 58, 52, 50, 48, 416, 360, 415, 435, 431} = 2 Using Progression 1;
//+
Transfinite Curve {64, 60, 69, 53, 45, 47, 127, 129, 90, 100, 95} = 2 Using Progression 1;
//+
Transfinite Curve {65, 61, 76, 83, 85, 367, 424, 405, 433} = 2 Using Progression 1;
//+
Transfinite Curve {33, 37, 78, 84, 49, 42, 44, 120, 123, 133, 107, 147, 143} = 2 Using Progression 1;
//+
Transfinite Curve {465, 461, 407, 401, 460, 456, 454, 369, 366, 357, 420, 388, 392} = 2 Using Progression 1;
//+
Transfinite Curve {475, 479, 409, 402, 134, 122, 103, 91, 94} = 2 Using Progression 1;
//+
Transfinite Curve {476, 480, 471, 487, 453, 451, 363, 361, 395, 427, 432} = 2 Using Progression 1;
//+
Transfinite Curve {477, 484, 482, 488, 490, 124, 111, 130, 101, 92, 96} = 2 Using Progression 1;
//+
Transfinite Curve {478, 470, 414, 406, 404, 354, 419, 434, 430} = 2 Using Progression 1;
//+
Transfinite Curve {512, 498, 410, 394, 452, 455, 121, 119, 126, 137, 110, 114, 163} = 2 Using Progression 1;
//+

Extrude {0,0,h+hinc}{
        Surface{29, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 16, 30, 31, 32, 33, 34, 35, 36, 175, 180, 185, 190, 4, 1, 2, 3, 195, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 548, 325, 330, 335, 340, 345, 350, 518, 523, 528, 533, 538, 543, 320, 553, 558, 563, 568, 573, 578, 583, 588, 593, 598, 603, 260, 200, 205, 210, 215, 220, 225, 230, 235, 240, 245, 250, 255, 265, 270, 275, 280, 285, 290, 295, 300, 305, 310, 315, 608, 613, 618, 623, 628, 633, 818, 758, 763, 768, 773, 778, 783, 788, 793, 798, 803, 808, 813, 753, 823, 828, 833, 838, 843, 848, 853, 858, 863, 868, 873, 693, 638, 643, 648, 653, 658, 663, 668, 673, 678, 683, 688, 698, 703, 708, 713, 718, 723, 728, 733, 738, 743, 748};
        Layers{{22,12,7,8},{0.64,0.88,0.96,1}}; 
        Recombine;
}
//+
Physical Volume("solid",1) = {36, 34, 35, 38, 37, 69, 41, 33, 32, 70, 71, 31, 30, 29, 28, 72, 73, 27, 26, 25, 24, 11, 49, 56, 55, 57, 54, 53, 58, 59, 23, 52, 51, 60, 61, 62, 50, 39, 63, 64, 48, 47, 46, 45, 44, 65, 66, 43, 42, 40, 67, 68, 118, 126, 125, 124, 123, 122, 121, 120, 119, 127, 117, 116, 115, 114, 113, 112, 111, 110, 136, 144, 143, 142, 141, 140, 139, 138, 137, 109, 135, 134, 133, 132, 131, 130, 129, 128, 83, 91, 90, 89, 88, 87, 86, 85, 84, 92, 82, 81, 80, 79, 78, 77, 76, 75, 100, 108, 107, 106, 105, 104, 103, 102, 101, 74, 99, 98, 97, 96, 95, 94, 93, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 15, 20, 22, 19, 16, 17, 18};
//+
Physical Surface("g_inlet") = {13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 30, 29, 28, 27, 26, 25, 33, 32, 31, 35, 34, 36, 345, 340, 335, 330, 350, 235, 180, 185, 190, 195, 200, 205, 210, 215, 2434, 220, 225, 295, 300, 290, 305, 310, 315, 320, 325, 255, 250, 245, 240, 175, 230, 270, 265, 260, 280, 275, 285, 863, 868, 873, 773, 733, 738, 743, 748, 753, 758, 763, 768, 808, 813, 818, 823, 828, 778, 833, 838, 843, 848, 853, 858, 683, 783, 788, 793, 798, 803, 613, 618, 623, 603, 598, 608, 698, 708, 713, 538, 703, 718, 723, 728, 573, 523, 528, 593, 688, 628, 693, 678, 673, 668, 663, 658, 653, 648, 643, 638, 633, 533, 588, 583, 578, 518, 568, 563, 558, 553, 548, 543};
//+
Physical Surface("g_outlet") = {1071, 1049, 1027, 1005, 983, 961, 939, 917, 1181, 1775, 1753, 1731, 1709, 1687, 1665, 1643, 1621, 1599, 1577, 1555, 1445, 1511, 1489, 1467, 1203, 895, 1159, 1137, 1115, 1093, 1269, 1247, 1225, 1313, 1335, 1291, 3799, 2963, 3557, 3755, 3733, 3711, 3689, 3667, 3645, 3623, 3601, 3579, 2985, 2017, 2259, 2237, 2215, 1951, 2171, 2149, 2127, 2105, 1797, 2061, 3953, 2193, 1973, 1995, 2281, 2039, 3887, 3909, 3931, 3843, 3865, 3821, 3073, 3051, 3029, 3293, 4041, 4019, 3997, 3975, 3095, 3535, 3513, 3491, 3469, 3447, 3425, 3403, 3381, 3359, 3117, 3337, 3315, 3007, 3271, 3249, 3227, 3205, 3183, 3161, 3139, 2936, 3777, 2919, 2941, 2897, 2875, 2325, 2303, 2721, 2677, 2699, 2633, 2655, 2347, 2611, 2589, 2567, 2545, 1357, 2501, 1907, 1885, 1863, 1841, 1819, 2083, 2853, 2831, 2809, 2743, 2787, 2765, 2479, 2457, 2435, 2413, 2391, 2369, 1533, 1423, 1401, 1379, 2523, 1929};
//+
Physical Surface("inwall1") = {912,1176,1774,1752,1718,978,1000,1022,1044,1066,934,956};
Physical Surface("inwall2") = {2056,1792,2100,2122,2144,2166,1946,2210,2232,2258,2970};
