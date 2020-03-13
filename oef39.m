syms t

hold on
fplot(cos(t),sin(t),'r')
fplot(2*cos(3*t)*cos(t),2*cos(3*t)*sin(t),'g')
axis equal
hold off

s1=solve(2*cos(3*t)==1,0<=t<=2*pi)  % snijpunten onderling
s2=solve(2*cos(3*t)==0)             % snijpunt x as     


6*(int(1/2*1^2,0,s1(1))+int(1/2*(2*cos(3*t))^2,s1(1),s2))