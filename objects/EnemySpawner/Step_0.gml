if(global.score>0)and(global.desert=0)
{
	if(timer mod 240 = 0)
	{
		var walllayer = layer_tilemap_get_id("Tiles_1")
		var chosenenemy = choose(EnemyCrab,EnemyParrotfish,EnemyJellyfish)
		mask_index=object_get_mask(chosenenemy)
		x=(irandom_range(1,18)*64)+32
		y=(irandom_range(1,9)*64)+32
		while(place_meeting(x,y,walllayer))
		{
			x=(irandom_range(1,18)*64)+32
			y=(irandom_range(1,9)*64)+32
		}
		instance_create_depth(x,y,depth,SpawningEnemy,{mefr:chosenenemy})
	}
	timer+=1
}