function output = sigmoid_grad( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    output = sigmoid(x) .* (1 - sigmoid(x));

end

