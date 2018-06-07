function [ answers ] = guessJordon( matrix )
m=matrix;
flag=0;
for i=1:1:size(m,1)
    m=replace(m,i,max(m,i));
    if(m(i,i)==0)
        flag = 1;
    end
    m(i,:)=m(i,:)/m(i,i);
    for r=1:1:size(m,1)
       if(r~=i)
       a=m(r,i);
       m(r,:)=m(r,:)-m(i,:)*a;
       end
    end
end
disp(m);
if(flag==0)
answers = m(:,size(m,2));
else
    answers = NaN;
end
end

function [ Maxindex ] = max( matrix , start)
maxI=start;
a=matrix(start,start);
for n=start:1:size(matrix,1)
 if(abs(matrix(n,start))>a)
     a=abs(matrix(n,start));
     maxI=n;
 end
end
Maxindex=maxI;
end

function [Matrix] = replace (matrix,x,y)
Martrixp=matrix;
a=Martrixp(x,:);
Martrixp(x,:)=Martrixp(y,:);
Martrixp(y,:)=a;
Matrix=Martrixp;
end