var tempr = [global.red[2],global.red[0],global.red[1]]
var tempg = [global.green[2],global.green[0],global.green[1]]
var tempb = [global.blue[2],global.blue[0],global.blue[1]]

instance_create_depth(x+16,y+16,depth-999,particle,{red:tempr,blue:tempb,green:tempg,sprite_index:stargetspr})

var walllayer = layer_tilemap_get_id("Tiles_1")

var avoidme = instance_nearest(x,y,Player)

var restrainingorder = 400

while(place_meeting(x,y,walllayer) or (abs(x-avoidme.x)mod (room_width/2))<restrainingorder)
{
	x=irandom_range(1,38)*32
	y=irandom_range(1,21)*32
}


if 1//(global.score mod 7 = 6)
{
	var color = hsv_to_rgb(irandom_range(0,359),random_range(.5,1),1)
	global.green=[color[0],color[1],color[2]]
	color = hsv_to_rgb(irandom_range(0,359),random_range(0,1),random_range(.6,.7))
	global.red=[color[0],color[1],color[2]]
	color = hsv_to_rgb(irandom_range(140,275),random_range(.5,1),random_range(.25,.3))
	global.blue=[color[0],color[1],color[2]]
}
global.score+=1
other.jumps=other.maxjumps