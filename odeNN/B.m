function output = B( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    output = x .^ 3 + 2 .* x + x .^ 2 .* ((1 + 3 .* x .^ 2) ./ (1 + x + x.^3));
    
end

