// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_sound(_sound,_pitchvariance=0,_gain=.5,_setpitch=1){
	if(audio_is_playing(_sound)){audio_stop_sound(_sound)}
	audio_play_sound(_sound,0,0,_gain,0,random_range(_setpitch-_pitchvariance,_setpitch+_pitchvariance))
}