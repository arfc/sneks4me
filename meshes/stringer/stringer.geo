SetFactory("OpenCASCADE");

l1 = 0.4 ;
l2 = 1.0 ;
r = 0.2 ;
pi = 22.0/7.0 ;
pib2 = pi/2.0 ;
th = 2; //tip height in inches

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
Point(14)={0,0,th};

Line(1) = {1,2};
Circle(2) = {2,3,4};
Line(3) = {4,5};
Line(4) = {5,6};
Circle(5) = {6,7,8};
Line(6) = {8,9};
Line(7) = {0,1};
Line(8) = {9,0};
Line(9) = {14,1};
Line(10) = {14,5};
Line(11) = {14,9};
Line(12) = {14,0};

Line Loop(1) = {1,2,3,4,5,6,7,8};
Plane Surface(1) = {1};

Line Loop(2) = {1,2,3,-10,9};
Plane Surface(2) = {2};

Line Loop(3) = {4,5,6,-11,10};
Plane Surface(3) = {3};

Line Loop(4) = {11,8,-12};
Plane Surface(4) = {4};

Surface Loop(1) = {1,2,3,4};
Volume(1) = {1};
o[] = Symmetry {1,0,0,0}{Duplicata{Volume{1};} };
o2[] = Symmetry {0,1,0,0}{Duplicata{Volume{1};} };
o3[] = Symmetry {0,1,0,0}{Duplicata{Volume{o[0]};} }

/*
o[] = Symmetry {1,0,0,0}{Duplicata{Surface{1,2,3,4};} };
o2[] = Symmetry {0,1,0,0}{Duplicata{Surface{1,2,3,4};} };
o3[] = Symmetry {0,1,0,0}{Duplicata{Surface{o[0],o[1],o[2],o[3]};} };
Recombine Surface {1,2,3,4,o[0],o[1],o[2],o[3],o2[0],o2[1],o2[2],o2[3],o3[0],o3[1],o3[2],o3[3]};
/*
Line(18)={14,5};
Line(19)={14,84};
Line(27)={14,266};
Line(28)={14,175};

Line Loop(200)={18,15,14,6,-30,-39,-40,-19};
Plane Surface(200)={200};*/
