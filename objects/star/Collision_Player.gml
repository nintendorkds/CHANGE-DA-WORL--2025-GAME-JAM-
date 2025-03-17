var tempr = [global.red[1],global.red[2],global.red[0]]
var tempg = [global.green[1],global.green[2],global.green[0]]
var tempb = [global.blue[1],global.blue[2],global.blue[0]]

instance_create_depth(x+16,y+16,depth-999,particle,{red:tempr,blue:tempb,green:tempg,sprite_index:stargetspr})

var walllayer = layer_tilemap_get_id("Tiles_1")

var avoidme = instance_nearest(x,y,Player)

var restrainingorder = 300

while place_meeting(x,y,walllayer) or (abs(x-avoidme.x)<restrainingorder or abs((x+(room_width/2))-avoidme.x)<restrainingorder)
{
	x=irandom_range(1,38)*32
	y=irandom_range(1,21)*32
}


if(global.score mod 5 = 4)
{
	generate_worldcolor()
}
global.score+=1
other.jumps=other.maxjumps
other.flash=6