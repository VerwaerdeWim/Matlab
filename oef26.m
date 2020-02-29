x = -10:0.5:10;
y = -10:0.5:10;
[X,Y] = meshgrid(x,y);
Z = sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);

figure(1)
mesh(X,Y,Z)

figure(2)
contour(X,Y,Z)