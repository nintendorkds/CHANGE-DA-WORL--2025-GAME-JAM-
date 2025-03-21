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
//loading room file
ini_open("options.ini")
hiscore = ini_read_real("ROOMSAVES", room_get_name(myroom), 0);
ini_close()