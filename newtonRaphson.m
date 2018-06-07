function [root, steps, errors] = newtonRaphson(func, x0, eps, iterations)
%This function calculates the root of function f, using Newton-Raphson
%method with x0 as an initial point
%f = x^2 + 3x + 2

    syms x;
    derivative = diff(func,x); %2x + 3
    steps(1) = x0;
    if(subs(derivative,x0) == 0)
        root = x0;
    else
        root = x0 - subs(func,x0) /  subs(derivative,x0);
        steps(1) = root;
        iter = 1;
        while( subs(derivative,x0) ~= 0 && abs((root - x0) / root) > eps && iter <= iterations)
            x0 = root;
           root = x0 -subs(func,x0) / subs(derivative,x0);
           errors(iter) = abs((root - x0) / root) * 100;
           steps(iter + 1) = root;
           iter = iter + 1;
        end
    end
end