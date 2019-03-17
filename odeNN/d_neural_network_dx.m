function output = d_neural_network_dx( W1, W2, x )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    dotW = W1 * W2;
    output = dotW * sigmoid_grad(x);
end

