if(global.stars>0)and(global.desert=0)and(instance_exists(Player))
{
	if(timer = 0)//mod (240-(global.stars*2))
	{
		var walllayer = layer_tilemap_get_id("Tiles_1")
		var chosenenemy = choose(EnemyCrab,EnemyParrotfish,EnemyJellyfish)
		mask_index=object_get_mask(chosenenemy)
		x=(irandom_range(1,18)*64)+32
		y=(irandom_range(1,9)*64)+32
		while place_meeting(x,y,walllayer) or place_meeting(x,y,BaseEnemy) or place_meeting(x,y,star) or place_meeting(x,y,SpawningEnemy) or place_meeting(x,y,Player)
		{
			x=(irandom_range(1,18)*64)+32
			y=(irandom_range(1,9)*64)+32
		}
		instance_create_depth(x,y,depth,SpawningEnemy,{mefr:chosenenemy})
	}
	timer+=1
}