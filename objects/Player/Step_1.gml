var walllayer = layer_tilemap_get_id("Tiles_1")
mask_index=StaridleSpr
//iframes
if(iframes>0)
{
	if iframes = 115
	{
		var lol = layer_background_get_id("Background")
		layer_background_blend(lol,c_black)
	}
	iframes-=1
}
//controller stuff
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
		
	primary=gamepad_button_check(controller-1, gp_face3)or gamepad_button_check(controller-1, gp_face4);
	jump=gamepad_button_check(controller-1, gp_face1)or gamepad_button_check(controller-1, gp_face2)
	escape=gamepad_button_check(controller-1, gp_select);
	start=gamepad_button_check(controller-1, gp_start);
	grab=gamepad_button_check(controller-1, gp_shoulderrb)or gamepad_button_check(controller-1, gp_shoulderr)
	pocket1=gamepad_button_check(controller-1, gp_shoulderlb)or gamepad_button_check(controller-1, gp_shoulderl)

}

if(start)
{
	if(startpressed=0)
	{
		startpressed=1
		instance_deactivate_all(0)
		instance_create_depth(x,y,depth,pauser)
	}
}
else
{
	startpressed=0
}

if(anim=0)
{
	xvel+=(right-left)*walkspeed
}

if(anim=0)and(coyote)and(right-left = 0){xvel*=.9}

//gravity and coyote yo
if(place_meeting(x,y+1,walllayer)=0)
{
	if(coyote>0){coyote-=1}
	yvel+=grav
	comboleeway=3
}
else
{
	if(lavacombo>0)and(anim!=2)
	{
		if(comboleeway>0)
		{
			comboleeway-=1
		}
		else
		{
			if(lavacombo>1)
			{
				if(lavacombo=64)
				{
					instance_create_depth(x,y-16,depth+1,scorenumbers,{value:"YEAH!"})
					play_sound(soundcombocomplete,.1)
					play_sound(soundapplause,.1)
				}
				else
				{
					instance_create_depth(x,y-16,depth+1,scorenumbers,{value:"oh..."})
					play_sound(soundcomboend,.2)
				}
			}
			lavacombo=0
		}
	}
	if(jumps!=maxjumps)
	{
		jumps=maxjumps
		flash=6
	}
	if(coyote!=6)
	{
		instance_create_depth(x,y,depth+1,particle,{sprite_index:jumpeffectspr,red:global.red,green:global.green,blue:global.blue})
		yvel=0
		coyote=6
	}
}

//jumping
if(jump)and(jumppressed=0)
{
	jumppressed=1
	jumpbuffer=6
}
if(jump=0)and(jumppressed)
{
	jumppressed=0
}
//actually jumps here
if(jumpbuffer>0)
{
	jumpbuffer-=1
	if(anim!=2)
	{
		if(anim=1){anim=0; if charge<chargethresh{charge=0}}
		if(coyote>0)//normal jump
		{
			play_sound(soundjump,.15)
			instance_create_depth(x,y,depth+1,particle,{sprite_index:jumpeffectspr,red:global.red,green:global.green,blue:global.blue})
			instance_create_depth(x,y,depth,bubble,{xvel:-.5*xvel,yvel:-yvel})
			yvel=-14
			jumpbuffer=0
			jumping=1
		}
		else
		{
			if(jumps>0)and(place_meeting(x,y+yvel,walllayer)=0)and(anim=0)//double jump
			{
				play_sound(soundjump,.15)
				if(right-left!=0){image_xscale=sign(right-left)}
				instance_create_depth(x,y,depth+1,particle,{sprite_index:jumpeffectspr,red:global.red,green:global.green,blue:global.blue})
				yvel=-12.5
				jumpbuffer=0
				jumps-=1
				jumping=1
			}
		}
	}
}

if(jumping)
{
	if(jump=0)
	{
		yvel*=.6
	}
	if(yvel>0)
	{
		jumping=0
	}
}


//kicking
if(primary)and(kickpressed=0)
{
	kickpressed=1
	kickbuffer=10
}
if(primary=0)and(kickpressed)
{
	kickpressed=0
}

if(kickbuffer>0)
{
	kickbuffer-=1
	if(anim=0)
	{
		anim=1
		kickbuffer=0
		image_index=0
		image_speed=0
	}
}

timer+=1
hitwall=0
yvel=clamp(yvel,-32,32)
update_physics(5)

if(charge>=chargethresh){charge+=1}

//animations
switch anim
{
	//normal animations
	case 0:
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
				if(down)
				{
					sprite_index=StarduckSpr
				}
				else
				{
					if(up)
					{
						sprite_index=StarlookupSpr
					}
					else
					{
						sprite_index=StaridleSpr
					}
				}
			}
		}
		else
		{
			sprite_index=StarairSpr
			if yvel>1
			{
				image_index=2
			}
			else
			{
				if yvel<-3
				{
					image_index=0
				}
				else
				{
					image_index=1
				}
			}
		}
	break;
	//kick animation
	case 1:
		sprite_index=StarkickSpr
		if(image_index=0)
		{
			if(charge<chargethresh){charge+=1}
			if(charge mod 4 = 1 and charge>=chargethresh)
			{
				tempr=[red[0]/2,red[1]/2,red[2]/2]
				tempg=[green[0]/2,green[1]/2,green[2]/2]
				tempb=[blue[0]/2,blue[1]/2,blue[2]/2]
				instance_create_depth(x,y,depth+1,afterimage,{red:tempr,green:tempg,blue:tempb,image_index,sprite_index,image_xscale})
			}
			if(charge=chargethresh)
			{
				play_sound(soundcharged,.1,1,.7)
			}
			if(yvel>0){yvel*=.85}
			if(right-left!=0){image_xscale=sign(right-left)}
			if(primary=0)
			{
				image_index=1
				image_speed=1
				
			}
		}
		else
		{
			yvel=0
		}
		
		if(image_index>2)
		{
			if(jumps>=1)or(coyote=6)
			{
				if(coyote<6)
				{
					coyote=0
					jumps-=1
				}
				play_sound(soundkick,.15)
				timer=0
				anim=2
				kickangle=point_direction(0,0,image_xscale,clamp(down-up,-.6,.6))
				instance_create_depth(x,y,depth,bubble,{xvel:(image_xscale*-6)+irandom_range(-3,3),yvel:(up-down)*irandom_range(4,20)})
			}
			else
			{
				xvel=image_xscale*6
				anim=0
				charge=0
			}
		}
	break;
	//kick followthrough
	case 2:
		var tempspeede = 12
		if(charge>=chargethresh){tempspeede+=5}
		if(image_index>4)
		{
			image_speed=.6
		}
		if(image_index>6)or(hitwall)
		{
			anim=0
			charge=0
		}
		else
		{
			if(timer mod 4 = 1)
			{
				instance_create_depth(x,y,depth+1,afterimage,{red,green,blue,image_index:floor(image_index),sprite_index,image_xscale})
			}
			xvel=lengthdir_x(tempspeede,kickangle)
			yvel=lengthdir_y(tempspeede,kickangle)
		}
	break;
}

if(bbox_top<-32){yvel=0;y=0}
mask_index=PlayerEnemyCollisionMask