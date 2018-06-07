function [  ] = file(BisectionAns,BisectionErrors, FalsepositionAns,FalsepositionErrors, FixedpointAns,FixedpointErrors, NewtonRaphsonAns,NewtonRaphsonErrors, SecantAns,SecantErrors ,BiergeVietaAns,BiergeVietaErrors)

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
T=table(BisectionAns,BisectionErrors, FalsepositionAns,FalsepositionErrors, FixedpointAns,FixedpointErrors, NewtonRaphsonAns,NewtonRaphsonErrors, SecantAns,SecantErrors ,BiergeVietaAns,BiergeVietaErrors)
writetable(T,'output.txt','Delimiter','\t');
end

