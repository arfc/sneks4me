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
x7 = l1-l2-(0.08/4);
x8 = l1-l2-(0.24/4);
x9 = l1-l2-(0.48/4);
y7 = Sqrt((0.3^2)-(x7-l1+l2+r)^2)-1;
y8 = Sqrt((0.3^2)-(x8-l1+l2+r)^2)-1;
y9 = Sqrt((0.3^2)-(x9-l1+l2+r)^2)-1;

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
//Point(33) = {-x8,y8,-h};
//Point(32) = {-x9,y9,-h};

Point(18) = {x1,y1,-h};
Point(19) = {x2,y2,-h};
Point(20) = {x3,y3,-h};

//Line(1) = {1,2};
//Circle(2) = {2,3,21};
//Circle(3) = {21,3,22};
//Circle(4) = {22,3,23};
//Circle(5) = {23,3,7};
//Line(6) = {7,8};
//Circle(7) = {5,4,51};
//Circle(8) = {51,4,52};
//Circle(9) = {52,4,53};
//Circle(10) = {53,4,8};



//Line(14) = {0,20};
//Line(15) = {20,30};
//Line(16) = {30,40};
//Line(17) = {40,0};

//Line(18) = {30,70};
//Line(19) = {70,50};
//Line(20) = {50,20};

//Line(21) = {40,60};
//Line(22) = {60,80};
//Line(23) = {80,30};


//Line(5) = {2,3};
//Line(6) = {6,7};

//Circle(7) = {4,1,3};
//Line(8) = {9,7};

//Circle(9) = {5,1,4};
//Line(10) = {10,9};

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
Physical Volume("solid",1) = {1,2,3} ;
//+
Point(81) = {-0.45, -0.45, -62, 0.1};
//+
Point(82) = {0.45, -0.45, -62, 0.1};
//+
Point(83) = {-0, -0.5, -62, 0.1};
//+
Point(84) = {0, -0.6, -62, 0.1};
//+
Point(85) = {-0.2, -0.6, -62, 0.1};
//+
Point(86) = {-0.4, -0.6, -62, 0.1};
//+
Point(87) = {0.2, -0.6, -62, 0.1};
//+
Point(88) = {0.4, -0.6, -62, 0.1};
//+
//+
Line(24) = {70, 83};
//+
Line(25) = {83, 80};
//+
Line(26) = {83, 84};
//+
Line(27) = {14, 86};
//+
Line(28) = {85, 86};
//+
Line(29) = {85, 84};
//+
Line(30) = {84, 87};
//+
Line(31) = {87, 88};
//+
Line(32) = {88, 64};
//+
Line(33) = {70, 85};
//+
Line(34) = {80, 87};
//+
Point(89) = {-0.3, -0.5, -62, 0.5};
//+
Point(90) = {0.3, -0.5, -62, 0.5};
//+
Line(35) = {89, 81};
//+
Line(36) = {70, 89};
//+
Line(37) = {89, 86};
//+
Line(38) = {80, 90};
//+
Line(39) = {90, 82};
//+
Line(40) = {90, 88};
//+
Point(91) = {-0.7, -1, -62, 0.5};
//+
Point(92) = {0.7, -1, -62, 0.5};*/
