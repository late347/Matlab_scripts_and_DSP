 v=[2,2,2.3,1.7,2,2;6,2.5,3,3,2.5,6]
 M=[1,0;0,-1]
 R=[0.53,-0.85;0.85,0.53]
 Y=[-1,0;0,1]
 v1=M*v
 v2=R*v
 v3=Y*v

 figure(1)
plot(v(1,:),v(2,:))
 axis([-10 10 -8 8])
figure(2)
 plot(v(1,:),v(2,:),v1(1,:),v1(2,:))
 axis([-10 10 -8 8])
figure(3)
plot(v(1,:),v(2,:),v2(1,:),v2(2,:),0,0,'+')
 axis([-10 10 -8 8])
 
 figure(4)
 plot(v(1,:),v(2,:),v3(1,:),v3(2,:)  )
 axis([-10 10 -8 8])