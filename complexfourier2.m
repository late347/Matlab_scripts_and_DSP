syms t k
T = 50;
w = 2 * pi /T;
f = heaviside(t +0.5) - heaviside(t -0.5)
k= -100:100;
ck = 1/T * int(f* exp(-i*k*w*t),t,-T/2,T/2)
c0 = 1/T *int(f,t,-T/2,T/2)
ck = subs(ck);
stem(k,abs(ck))
hold on
k=0;
c0=subs(c0);
stem(k,c0)