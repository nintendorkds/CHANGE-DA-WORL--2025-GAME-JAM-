timer+=1
if(timer>=120)
{
	var tempxscale = image_xscale
	var tempwhite = white
	instance_change(mefr,1)
	image_xscale=tempxscale
	white=tempwhite
}