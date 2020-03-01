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

%fddr(t) in de solve steken werkt niet, vandaar een for loop

for i=1:length(s)
    if fddr(s(i))<0
        s(i)
    end
end