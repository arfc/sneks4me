brick x 0.8 y 0.4 z 63
create Cylinder height 63 radius 0.2
section volume 2  with xplane offset 0 normal
move Volume 2 x 0.4 include_merged
Volume 2  copy reflect x group_results
unite volume 1 2 3
brick x 0.9 y 0.28 z 63
intersect volume 1 5 keep 
subtract volume 5 from volume 1

surface 30  size 0.5
mesh surface 30
volume 6 redistribute nodes off 
volume 6 scheme Sweep  source surface 30   target surface 31  sweep transform least squares 
volume 6 autosmooth target on  fixed imprints off  smart smooth off 
mesh volume 6

surface 40  size 0.02
mesh surface 40
volume 1 redistribute nodes off 
volume 1 scheme Sweep  source surface 40   target surface 41  sweep transform least squares 
volume 1 autosmooth target on  fixed imprints off  smart smooth off 
mesh volume 1
