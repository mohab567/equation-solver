function [ answer,errorsVector ] = brigeVita( fun,x,iltNum,tolerance )
% fun : is the function for example x^4+2*x^3+5
% x : is the initial guess for root
% lltNum : is number of iltrations
% tolerance : the the precentage tolerance 
% so if you want to stop at certain tolerance just set a max number of
% iltrations to avoid case of disconverge ( in matlab 50 iltration is such
% a huge number and enough )
% and if you want certain number of iletrations just set tolerance to zero
xii=x;
counter=iltNum;
error = tolerance+1;

a = sym2poly(sym(fun));
b = a;
c = a;
errors=[];
while counter > 0 && error > tolerance 
    disp('a  -');
    disp(a)
   for n=2:1:length(b)
       b(n) = a(n)+ xii * b(n-1);  
   end  
   disp('b  -');
   disp(b)
   for n=2:1:length(b)-1
       c(n) = b(n)+ xii * c(n-1);
   end 
   disp('c  -');
   disp(c)
   disp('-----------')
    xi = xii;
    lb=length(b);
    lc=length(c)-1;
    if b(lb)~= 0
    xii = xi - ( b(lb)/c(lc));
    end
    error=abs((xii-xi)*100/xii);
    errors(length(errors)+1)=error;
    counter = counter - 1 ;
end    
answer = xii;
disp('errors')
disp(errors)
errorsVector=errors;
end

