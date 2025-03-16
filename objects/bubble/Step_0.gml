y+=yvel
timer+=1
x+=(sin(timer/8)*2)+xvel
xvel*=.95
yvel=clamp(yvel-.2,-4.5,4.5)
if(y<-16){instance_destroy()}