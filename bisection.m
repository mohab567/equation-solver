f = @(m) m-25^(1/3);
l=2;
u=3;
x=u;
while abs(f(x)) > 10^-4
    x=(u+l)/2;
    if f(x)*f(l)<0
        u=x;
    else
        l=x;
    end
end
x