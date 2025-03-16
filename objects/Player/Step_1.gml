walllayer = layer_tilemap_get_id("Tiles_1")

if(controller=0)
{
		right=keyboard_check(vk_right);
		left=keyboard_check(vk_left);
		up=keyboard_check(vk_up);
		down=keyboard_check(vk_down);
		//right stick
		rsright=keyboard_check(ord("D"));
		rsleft=keyboard_check(ord("A"));
		rsup=keyboard_check(ord("W"));
		rsdown=keyboard_check(ord("S"));
		
		primary=keyboard_check(ord("Z"));
		secondary=keyboard_check(vk_lshift);
		tertiary=keyboard_check(ord("V"));
		grab=keyboard_check(ord("C"));
		jump=keyboard_check(ord("X"));
		pocket1=keyboard_check(vk_lcontrol);
		
		escape=keyboard_check(vk_escape);
		start=keyboard_check(vk_enter);
}	
else
{
	left = gamepad_button_check(controller-1, gp_padl);
	right = gamepad_button_check(controller-1, gp_padr);
	up = gamepad_button_check(controller-1, gp_padu);
	down = gamepad_button_check(controller-1, gp_padd);
	if(abs(gamepad_axis_value(controller-1,gp_axislh))) > deadzone
	{
		left = abs(min(gamepad_axis_value(controller-1,gp_axislh),0));
		right = max(gamepad_axis_value(controller-1,gp_axislh),0);
	}
	if(abs(gamepad_axis_value(controller-1,gp_axislv))) > deadzone*2
	{
		up = abs(min(gamepad_axis_value(controller-1,gp_axislv),0));
		down = max(gamepad_axis_value(controller-1,gp_axislv),0);
	}
	//right stick
	if(abs(gamepad_axis_value(controller-1,gp_axisrh))) > deadzone
	{
		rsleft = abs(min(gamepad_axis_value(controller-1,gp_axisrh),0));
		rsright = max(gamepad_axis_value(controller-1,gp_axisrh),0);
	}
	else
	{
		rsleft=0
		rsright=0
	}
		
	if(abs(gamepad_axis_value(controller-1,gp_axisrv))) > deadzone
	{
		rsup = abs(min(gamepad_axis_value(controller-1,gp_axisrv),0));
		rsdown = max(gamepad_axis_value(controller-1,gp_axisrv),0);
	}
	else
	{
		rsup=0
		rsdown=0
	}
		
	grab=gamepad_button_check(controller-1, gp_face3);
	secondary=gamepad_button_check(controller-1, gp_face4);
	tertiary=gamepad_button_check(controller-1, gp_face2);
	jump=gamepad_button_check(controller-1, gp_face1);
	escape=gamepad_button_check(controller-1, gp_select);
	start=gamepad_button_check(controller-1, gp_start);
	grab=gamepad_button_check(controller-1, gp_shoulderrb)or gamepad_button_check(controller-1, gp_shoulderr)
	pocket1=gamepad_button_check(controller-1, gp_shoulderlb)or gamepad_button_check(controller-1, gp_shoulderl)

}

xvel+=(right-left)*walkspeed

if(anim=0)and(coyote)and(right-left = 0){xvel*=.9}

//gravity and coyote yo
if(place_meeting(x,y+2,walllayer)=0)
{
	yvel+=grav
	if(coyote>0){coyote-=1}
}
else
{
	if(coyote!=6)
	{
		jumps=3
		instance_create_depth(x,y,depth+1,particle,{sprite_index:jumpeffectspr,red:global.red,green:global.green,blue:global.blue})
		yvel=0
		coyote=6
	}
}

//jumping
if(jump)and(jumppressed=0)
{
	jumppressed=1
	jumpbuffer=10
}
if(jump=0)and(jumppressed)
{
	jumppressed=0
}
//actually jumps here
if(jumpbuffer>0)
{
	jumpbuffer-=1
	if(coyote>0)//normal jump
	{
		instance_create_depth(x,y,depth+1,particle,{sprite_index:jumpeffectspr,red:global.red,green:global.green,blue:global.blue})
		instance_create_depth(x,y,depth,bubble,{xvel:-.5*xvel,yvel:-yvel})
		yvel=-14
		jumpbuffer=0
	}
	else
	{
		if(jumps>0)//double jump
		{
			instance_create_depth(x,y,depth+1,particle,{sprite_index:jumpeffectspr,red:global.red,green:global.green,blue:global.blue})
			yvel=-10
			jumpbuffer=0
			jumps-=1
		}
	}
}

//animations
if(anim=0)
{
	if(coyote>0)
	{
		if(right-left!=0){image_xscale=sign(right-left)}
		if(abs(xvel)>1)
		{
			image_speed=(xvel/6)*image_xscale
			sprite_index=StarwalkSpr
		}
		else
		{
			sprite_index=StaridleSpr
		}
	}
	else
	{
		sprite_index=StarairSpr
		if yvel<2
		{
			image_index=0
		}
		else
		{
			if yvel>5
			{
				image_index=2
			}
			else
			{
				image_index=1
			}
		}
	}
}

update_physics(5)