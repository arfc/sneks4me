l1 = 1; //half the length of the graphite block
l2 = 0.4; //straight edge length outside channel, see figure
r = 0.2; //channel curved part radius
l3 = 0.8;
h = 62; //channel height-1, inches
n = 252; // no. of vertical layers

//Point(0) = {0,0,0};
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

Line(1) = {2,3};
Line(2) = {3,7};
Circle(3) = {7,3,2};


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
Physical Volume("solid",1) = {1,2,3} ;
