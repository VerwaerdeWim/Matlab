syms x
f=heaviside(x-1)*(2-x)+heaviside(x-2)*(x-2);
fplot(f,[-1,4])
syms s
g=laplace(f,x,s)
ilaplace(g,s,x)