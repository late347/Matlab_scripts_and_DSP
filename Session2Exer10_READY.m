%session 2.10 script

%generate sound sample from sine signal, sampled discrete signal
pkg load signal;

sample_rate = 22050 %samplerate
%use sampleAmount as "window" so you have 250samplecount= vector from 1_to_250
n = [1 : 250 ] %sample amounts from 1 to 250 == 250samplesAmount
amplitude = 0.25
sss = 139 %sss, Lauri's sss = 638, but it looks like sss= 139 looks much nicer plot
signal_freq = sss / 2

noise_amplitude = sss/800
noise = noise_amplitude*rand(1,250) %random noise signal, NOTE! if you want to use normal distribution random == randn
pure_signal = amplitude * sin(2 * pi * signal_freq * n/sample_rate)

signal= pure_signal + noise %add noise to the signal

figure(1)
stem(n, pure_signal) %plot pure_signal 

figure(2)
stem(n, signal) %plot distorted_signal with noise

diff_out = nan(250, 1) %create empty vector to store results from difference_equation
diff_out(1) = 1/8*signal(1) %NOTE! we must use the pre-conditions for the difference equation
diff_out(2) = 1/8*signal(2) + 3/8*signal(2-1)
diff_out(3) = 1/8*signal(3) + 3/8*signal(3-1) +3/8*signal(3-2)
for i = 4 : 250 %get the loop rolling forwards, to iterate the rest of the difference_output_values
  diff_out(i) = 1/8*signal(i) +3/8*signal(i-1) + 3/8*signal(i-2) +1/8*signal(i-3)
end


figure(3) %plot filtered distorted_signal
stem(n, diff_out)%plot final results (the output from difference equation, using noise_signal as the input sequence)

