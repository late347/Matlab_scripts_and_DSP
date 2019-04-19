%matlab script session2
% scripts for 2.4; 2.5; 2.6
% SSS = 638

% 2.4 difference equation
%original difference eq == results from 2.4 exercise interpret the block diagram
% y[n] = -0.638y[n-1] + 0.4y[n-2] = x[n] + 2x[n-1] + x[n-2]

pkg load signal;
%2.5 coefficient vectors
a=[1,-0.638,0.4] %coeficients for Y(z)
b=[1,2,1] %coefficients for X(z)

%2.6 argand diagram
zplane(a,b)
%interpreted results, not stable system
%because, poles are at the boundary of the unit circle in Argand diagram
%therefore, poles are not inside unit circle => unstable system


