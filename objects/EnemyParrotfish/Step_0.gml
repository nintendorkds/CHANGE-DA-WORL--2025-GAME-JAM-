if(global.desert>0){exit}
var walllayer = layer_tilemap_get_id("Tiles_1")
var spode = 2
if(white)
{
	spode+=2
}

if place_meeting(x+(image_xscale*spode),y,walllayer)
{
	image_xscale*=-1
}
x+=image_xscale*spode