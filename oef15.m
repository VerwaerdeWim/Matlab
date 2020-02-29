%todo betere oplossing bedenken
syms a b c
[a,b,c]=solve(a+b+c==5,a^2+b^2==c^2,a==b,c>0);
double(a)
double(a)*double(b)*1/2