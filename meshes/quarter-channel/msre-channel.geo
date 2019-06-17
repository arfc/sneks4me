r=0.2;
l=0.4;
bx = l;
by = 0.7 * r;
mx = 0.491;
my = Sqrt(r^2 - ((mx-bx)^2));
cy = 0.193649;

Point(1) = {0,0,0};
Point(2) = {bx,0,0};
Point(3) = {l+r,0,0};
Point(4) = {mx,my,0};
Point(5) = {bx,r,0};
Point(6) = {0,r,0};
Point(7) = {0,by,0};
Point(8) = {bx,by,0};

Line(1) = {1,2};
Line(2) = {2,8};
Line(3) = {8,7};
Line(4) = {7,1};
Line Loop(1) = {1,2,3,4};
Plane Surface(1) = {1};

Line(5) = {8,5};
Line(6) = {5,6};
Line(7) = {6,7};
Line Loop(2) = {5,6,7,-3};
Plane Surface(2) = {2};

Circle(8) = {3,2,4};
Line(9) = {2,3};
Line(10) = {4,8};
Line Loop(3) = {9,8,10,-2};
Plane Surface(3) = {3};

Circle(11) = {4,2,5};
Line Loop(4) = {11,-5,-10};
Plane Surface(4) = {4};

//Delete {Curve {5};}
Transfinite Surface {1,2,3,4};
Recombine Surface {1,2,3,4};

//Transfinite Curve{1,2,3,4,8,11,5} =7;
//Transfinite Curve{9,10,6} = 13 Using Progression 1.2;
