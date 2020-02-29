syms x
y1 = 1/(1+x^2);
y2 = x^2/2;

fplot(y1,[-2,2],'g')
hold on
fplot(y2,[-2,2],'r')
hold off

solve(y1 == y2)

int(y1-y2,-1,1)