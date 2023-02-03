function res = solver(t, x)
res = [x(1)-4.*sin(x(2));
x(2)+4.*sin(x(1))];
end