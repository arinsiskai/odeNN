function output = psy_analytic( x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    output = (exp(-(x .^2) ./ 2.0) ./ (1.0 + x + x .^3))  + x .^2;

end

