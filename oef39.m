syms theta

r1=@(theta)1+0*theta;
r2=@(theta)2*cos(3*theta);

hold on
fplot(r1*cos(theta),r1*sin(theta),'r')
fplot(r2*cos(theta),r2*sin(theta),'g')
axis equal
hold off

s=solve(r1(theta)==r2(theta),theta>0,theta<2*pi);
x=double(solve(r2(theta)==0));

rr1=@(theta)1/2*r1(theta).^2;
rr2=@(theta)1/2*r2(theta).^2;

solution=6*(integral(rr1,0,double(s(1)))+integral(rr2,double(s(1)),double(x)))

controle=(2/3*pi)-((1/2)*3^(1/2))