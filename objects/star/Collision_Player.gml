var tempr = [global.red[2],global.red[0],global.red[1]]
var tempg = [global.green[2],global.green[0],global.green[1]]
var tempb = [global.blue[2],global.blue[0],global.blue[1]]

instance_create_depth(x,y,depth-999,particle,{red:tempr,blue:tempb,green:tempg,sprite_index:stargetspr})

var walllayer = layer_tilemap_get_id("Tiles_1")

var avoidme = instance_nearest(x,y,Player)

while(place_meeting(x,y,walllayer) or distance_to_point(avoidme.x,avoidme.y)<400)
{
	x=irandom_range(1,39)*32
	y=irandom_range(1,21)*32
}

global.score+=1
if(global.score mod 12 = 11)
{
	var color = hsv_to_rgb(irandom_range(0,359),random_range(0,1),random_range(.9,1))
	global.green=[color[0],color[1],color[2]]
	color = hsv_to_rgb(irandom_range(0,359),random_range(0,1),random_range(.4,.6))
	global.red=[color[0],color[1],color[2]]
	color = hsv_to_rgb(irandom_range(0,359),random_range(0,1),random_range(.15,.25))
	global.blue=[color[0],color[1],color[2]]
}