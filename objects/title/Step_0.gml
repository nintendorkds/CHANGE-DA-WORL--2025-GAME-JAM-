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
		instance_create_depth(x,y,depth,Player,{controller:contnum})
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
			instance_create_depth(x,y,depth,Player,{controller:contnum})
		}
	}
	contnum+=1
}