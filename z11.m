fs =  200;
fc =  20;
phi = 2*pi*fc/fs;
r = 0.6;
b = [1  0 -1];
a = [1 -2*r*cos(phi) r^2];
