if(global.desert>0){exit}
var walllayer = layer_tilemap_get_id("Tiles_1")
if(place_meeting(x,y-(image_yscale*vel),walllayer))
{
	image_yscale*=-1
}
if(place_meeting(x+(image_xscale*vel),y,walllayer))
{
	image_xscale*=-1
}
x+=(image_xscale*vel)
y-=(image_yscale*vel)

if(vel<3.5)and(floor(image_index)=2)
{
	vel=3.5
}
vel*=.95