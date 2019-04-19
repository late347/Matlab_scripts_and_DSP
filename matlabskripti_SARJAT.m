x=0 : 0.01: 0.5;
y=1./(1+x);
s1=1;
s2=s1-x;
s3=s2+x.^2;
s4= s3-x.^3;
s5=s4+x.^4;
s6=s5-x.^5

figure(1)
plot(x,y)
figure(2)
plot(x,y,x,s1)
legend('y=1/(1+x)','s1=1')
grid on
figure(3)
plot(x,y,x,s2)
legend('y=1/(1+x)','s2=1-x')
grid on
figure(4)
plot(x,y,x,s3)
legend('y=1/(1+x)','s3=1-x+x^2')
grid on
figure(5)
plot(x,y,x,s4)
legend('y=1/(1+x)','s4=1-x+x^2-x^3')
grid on
figure(6)
plot(x,y,x,s5)
legend('y=1/(1+x)','s5=1-x+x^2-x^3+x^4')
grid on
figure(7)
plot(x,y,x,s6)
legend('y=1/(1+x)','s6=1-x+x^2-x^3+x^4-x^5')
grid on