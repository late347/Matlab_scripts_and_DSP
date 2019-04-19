syms t w 
f = (heaviside(t+1) - heaviside(t-1)) * (1-abs(t)) ;
F=fourier(f)
F= simplify(F)
w=(-10:0.01:10)+eps;
F=subs(F);
figure(1)
plot(w,abs(F))
figure(2)
plot(w,angle(F))