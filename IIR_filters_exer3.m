%IIR filters, chebyshev filter, probably
%it will be highpass because Fs is lower freq
%than the Fp (which is higher one), so that as freq
%decreases, then at that point it will stop frequencies 

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

[n, wp] = cheb1ord(fpass, fstop, ap, as);  %it will be highpass because of fpass and fstop
[b,a]= cheby1(n,ap,wp,'high'); %gets the coefficients for cheby highpass

figure(1) %plots cheby1 filter
freqz(b,a) %plot frequencyresponse

figure(2) %plots cheby1 filter
freqz(b,a,512,Ft) %plots cheby1 with magnitude and herz
%in my opinion cheby1 higphass is not that bad of a filter
% considering the decibel scale, we see from figure(2)
% such that there is transition band from 1khz to 800hz
% and at 800hz the weakening of the signal is at -25dB level which is less
% than 1% of original 


%cheby2 filter, it is highpass also probably
[n0, ws0] = cheb2ord(fpass, fstop, ap, as); %gets cheby2filter
[b0, a0] = cheby2(n0, as, ws0, 'high');

figure(3)
freqz(b0,a0)

figure(4)
freqz(b0,a0,512,Ft) 
%comments about cheby2 filter
% it looks like at 600hz there is stopband edge and below that
% there is about  weakening of 40dB, so that signal is quite weak with 
% value of 0.1 promille for power ratio
% it looks like cheby2 is the better filter than cheby1

[z0,p0,k0] = cheby2(n0, as, ws0, 'high');
[sos0]= zp2sos(z0, p0, k0);

figure(5)
freqz(sos0)

fvtool(sos0)
%comments about cheby2 filter
% it looks like this time the z,p,k- style of plotting the sos looks
% identical to the a and b coefficients style (which to my mind should be expected)
% this is seen with strong correspondence between 
% (figure3 and figure4) and
% (figure5 and figure6)
% otherwise, there is about  weakening of 40dB at 600hz and below, so that signal is quite weak with 
% value of 0.1 promille for power ratio, and 1 percent for amplitude ratio
% compared to original signal
% it looks like cheby2 is the better filter than cheby1



