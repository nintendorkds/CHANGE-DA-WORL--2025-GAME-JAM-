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

global.stars=0
global.desert=0
global.points=0
global.pointhop=0
global.starhop=0

green=Player.green
red=Player.red
blue=Player.blue

randomize()

quip = choose(
	"YOU DIED I THINK",
	"FISHPASTE!",
	"HE'S DEAD",
	"TOO BAD SO SAD",
	"NEED FLOATIES?",
	"THE WORLD REMAINED UNCHANGED",
	"BARNACLES!",
	"ERM... GULP",
	"NAHT GOOD!",
	"GONE BUT NOT FORGOTTEN",
	"BEACHED",
	"YOU KILLED HIM",
	"THE HOOKS!",
	"STUPID WHALE!",
	"FISH FOOD",
	"YOU'RE CHUM, CHUM"
)

//sets global colors for tilemap

var lol = layer_background_get_id("Background")
layer_background_blend(lol,c_black)

generate_worldcolor()

var tempx= x
var tempy= y
var walllayer = layer_tilemap_get_id("Tiles_1")
spawnenemy(walllayer)
x = tempx
y = tempy