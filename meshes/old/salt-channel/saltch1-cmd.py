brick x 0.8 y 0.4 z 63
create Cylinder height 63 radius 0.2
section volume 2  with xplane offset 0 normal
move Volume 2 x 0.4 include_merged
Volume 2  copy reflect x group_results
unite volume 1 2 3
volume 1 copy scale x 0.8 y 0.7 z 1 nomesh

intersect volume 1 4 keep 
subtract volume 4 from volume 1

surface 26 size 0.05
mesh surface 26

volume 5 redistribute nodes off 
volume 5 scheme Sweep  source surface 26   target surface 27  sweep transform least squares 
volume 5 autosmooth target on  fixed imprints off  smart smooth off 
mesh volume 5

surface 34  size 0.02
mesh surface 34
volume 1 redistribute nodes off 
volume 1 scheme Sweep  source surface 34   target surface 35  sweep transform least squares 
volume 1 autosmooth target on  fixed imprints off  smart smooth off 
mesh volume 1

block 100 add volume 1 5
block 100 element type hex27

set exodus netcdf4 off
set large exodus file on
export mesh "~/sneks4me/meshes/salt-channel/salt-channel-scaled.exo"  dimension 3  overwrite 
