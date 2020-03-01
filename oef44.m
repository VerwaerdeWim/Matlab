syms t
r1=@(t)1-cos(t);
r2=@(t)-sqrt(3)*sin(t);

hold on
fplot(r1*cos(t),r1*sin(t),'r')
fplot(r2*cos(t),r2*sin(t),'g')
axis equal
hold off

s=vpa(solve(r1(t)==r2(t),t>=0,t<2*pi));

hulpdr=diff(r1(t));
dr=@(t)subs(hulpdr,t);

ds=@(t)double(sqrt(r1(t).^2+dr(t).^2));

integral(ds,double(s(1)),double(s(2)))