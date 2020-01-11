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
n = 252; // no. of vertical layers

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
Line Loop(1) = {1,5,-2,-6};
Plane Surface(1) = {1};

Line Loop(2) = {8,2,-7,-3};
Plane Surface(2) = {2};

Line Loop(3) = {10,3,-9,-4};
Plane Surface(3) = {3};

Transfinite Surface {1,2,3};
Recombine Surface {1,2,3};

Transfinite Curve{5,6} = 11;
Transfinite Curve{7,8} = 3;
Transfinite Curve{9,10} = 8;
Transfinite Curve{-1,-2,-3,-4} = 11 Using Progression 1.3;

Extrude {0,0,h}{
        Surface{1,2,3};
        Layers{n};
        Recombine;
}

Physical Surface("inlet",10) = {1,2,3} ;
Physical Surface("outlet",20) = {32,54,76} ;
Physical Surface("sym1",30) = {19} ; 
Physical Surface("sym2",40) = {75} ; 
Physical Surface("wall",50) = {23,49,71} ;
Physical Surface("ext1",60) = {31,41,63} ;
Physical Volume("solid",1) = {1,2,3} ;*/
