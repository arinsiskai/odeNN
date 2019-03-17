function loss_sum = loss_function( W1, W2, x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    ss = 0;
    %disp('loss_function');
    for i = 1:size(x,2)
        xi = x_space(i);
        net_out = neural_network(W1,W2,xi);
        psy_t = 1 + xi * net_out;
        d_net_out = d_neural_network_dx(W1,W2, xi);
        d_psy_t = net_out + xi * d_net_out;
        func = f(xi, psy_t);
        error_sqr = (d_psy_t - func)^2;
        
        ss = ss + error_sqr;
    end
    loss_sum = ss;
end

