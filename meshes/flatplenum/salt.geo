r=0.2;
l=0.4;
bx = l;
by = 0.7 * r;
mx = 0.46;
my = Sqrt(r^2 - ((mx-bx)^2));
cy = 0.193649;
h =63; //channel height in inches
n = 63; //no. of vertical layers 
ph = 10; //plenum height
gl = 0.8; //graphite length, from graphite mesh
gw = 0.4; //graphite width, from graphite mesh

/*
Point(1) = {0,0,0};
Point(2) = {bx,0,0};
Point(3) = {l+r,0,0};
Point(4) = {mx,my,0};
Point(5) = {bx,r,0};
Point(6) = {0,r,0};
Point(7) = {0,by,0};
Point(8) = {bx,by,0};
Point(9) = {0.8*bx,by,0};
Point(10) = {0.8*bx,0,0};

Line(1) = {1,10};
Line(2) = {10,9};
Line(3) = {9,7};
Line(4) = {7,1};

Line(5) = {9,5};
Line(6) = {5,6};
Line(7) = {6,7};

Line(8) = {9,8};
Line(9) = {8,4};
Circle(10) = {4,2,5};

Line(11) = {2,3};
Circle(12) = {3,2,4};
Line(13) = {8,2};

Line(14) = {10,2};

Line Loop(1) = {1,2,3,4};
Plane Surface(1) = {1};
Line Loop(2) = {5,6,7,-3};
Plane Surface(2) = {2};
Line Loop(3) = {8,9,10,-5};
Plane Surface(3) = {3};
Line Loop(4) = {11,12,-9,13};
Plane Surface(4) = {4};
Line Loop(5) = {2,8,13,-14};
Plane Surface(5) = {5};

Transfinite Surface {1,2,3,4,5};
Recombine Surface {1,2,3,4,5};

Transfinite Curve{4,2,13,12} =7;
Transfinite Curve{7,-5,-9,-11} = 8 Using Progression 1.3;
Transfinite Curve{1,3,6} = 7;
Transfinite Curve{14,8,10} = 3;
*/
//plenum begins here

Point(11) = {0,0,h};
Point(12) = {bx,0,h};
Point(13) = {l+r,0,h};
Point(14) = {mx,my,h};
Point(15) = {bx,r,h};
Point(16) = {0,r,h};
Point(17) = {0,by,h};
Point(18) = {bx,by,h};
Point(19) = {0.8*bx,by,h};
Point(20) = {0.8*bx,0,h};
Point(21) = {gl,0,h};
Point(22) = {0,gw,h};
Point(23) = {gl,gw,h};
//Point(24) = {0.9*gl,gw,h};
Point(25) = {0.8*gl,gw,h};

Line(15) = {11,20};
Line(16) = {20,19};
Line(17) = {19,17};
Line(18) = {17,11};

Line(19) = {19,15};
Line(20) = {15,16};
Line(21) = {16,17};

Line(22) = {20,12};
Line(23) = {12,18};
Line(24) = {18,19};

Line(25) = {18,14};
Circle(26) = {14,12,15};

Circle(27) = {13,12,14};
Line(28) = {12,13};

Line(29) = {13,21};
Line(30) = {21,23};
Line(31) = {23,25};
Line(32) = {25,22};
Line(33) = {22,16};
Line(34) = {15,25};
Line(35) = {14,23};

Line Loop(6) = {15,16,17,18};
Plane Surface(6) = {6};
Line Loop(7) = {-17,19,20,21};
Plane Surface(7) = {7};
Line Loop(8) = {22,23,24,-16};
Plane Surface(8) = {8};
Line Loop(9) = {-24,25,26,-19};
Plane Surface(9) = {9};
Line Loop(10) = {28,27,-25,-23};
Plane Surface(10) = {10};
Line Loop(11) = {-27,29,30,-35};
Plane Surface(11) = {11};
Line Loop(12) = {-26,35,31,-34};
Plane Surface(12) = {12};
Line Loop(13) = {34,32,33,-20};
Plane Surface(13) = {13};







/*
Line Loop(6) = {15,16,17,18};
Plane Surface(6) = {6};

Transfinite Surface {6};
Recombine Surface {6};

Transfinite Curve{4,2,13,12} =7;

Extrude {0,0,h}{
        Surface {1,2,3,4,5};
	Layers{n};
	Recombine;
}

Physical Surface("inlet",100) = {1,2,3,4,5} ;
Physical Surface("outlet",200) = {58,36,80,124,102} ;
Physical Surface("wall",300) = {49,75,93} ;
Physical Surface("sym1",400) = {53,35} ;
Physical Surface("sym2",500) = {89,123,23} ;
Physical Volume("fluid",4) = {1,2,3,4,5};*/
