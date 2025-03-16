//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

uniform vec4 redcolor;
uniform vec4 greencolor;
uniform vec4 bluecolor;

void main()
{
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	float red = texture2D(gm_BaseTexture, v_vTexcoord).r;
	float blue = texture2D(gm_BaseTexture, v_vTexcoord).b;
	float green = texture2D(gm_BaseTexture, v_vTexcoord).g;
	float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	
	if(red > green)
	{
			///set red to
			gl_FragColor = vec4(redcolor);
	}
	else
	{
		if(green > blue)
		{
			///set green to
			gl_FragColor = vec4(greencolor);
		}
		else
		{
			if(blue > red)
			{
				///set blue to
				gl_FragColor = vec4(bluecolor);
			}
			else
			{
				gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
			}
		}
	}
}
