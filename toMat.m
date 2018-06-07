function [ matrix ] = toMat( stringsArray )
for n=1:1:length(stringsArray)
    a(n)=sym(stringsArray(n));
    
end

matrix=equationsToMatrix(a);

end

