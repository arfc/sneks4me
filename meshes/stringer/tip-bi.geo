//SetFactory("OpenCASCADE");
SetFactory("Built-in");
x1 = 0.4 ;
x2 = 1.0 ;
r = 0.2 ;
pi = 22.0/7.0 ;
pib2 = pi/2.0 ;
th = 2; //tip height in inches
fl = x2*2; // surrounding fluid length in inches
fh = 2.5; // surrounding fluid height in inches


p0 = newp; Point(p0) = {0,0,0} ;
p1 = newp; Point(p1) = {0,x2-r,0};
p2 = newp; Point(p2) = {x1,x2-r,0};
p3 = newp; Point(p3) = {x1,x2,0};
p4 = newp; Point(p4) = {x1+r,x2,0};
p5 = newp; Point(p5) = {x2,x2,0};
p6 = newp; Point(p6) = {x2,x1+r,0};
p7 = newp; Point(p7) = {x2,x1,0};
p8 = newp; Point(p8) = {x2-r,x1,0};
p9 = newp; Point(p9) = {x2-r,0,0};
p10 = newp; Point(p10) = {x1,0,0};
p11 = newp; Point(p11) = {0,x1,0};
p12 = newp; Point(p12) = {x1,x1,0};
p13 = newp; Point(p13) = {x2-r,x2-r,0};
p14 = newp; Point(p14) = {0,0,th};

l1 = newl; Line(l1) = {p1,p2};
l2 = newl; Circle(l2) = {p2,p3,p4};
l3 = newl; Line(l3) = {p4,p5};
l4 = newl; Line(l4) = {p5,p6};
l5 = newl; Circle(l5) = {p6,p7,p8};
l6 = newl; Line(l6) = {p8,p9};
l7 = newl; Line(l7) = {p0,p1};
l8 = newl; Line(l8) = {p9,p0};
l9 = newl; Line(l9) = {p14,p1};
l10 = newl; Line(l10) = {p14,p5};
l11 = newl; Line(l11) = {p14,p9};
l12 = newl; Line(l12) = {p14,p0};

ll1 = newll; Line Loop(ll1) = {l1,l2,l3,l4,l5,l6,l7,l8};
s1 = news; Plane Surface(s1) = {ll1};

ll2 = newll; Line Loop(ll2) = {l1,l2,l3,-l10,l9};
s2 = news; Plane Surface(s2) = {ll2};

ll3 = newll; Line Loop(ll3) = {l4,l5,l6,-l11,l10};
s3 = news; Plane Surface(s3) = {ll3};

ll4 = newll; Line Loop(ll4) = {l11,l8,-l12};
s4 = news; Plane Surface(s4) = {ll4};

sl1 = newsl; Surface Loop(sl1) = {s1,s2,s3,s4};
v1 =  newv; Volume(v1) = {sl1};
o[] = Symmetry {1,0,0,0}{Duplicata{Volume{v1};} };
v2 = o[0];
o2[] = Symmetry {0,1,0,0}{Duplicata{Volume{v1};} };
v3 = o2[0];
o3[] = Symmetry {0,1,0,0}{Duplicata{Volume{v2};} };
v4 = o3[0];

// SetFactory("OpenCASCADE");
//v5 = newv; Box(v5) = {-1,-1,0, fl,fl,fh};
//v6 = newv;
// BooleanUnion(v6) = { Volume{v1}; }{ Volume{v2}; Delete; };
//BooleanDifference(v6) = { Volume{v5}; Delete; }{ Volume{v1}; Delete; };

