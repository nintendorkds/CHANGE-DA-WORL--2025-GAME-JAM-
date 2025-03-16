// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hsv_to_rgb(_hue=0,_sat=1,_val=1){
	var _c = _val*_sat
	var _x = _c*(1-abs(((_hue/60)mod 2)-1))
	var _m = _val-_c
	
	var _r1 = _c
	var _g1 = _x
	var _b1 = 0
	
	if(_hue>=60)and(_hue<120)
	{
		_r1=_x
		_g1=_c
		_b1=0
	}
	if(_hue>=120)and(_hue<180)
	{
		_r1=0
		_g1=_c
		_b1=_x
	}
	if(_hue>=180)and(_hue<240)
	{
		_r1=0
		_g1=_x
		_b1=_c
	}
	if(_hue>=240)and(_hue<300)
	{
		_r1=_x
		_g1=0
		_b1=_c
	}
	if(_hue>=300)and(_hue<360)
	{
		_r1=_c
		_g1=0
		_b1=_x
	}
	
	return [_r1+_m,_g1+_m,_b1+_m]
}