syms t k
T=2*pi;
w=2*pi /T;
f=1-abs(t);
a0= 2/T * int(f,-pi,pi)
ak= 2/T* int(  f*cos(k*w*t),t, -pi,pi    )
bk= 2/T * int( f*sin(k*w*t), t, -pi,pi  )


k=1:6;
ak= subs(ak);
bk= subs(bk);
f_f= 0.5*a0 + sum(ak.*cos(k*w*t)) + sum(bk.*sin(k*w*t))
t= -5:0.005:5;
f_f= subs(f_f);
figure(1)
plot(t,f_f)
f= subs(f);
figure(2)
plot(t, f_f, t, f)
legend('f_f', 'f')
figure(3)
stem(k,ak)
axis([0 10 -3 3])