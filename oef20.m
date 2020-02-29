syms x
y = atan(((x-1)/2)-(1/((2*x)-2)));

figure(1)
fplot(y,[-1,10])

limit(y,x,1,'left')
limit(y,x,1,'right')

limit(y,x,Inf)
limit(y,x,-Inf)

dy = diff(y);
figure(2)
fplot(dy,[-1,10])
solve(dy == 2)

