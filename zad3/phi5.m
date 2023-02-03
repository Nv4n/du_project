function res=phi5(x)

for n=1:length(x)
    if x(n)>=1 && x(n)<=4
        res(n)= (x-2).*((x-4).^2).*(x-1).^3;
    else
        res(n)= 0;
    end 
end