// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_worldcolor(){
	var myhue = irandom_range(0,359)
	var mysat = random_range(.5,1)
	if(myhue>200)and(myhue<270)
	{
		mysat = random_range(.3,.6)
	}
	var color = hsv_to_rgb(myhue,mysat,1)
	global.green=[color[0],color[1],color[2]]
	var color = hsv_to_rgb((myhue+180)mod 360,mysat,1)
	global.enemycolor=[color[0],color[1],color[2]]
	color = hsv_to_rgb(irandom_range(0,359),random_range(0,1),random_range(.45,.55))
	global.red=[color[0],color[1],color[2]]
	color = hsv_to_rgb(irandom_range(140,275),random_range(.5,1),random_range(.25,.3))
	global.blue=[color[0],color[1],color[2]]
}