r = 0.2;
l = 0.4;
dl = 0.2;
mx = 0.46;
my = Sqrt(r^2 - ((mx-l)^2));
bx = (1.14*l);
cx = (1.6*l); 
by = r+dl;
L = l+r;
h = 20; //channel height, inches
n = 20; // no. of vertical layers

//Point(0) = {0,0,0};
Point(1) = {l,0,0};
Point(2) = {0,r,0};
Point(3) = {l,r,0};
Point(4) = {mx,my,0};
Point(5) = {L,0,0};
Point(6) = {0,r+dl,0};
Point(7) = {cx,by,0};
//Point(8) = {cx,by,0};
Point(9) = {L+dl,by,0};
Point(10) = {L+dl,0,0};

Line(1) = {6,2};
Line(2) = {7,3};
Line(3) = {9,4};
Line(4) = {10,5};

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

Transfinite Curve{5,6} = 6;
Transfinite Curve{7,8} = 3;
Transfinite Curve{9,10} = 5;
Transfinite Curve{1,2,3,4} = 4;

Extrude {0,0,h}{
        Surface{1,2,3};
        Layers{n};
        Recombine;
}
