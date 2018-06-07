f = @(m) 3*m^4 + 6.1*m^3 - 2*m^2 + 3*m + 2;
l=-1;
u=0;
x=u;
while abs(f(x)) > 10^-2
    x=(u+l)/2;
    if f(x)*f(l)<0
        u=x;
    else
        l=x;
    end
end
x