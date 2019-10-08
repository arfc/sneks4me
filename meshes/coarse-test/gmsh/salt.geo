r=0.2;
r2 = 0.7*r;
l=0.4;
bx = l;
by = r2;
mx = 0.46;
my = Sqrt(r^2 - ((mx-bx)^2));

cx = l+(0.45*r);
cy = Sqrt(r2^2 - ((cx-bx)^2));
cx1 = l+(0.55*r);
cy1 = Sqrt(r2^2 - ((cx1-bx)^2));
cx2 = l+(0.65*r);
cy2 = Sqrt(r2^2 - ((cx2-bx)^2));

cx3 = l+(0.3*r);
cy3 = Sqrt(r2^2 - ((cx3-bx)^2));
cx4 = l+(0.15*r);
cy4 = Sqrt(r2^2 - ((cx4-bx)^2));

dy = 0.745*r;
dx = l + (Sqrt(r^2 - dy^2));
dy1 = 0.90*r2;
dx1 = l + (Sqrt(r2^2 - dy1^2));
dy2 = 0.98*r2;
dx2 = l + (Sqrt(r2^2 - dy2^2));

ex = l + (0.7*r);


h =63; //channel height in inches
n = 63; //no. of vertical layers 
hp = 10; //plenum height
np = 10; //plenum vertical layers
gl = 0.8; //graphite length, from graphite mesh
gw = 0.4; //graphite width, from graphite mesh


Point(1) = {0,0,0};
Point(2) = {bx,0,0};
Point(3) = {l+r,0,0};
Point(4) = {mx,my,0};
Point(5) = {bx,r,0};
Point(6) = {0,r,0};
Point(7) = {0,by,0};
Point(8) = {bx,by,0};
Point(9) = {ex,0,0};

Point(10) = {cx,cy,0};
Point(101) = {cx1,cy1,0};
Point(102) = {cx2,cy2,0};
Point(103) = {cx3,cy3,0};
Point(104) = {cx4,cy4,0};

Point(11) = {dx,dy,0};

Line(1) = {1,2};
Line(2) = {2,8};
Line(3) = {8,7};
Line(4) = {7,1};

Line(5) = {8,5};
Line(6) = {5,6};
Line(7) = {6,7};

Line(8) = {2,9};
Line(9) = {9,3};
Line(10) = {10,11};

Circle(11) = {3,2,11};
Circle(12) = {11,2,5};
//Spline(13) = {9,102,101,10};
//Spline(14) = {10,103,104,8};
Line(13) = {9,10};
Line(14) = {10,8};

Line Loop(1) = {1,2,3,4};
Plane Surface(1) = {1};
Line Loop(2) = {5,6,7,-3};
Plane Surface(2) = {2};
Line Loop(3) = {8,13,14,-2};
Plane Surface(3) = {3};
Line Loop(4) = {9,11,-10,-13};
Plane Surface(4) = {4};
Line Loop(5) = {10,12,-5,-14};
Plane Surface(5) = {5};

Transfinite Surface {1,2,3,4,5};
Recombine Surface {1,2,3,4,5};

Transfinite Curve{4,2,13,11} =3;
Transfinite Curve{7,-5,-9,-10} = 4 Using Progression 1.3;
Transfinite Curve{1,3,6} = 4;
Transfinite Curve{14,8,12} = 3;


//plenum begins here

Point(211) = {0,0,h};
Point(12) = {bx,0,h};
Point(13) = {l+r,0,h};

Point(14) = {ex,0,h};
Point(141) = {cx1,cy1,0};
Point(142) = {cx2,cy2,0};
Point(143) = {cx3,cy3,0};
Point(144) = {cx4,cy4,0};

Point(15) = {bx,r,h};
Point(16) = {0,r,h};
Point(17) = {0,by,h};
Point(18) = {bx,by,h};

Point(19) = {cx,cy,h};

Point(20) = {dx,dy,h};
Point(21) = {gl,0,h};
Point(22) = {0,gw,h};
Point(23) = {gl,gw,h};
Point(25) = {0.8*gl,gw,h};

Line(15) = {211,12};
Line(16) = {12,18};
Line(17) = {17,18};
Line(18) = {17,211};
Line(19) = {18,15};
Line(20) = {15,16};
Line(21) = {16,17};
Circle(27) = {13,12,20};
Circle(272)={20,12,15};
Line(28) = {12,14};
Line(282) = {14,13};
Line(29) = {13,21};
Line(30) = {21,23};
Line(31) = {23,25};
Line(32) = {25,22};
Line(33) = {22,16};
//Spline(34) = {14,142,141,19};
//Spline(35) = {19,143,144,18};
Line(34) = {14,19};
Line(35) = {19,18};
Line(36) = {19,20};
Line(37) = {20,23};
Line(38) = {15,25};

Line Loop(6) = {15,16,-17,18};
Plane Surface(6) = {6};
Line Loop(7) = {17,19,20,21};
Plane Surface(7) = {7};
Line Loop(8) = {28,34,35,-16};
Plane Surface(8) = {8};
Line Loop(9) = {282,27,-36,-34};
Plane Surface(9) = {9};
Line Loop(10) = {36,272,-19,-35};
Plane Surface(10) = {10};
Line Loop(11) = {29,30,-37,-27};
Plane Surface(11) = {11};
Line Loop(12) = {37,31,-38,-272};
Plane Surface(12) = {12};
Line Loop(13) = {38,32,33,-20};
Plane Surface(13) = {13};

Transfinite Surface {6,7,8,9,10,11,12,13};
Recombine Surface {6,7,8,9,10,11,12,13};

Transfinite Curve{18,16,34,27,30} =3;
Transfinite Curve{-282,-36,-19,21} = 4 Using Progression 1.3;
Transfinite Curve{15,17,20,32} =4;
Transfinite Curve{28,35,2,272,31} = 3;
Transfinite Curve{37,38,-33,29} = 5 Using Progression 1.5; //only set that's conformity independent


Extrude {0,0,h}{
        Surface {1,2,3,4,5};
	Layers{n};
	Recombine;
}

Extrude {0,0,hp}{
        Surface {6,7,8,9,10,11,12,13};
	Layers{np};
	Recombine;
}

Physical Surface("inlet",100) = {1,2,3,4,5} ;
Physical Surface("out1",200) = {389,433,455,499,411,477,521,543} ;
Physical Surface("out2",300) = {303,175,153} ;
Physical Surface("out3",400) = {141,185,229,255} ;
Physical Surface("out4",500) = {490} ;
Physical Surface("out5",600) = {534,512} ;
Physical Surface("wall1",700) = {69,103,90} ;
Physical Surface("wall2",800) = {11,12,13} ;
Physical Surface("sym1",900) = {73,56} ;
Physical Surface("sym2",1000) = {44,132,99} ;
Physical Volume("fluid",44) = {1,2,3,4,5,6,7,8,9,10,11,12,13};
