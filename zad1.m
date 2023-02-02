%zad1 a) y'=(y+1)(x+1)

[x, y] = meshgrid(-5:0.5:5);
u = ones(size(x));
v = (y+1).*(x+1);

quiver(x,y,u,v);
axis([-5,5,-5,5]);