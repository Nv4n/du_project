clear all
format long
tau = 0.005;
h = 0.1;

t = 0:tau:1;
x = 0:h:7;

M = length(t);
N = length(x);

u = zeros([N,M]);

for m = 1:M
    u(1,m) = 0;
    u(N,m) = 0;
end
for n = 1:N
    u(n,1) = phi5(x(n));
end

for m = 1:M-1
    for n = 2:N-1
        u(n,m+1) = u(n,m) + tau/h^2*(u(n+1,m) - 2*u(n,m) + u(n-1,m));
    end
end

for m = 1:M
    plot(x,u(:,m))
    axis([0,7,-10,10])
    MM(m) = getframe;
end
movie(MM,5,24)

