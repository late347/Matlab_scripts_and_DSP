%IIR filters, elliptic highpass filter
%exercise 3
%works with real matlab


Fp = 1000; %pass freq edge
Fs = 600; %stop freq edge
ap=1; %alphapass ripple
as=40; %alphastop ripple
Ft=4000; %samplerate
Fnyq=Ft/2; %nyqist freq

fpass = Fp / Fnyq; %according to matlab help cheby1ord 
%we simply calculate 
% edgefreqs / nyquist
fstop = Fs / Fnyq;

[n, wp] = ellipord(fpass, fstop, ap, as ); %it will be elliptic highpass
%because fpass and fstop relationship
[b,a]= ellip(n, ap, as, wp, 'high');

figure(1) 
freqz(b,a) %plot frequency response

figure(2)
freqz(b,a,512,Ft) %plot magnitude and regular freq
%comments about elliptic highpass
% it is about equally effective filter than cheby2 in my opinion because
% it's still weakening of 40db roughly speaking at the worst weakening
% value for decibels (attenuation)

[z0,p0,k0]= ellip(n, ap, as ,wp, 'high');
[sos0] = zp2sos(z0,p0,k0);
fvtool(sos0) %same plot with different style

figure(4)
freqz(sos0) %same plot with different style

