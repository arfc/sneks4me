brick x 0.8 y 0.4 z 63
create Cylinder height 63 radius 0.2
section volume 2  with xplane offset 0 normal
move Volume 2 x 0.4 include_merged
Volume 2  copy reflect x group_results
unite volume 1 2 3
volume 1 copy scale x 0.8 y 0.7 z 1 nomesh
surface 20  size 0.05
surface 20  size 0.05
mesh surface 20 
