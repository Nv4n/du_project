%Зад1 б) y'=(y+1) * (x+1); Начертайте векторно поле {x[-5,5], y[-5,5]}

[x, y] = meshgrid(-5:0.5:5);
u = ones(size(x));
v = (y+1).*(x+1);

hold on;
quiver(x,y,u,v);
axis([-5,5,-5,5]);

% Интегралните криви на уравнението: в)
% y' = y'=(y+1) * (x+1)
%a=-5;
%b=-5;
[a,b]=ginput(1);
syms x y(x)
eq1 = diff(y, x) == (y+1).*(x+1);
while a >= -5 && a <= 5 && b >= -5 && b <= 5
ic1 = y(a) == b;
sol1 = dsolve(eq1, ic1);
xx = -5:0.1:5;
yy = double(subs(sol1, 'x', xx));
plot(xx, yy, 'k');
[a,b]=ginput(1);
%a=a+1;
%b=b+1;
end

% a) Общо решение на уравнението
S = dsolve(eq1);
disp(S);
