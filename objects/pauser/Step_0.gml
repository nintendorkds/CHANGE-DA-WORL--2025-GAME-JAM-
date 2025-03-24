var pressed=0
var pressedselect=0
var pressedreset=0
var contnum=0
//checks keyboards yaeahsoidyuhoaiuhoaiuhdpioujhapsd
if(keyboard_check(vk_enter))
{
	pressed=1
}
if(keyboard_check(vk_escape))
{
	pressedselect=1
}
if(keyboard_check(ord("X"))and keyboard_check(ord("Z")))
{
	pressedreset=1
}

contnum+=1

//checks controleder :) jdnhfolicuhsaj dfpiudcuu

repeat 8
{
	if(gamepad_button_check(contnum-1,gp_start))
	{
		pressed=1
	}
	if(gamepad_button_check(contnum-1,gp_select))
	{
		pressedselect=1
	}
	if(gamepad_button_check(contnum-1,gp_face1)or gamepad_button_check(contnum-1,gp_face2))and(gamepad_button_check(contnum-1,gp_face3)or gamepad_button_check(contnum-1,gp_face4))
	{
		pressedreset=1
	}
	contnum+=1
}

if(startpressed)and(pressed=0)
{
	startpressed=0
}

if(startpressed=0)and(pressed)
{
	instance_activate_all()
	instance_destroy()
}

if(pressedselect)
{
	instance_activate_all()
	with(Player)
	{
		lavacombo=0
		anim=0
		charge=0
		xvel=0
		yvel=0
		jumppressed=1
		kickpressed=1
		men=3
	}
	room_goto(Title)
}
if(pressedreset)
{
	instance_activate_all()
	with(Player)
	{
		lavacombo=0
		anim=0
		charge=0
		xvel=0
		yvel=0
		jumppressed=1
		kickpressed=1
		men=3
	}
	room_restart()
}