function yp=dydt(t,y)
 yp=10*exp(-(t-2)*(t-2)/(2*.075^2))-.6*y;