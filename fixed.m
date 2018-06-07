function [ answer,errorsVector ] = fixed( f ,s,iltNum, tolerance )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms x
fun=sym(f);
y =diff(fun,x);
t=subs(y,x,s)+1;
errors=[];
if abs(t)<1
x=s;
counter = iltNum;
error = tolerance + 1;

while counter > 0 && error > tolerance 
    
    i=x;
    
    x=vpa(subs(fun,x)+x);
   
    error=abs((x-i)*100/x);
    errors(length(errors)+1)=error;
    counter = counter - 1 ;
end

else
    x=NaN;
end

answer = x;
disp('errors')
disp(errors)
errorsVector=errors;
end

