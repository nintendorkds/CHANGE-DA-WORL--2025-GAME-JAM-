//shader setup
var shader = rgb_replacement
upixelH = shader_get_uniform(shader, "pixelH");
upixelW = shader_get_uniform(shader, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));
//sets red color into array
uniformr = shader_get_uniform(shader, "redcolor")
uniformg = shader_get_uniform(shader, "greencolor")
uniformb = shader_get_uniform(shader, "bluecolor")
var filename = string(myroom)+".sav"
if(file_exists(filename))
{
	var file = file_text_open_read(filename)
	hiscore = file_text_read_real(file)
	file_text_close(file)
}
else
{
	var file = file_text_open_write(filename)
	file_text_write_real(file,0)
	file_text_close(file)
}