//web version only
//window_set_size(browser_width, browser_height );
var dontmakeme = []
var contnum = 0
with(Player)
{
	array_push(dontmakeme,controller)
}

//checks keyboards yaeahsoidyuhoaiuhoaiuhdpioujhapsd
if(keyboard_check(vk_anykey))
{
	if(array_contains(dontmakeme,contnum)=0)
	{
		if(instance_exists(Player))
		{
			instance_create_depth(x,y,depth,Player,{controller:contnum,green:hsv_to_rgb(irandom_range(0,360),random_range(0,1),random_range(0,1)),red:hsv_to_rgb(irandom_range(0,360),random_range(0,1),random_range(0,1)),blue:hsv_to_rgb(irandom_range(0,360),random_range(0,1),random_range(0,1))})
		}
		else
		{
			instance_create_depth(x,y,depth,Player,{controller:contnum})
		}
	}
}

contnum+=1

//checks controleder :) jdnhfolicuhsaj dfpiudcuu

repeat 8
{
	if(gamepad_button_check(contnum-1,gp_start))or(gamepad_button_check(contnum-1,gp_face1))or(gamepad_button_check(contnum-1,gp_face2))or(gamepad_button_check(contnum-1,gp_face3))or(gamepad_button_check(contnum-1,gp_face4))
	{
		if(array_contains(dontmakeme,contnum)=0)
		{
			if(instance_exists(Player))
			{
				instance_create_depth(x,y,depth,Player,{controller:contnum,green:hsv_to_rgb(irandom_range(0,360),random_range(0,1),random_range(0,1)),red:hsv_to_rgb(irandom_range(0,360),random_range(0,1),random_range(0,1)),blue:hsv_to_rgb(irandom_range(0,360),random_range(0,1),random_range(0,1))})
			}
			else
			{
				instance_create_depth(x,y,depth,Player,{controller:contnum})
			}
		}
	}
	contnum+=1
}