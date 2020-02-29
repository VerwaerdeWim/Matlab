syms x y

[X,Y] = solve(x^2-2*x+y^2==0,9*x^2-18*x+4*y^2==27)

hold on
fplot(sqrt(-x^2+2*x),[-1,3],'r')
fplot(-sqrt(-x^2+2*x),'r')
fplot(sqrt(27-9*x^2+18*x)/4,'g')
fplot(-sqrt(27-9*x^2+18*x)/4,'g')
hold off