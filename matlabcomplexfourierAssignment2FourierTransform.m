syms t w
f = 2 * exp(-3*t)*heaviside(t);
F = fourier(f)
w = -10:0.01:10;
F = subs(F);
figure(1)
plot(w, abs(F))
figure(2)
plot(w, angle(F))