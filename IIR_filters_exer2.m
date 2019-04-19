%IIR filters, butterworth lowpass
%exercise 2
%works with real matlab


Fp = 1800; %pass freq edge
Fs = 2000; %stop freq edge
ap=0.1; %alphapass ripple
as=35; %alphastop ripple
Ft=12000; %samplerate
Fnyq=Ft/2; %nyqist freq
fpass=Fp/Fnyq;  %normalize to nyqist freq i.e. calculate percentage share (0.9 = 90%) of nyquist with the original freq
fstop=Fs/Fnyq;
[n,wn]=buttord(fpass,fstop,ap,as); %get order and wn


% [b,a]=butter(n,wn) %wrong type filter??? with octave style
% freqz(b,a) %creates a plot of a filter, but it is different type of
% butterworth filter compare to matlab style plot?
% maybe the sos-method of creating the filter causes differences?

[b,a] = butter(n,wn);
figure(1)
freqz(b,a) %for some reason this filter looks different than sos/zpk  style filter

fvtool(b,a) %for some reason this filter looks different than the sos/zpk  style filter
%NOTE, when multiple fvtool plots are made, those plots are inside their
%own tabs in the fvtool program

[z,p,k]=butter(n,wn); %with matlab style
[sos]=zp2sos(z,p,k); %embeds the gain in the sos directly, not recoommended according to matlab help, but
%matlab help example also shows embedding the gain directly into sos, sothat I just did it anyway...

%plot sos with freqz directly in real matlab, doesn't work in octave
fvtool(sos) %works only in real matlab
freqz(sos) %works only in real matlab



