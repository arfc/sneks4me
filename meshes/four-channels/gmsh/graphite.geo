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
a= 0.3/Sqrt(2);
ay = 0.3;

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
Point(9) = {-l1,-l1,-h};
Point(10) = {-l1,-l1,-h};

Line(1) = {1,2};
Circle(2) = {2,3,7};
Line(3) = {7,8};
Circle(4) = {8,4,5};
Line(5) = {5,6};
Line(6) = {0,1};
Line(7) = {6,0};

Point(11) = {-l1+r,-l1,-h};
Point(12) = {-l1+x4,-l1+x4,-h};
Point(13) = {-l1+x5,-l1+x5,-h};
Point(14) = {-l1+x6,-l1+x6,-h};

Point(61) = {l1-r,-l1,-h};
Point(62) = {l1-x4,-l1+x4,-h};
Point(63) = {l1-x5,-l1+x5,-h};
Point(64) = {l1-x6,-l1+x6,-h};

Point(21) = {-x1,y1,-h};
Point(22) = {-x2,y2,-h};
Point(23) = {-x3,y3,-h};

Point(51) = {x1,y1,-h};
Point(52) = {x2,y2,-h};
Point(53) = {x3,y3,-h};

//Point(20) = {-a,-a,-h};
//Point(30) = {0,-ay,-h};
//Point(40) = {a,-a,-h};

Line(8) = {21,12};
Line(9) = {22,13};
Line(10) = {23,14};

Line(11) = {51,62};
Line(12) = {52,63};
Line(13) = {53,64};
/*

Line(5) = {2,3};
Line(6) = {6,7};

Circle(7) = {4,1,3};
Line(8) = {9,7};

Circle(9) = {5,1,4};
Line(10) = {10,9};

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
