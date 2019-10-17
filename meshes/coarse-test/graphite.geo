r = 0.2;
l = 0.4;
dl = 0.2;
mx = 0.46;
my = Sqrt(r^2 - ((mx-l)^2));
bx = (1.14*l);
cx = (1.6*l); 
by = r+dl;
L = l+r;
h = 63; //channel height, inches
n = 63; // no. of vertical layers

bx2 = l;
dy = 0.745*r;
dx = l + (Sqrt(r^2 - dy^2));

Point(1) = {l,0,0};
Point(2) = {0,r,0};
Point(3) = {l,r,0};
Point(5) = {L,0,0};
Point(6) = {0,r+dl,0};
Point(7) = {cx,by,0};
Point(8) = {dx,dy,0};
Point(9) = {L+dl,by,0};
Point(10) = {L+dl,0,0};

Line(1) = {6,2};
Line(2) = {7,3};
Line(3) = {9,8};
Line(4) = {10,5};

Line(5) = {2,3};
Line(6) = {6,7};

Circle(7) = {8,1,3};
Line(8) = {9,7};

Circle(9) = {5,1,8};
Line(10) = {10,9};

Line Loop(1) = {1,5,-2,-6};
Plane Surface(1) = {1};

Line Loop(2) = {8,2,-7,-3};
Plane Surface(2) = {2};

Line Loop(3) = {10,3,-9,-4};
Plane Surface(3) = {3};

Transfinite Surface {1,2,3};
Recombine Surface {1,2,3};

Transfinite Curve{5,6} = 4;
Transfinite Curve{7,8} = 3;
Transfinite Curve{9,10} = 3;
Transfinite Curve{-1,-2,-3,-4} = 5 Using Progression 1.5;

hp1 = 51/63;
hp2 = 57/63;
hp3 = 60/63;
hp4 = 1;


Extrude {0,0,h}{
        Surface{1,2,3};
        Layers{ {51,9,6,12} , {hp1,hp2,hp3,hp4} };
        Recombine;
}

Physical Surface("inlet",10) = {1,2,3} ;
Physical Surface("outlet",20) = {32,54,76} ;
Physical Surface("sym1",30) = {19} ; 
Physical Surface("sym2",40) = {75} ; 
Physical Surface("wall",50) = {23,49,71} ;
Physical Surface("ext1",60) = {31,41,63} ;
Physical Volume("solid",1) = {1,2,3} ;
