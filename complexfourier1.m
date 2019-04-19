syms t k
T = 0.1;
w = 2*pi/T;
f=50*t
k= -5:5;
ck=1/T*int( f*exp( -i*k*w*t ),t,0,0.02)
c0= 1/T * int(f,t,0,0.02)

ck=subs(ck);
stem(k,abs(ck))
hold on
k=0;
c0=subs(c0);
stem(k,c0)
figure(2)
k=-5:5;
stem(k,angle(ck))