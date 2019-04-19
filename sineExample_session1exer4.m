% session1exer4

n=[-4:14]
sig_freq = 638
sample_rate = 1200
amplitude = 0.4
s1= amplitude* sin(2*pi*sig_freq*n/sample_rate)
stem(s1)