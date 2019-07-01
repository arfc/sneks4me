l1 = 0.4 ;
l2 = 1.0 ;
r = 0.2 ;
pi = 22.0/7.0 ;

Point(0) = {0,0,0} ;
Point(1) = {0,l2-r,0};
Point(2) = {l1,l2-r,0};
Point(3) = {l1,l2,0};
Point(4) = {l1+r,l2,0};
Point(5) = {l2,l2,0};
Point(6) = {l2,l1+r,0};
Point(7) = {l2,l1,0};
Point(8) = {l2-r,l1,0};
Point(9) = {l2-r,0,0};
Point(10) = {l1,0,0};
Point(11) = {0,l1,0};
Point(12) = {l1,l1,0};
Point(13) = {l2-r,l2-r,0};

Line(1) = {0,11};
Line(2) = {11,12};
Line(3) = {12,10};
Line(4) = {10,0};

Line(5) = {11,1};
Line(6) = {1,2};
Line(7) = {2,12};

Line(8) = {12,8};
Line(9) = {8,9};
Line(10) = {9,10};

Line(11) = {2,13};
Line(12) = {13,8};

Line(13) = {13,5};

Circle(14) = {2,3,4};
Line(15) = {4,5};
Line(16) = {5,6};
Circle(17) = {6,7,8};

Line Loop(1) = {1,2,3,4};
Plane Surface(1) = {1};

Line Loop(2) = {8,9,10,-3};
Plane Surface(2) = {2};

Line Loop(3) = {5,6,7,-2};
Plane Surface(3) = {3};

Line Loop(4) = {11,12,-8,-7};
Plane Surface(4) = {4};

Line Loop(5) ={14,15,-13,-11};
Plane Surface(5) = {5};

Line Loop(6) ={13,16,17,-12};
Plane Surface(6) = {6};

Transfinite Surface {1,2,3,4,5,6};
Recombine Surface {1,2,3,4,5,6};

Extrude { {r-l2,0,0},
          {0,0,1},
          {0,l1,0},
          pi/2.0 } {1,2,3,4,5,6}
