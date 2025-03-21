var grav=.09
squishvel*=.85
if(abs(image_xscale-1)<grav)and(abs(squishvel)<grav){squishvel=0;image_xscale=1;image_yscale=1;}
if(image_xscale>1){squishvel-=grav}
if(image_xscale<1){squishvel+=grav}

image_xscale+=squishvel
image_yscale=clamp(image_yscale-squishvel,.25,99)