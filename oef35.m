syms t
x=@(t)2*sin(t)+cos(2*t);
y=@(t)-2*cos(t)-sin(2*t);
r=@(t)sqrt(x(t)^2+y(t)^2);

fplot(x(t),y(t))

dr=diff(r(t));
fdr=@(t)subs(dr,t);

ddr=diff(fdr(t));
fddr=@(t)subs(ddr,t);

s=solve(t>-pi,t<pi,fdr(t)==0);

s(fddr(s)<0)