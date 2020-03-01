syms t
x=@(t)2*sin(t)+cos(2*t);
y=@(t)-2*cos(t)-sin(2*t);
r=@(t)sqrt(x(t)^2+y(t)^2);

fplot(x(t),y(t))

hulpdr=diff(r(t));
dr=@(t)subs(hulpdr,t);

hulpddr=diff(dr(t));
ddr=@(t)subs(hulpddr,t);

s=solve(t>-pi,t<pi,dr(t)==0);

s(ddr(s)<0)