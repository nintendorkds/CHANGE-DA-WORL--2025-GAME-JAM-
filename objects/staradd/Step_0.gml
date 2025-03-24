x+=xvel
y+=yvel
var tox = 1280-32
var toy = 688
var dir = point_direction(x,y,tox,toy)
xvel+=lengthdir_x(1,dir)
yvel+=lengthdir_y(1,dir)

if(distance_to_point(tox,toy)<point_distance(0,0,xvel,yvel)){global.starhop=10;instance_destroy();}