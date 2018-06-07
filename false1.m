f = @(m) 3*m^4 + 6.1*m^3 - 2*m^2 + 3*m + 2;
l=-1;
u=0;
x=u;
while abs(f(x)) > 10^-2
    x=(l*f(u)-u*f(l))/(f(u)-f(l));
    if f(x)<0
        l=x;
    else
        u=x;
    end
end
x