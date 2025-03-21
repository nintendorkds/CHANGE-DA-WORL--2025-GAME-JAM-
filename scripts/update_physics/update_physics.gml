// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_physics(_bounces=0,_playssound=0,_yvelfric=0,stepprecision=1){
	xvel*=fric;
	if(_yvelfric){yvel*=_yvelfric;}
	
	if(layer_exists("Tiles_1"))
	{
		walllayer = layer_tilemap_get_id("Tiles_1")
	}
	else
	{
		exit;
	}
	
	//bounces code
	var startxvel = xvel
	
	var maxEdgeTolerance=24
	
	if (place_meeting(x+xvel,y,walllayer))
	{
		var yoff = 1
		var foundgap = false
		
		if(abs(xvel)>abs(yvel))
		{
			while(yoff <= maxEdgeTolerance) {
		        if(!place_meeting(x + xvel, y + yoff, walllayer)) {
		            y += yoff; //found a gap below edge
		            foundgap = true;
		            break;
		        } else if(!place_meeting(x + xvel, y - yoff, walllayer)) {
		            y -= yoff; //found a gap above edge
		            foundgap = true;
		            break;
		        } else {
		            yoff+=1; //no gap, increase the offset by 1
		        }
		    }
	    }
		
		if(!foundgap)
		{
			while(!place_meeting(x+sign(xvel)*stepprecision,y,walllayer))
			{
				x = x + sign(xvel)*stepprecision;
			}
			xvel = 0;
			if(_bounces>0)and(abs(startxvel)>_bounces){xvel=-startxvel;hitwall=1}
		}
	}
	
	x=xvel+x;

	if (place_meeting(x,y+yvel,walllayer))
	{
		var xoff = 1
		var foundgap = false
		if(yvel>0){maxEdgeTolerance=0} // keeps player from slipping off platforms
		
		if(abs(xvel)<abs(yvel))
		{
			while(xoff <= maxEdgeTolerance) {
		        if(!place_meeting(x + xoff, y + yvel, walllayer)) {
		            x += xoff; //found a gap below edge
		            foundgap = true;
		            break;
		        } else if(!place_meeting(x - xoff, y + yvel, walllayer)) {
		            x -= xoff; //found a gap above edge
		            foundgap = true;
		            break;
		        } else {
		            xoff+=1; //no gap, increase the offset by 1
		        }
		    }
	    }
		
		if(!foundgap)
		{
			while(!place_meeting(x,y+sign(yvel)*stepprecision,walllayer))
			{
				y = y + sign(yvel)*stepprecision;
			}
			yvel = 0;
		}
	}
	
	if(hitwall)
	{
		play_sound(soundbump,.2)
		instance_create_depth(x+(sign(startxvel)*24),y,depth-1,particle,{image_xscale:choose(-1,1)})
		instance_create_depth(x+(sign(startxvel)*24),y,depth-1,bubble,{xvel:(startxvel/8)+random_range(-6,6),yvel:yvel+random_range(-6,6)})
	}

	y+=yvel
	
	move_wrap(1,1,0)
}