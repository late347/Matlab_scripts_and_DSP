x= -3.14 : 0.01: 3.14;
y=sin(x);
s1=x
s3=s1 - x.^3/factorial(3)
s5= s3 + x.^5/factorial(5)
s7= s5 - x.^7/factorial(7)
s9 = s7 + x.^9/factorial(9)
s11= s9 - x.^11/factorial(11)

figure(1)
plot(x,y)
figure(2)
plot(x,y,x,s1)
legend('y=sinx','s1=x')
grid on
figure(3)
plot(x,y,x,s3)
legend('y=1/((1+x/2)^(-4))','s2=1-x')
grid on
figure(4)
plot(x,y,x,s5)
legend('y=1/((1+x/2)^(-4))','s3=1-x+x^2')
grid on
figure(5)
plot(x,y,x,s7)
legend('y=1/((1+x/2)^(-4))','s4=1-x+x^2-x^3')
grid on
figure(6)
plot(x,y,x,s9)
legend('y=1/((1+x/2)^(-4))','s5=1-x+x^2-x^3+x^4')
grid on
figure(7)
plot(x,y,x,s11)
legend('y=1/((1+x/2)^(-4))','s6=1-x+x^2-x^3+x^4-x^5')
grid on