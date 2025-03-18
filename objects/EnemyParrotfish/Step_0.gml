if(global.desert){exit}
var walllayer = layer_tilemap_get_id("Tiles_1")
if place_meeting(x+image_xscale,y,walllayer)
{
	image_xscale*=-1
}
x+=image_xscale*2