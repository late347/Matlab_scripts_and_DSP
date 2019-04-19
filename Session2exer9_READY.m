% script
% session 2 exer 9
%generate sound sample from sine signal, sampled discrete signal

pkg load signal;

sample_rate = 22050 %samplerate
%use sampleAmount as "window" so you have 250samplecount= vector from 1_to_250
n = [1 : 250 ] %sample amounts from 1 to 250 == 250samplesAmount
amplitude = 0.25
sss = 638 %sss
signal_freq = sss / 2

noise = (sss/800)*rand(1,250) %random noise signal

s1= amplitude * sin(2 * pi * signal_freq * n/sample_rate) + noise
stem(s1)

%diff_out = nan(250, 1)
%diff_out(1) = 0



