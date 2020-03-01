syms x
f1=exp(2*x+1);

t11=taylor(f1,x,1,'Order',2);
t12=taylor(f1,x,1,'Order',3);

figure(1)
hold on
fplot(t11,'--g',[0,2])
fplot(t12,'--r',[0,2])
fplot(f1,'ob',[0,2])
hold off

f2=x^2-x;
t21=taylor(f2,x,1,'Order',2);
t22=taylor(f2,x,1,'Order',3);

figure(2)
hold on
fplot(t21,'--g',[0,2])
fplot(t22,'--r',[0,2])
fplot(f2,'ob',[0,2])
hold off