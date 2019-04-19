%script for 2.7 and 2.8
pkg load signal;

a=[1,0,0,0] %y coefficients for Y(z)
b=[1/8, 3/8, 3/8, 1/8] %x coefficients for X(Z)

zplane(a,b)



%2.8
%interpreted results Argand diagram
% it was not stable because poles are not inside unit circle