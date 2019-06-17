r=0.2;
l=0.4;
bx = l;
by = 0.7 * r;
mx = 0.46;
my = Sqrt(r^2 - ((mx-bx)^2));
cy = 0.193649;
h =20; //channel height in inches
n = 20; //no. of vertical layers 

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
Physical Volume("fluid",4) = {1,2,3,4,5};
