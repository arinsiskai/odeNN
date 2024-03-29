nx = 10;
dx = 1 / nx;
rng (1);

x_space = 0:dx:1;
y_space = psy_analytic(x_space);
psy_fd = zeros(size(y_space));
psy_fd(1) = 1;

for i = 2: length(x_space)
    psy_fd(i) = psy_fd(i-1) + B(x_space(i)) * dx - psy_fd(i-1) * A(x_space(i)) * dx; 
end

plot(x_space, y_space) 
hold on;
plot(x_space, psy_fd, 'r--')

%Train
W1 = randn([1,11]);
W2 = randn([11,1]);
y = neural_network(W1, W2, x_space);

learning_rate = 0.01;
epoch = 10;
tmp1 = 0;
tmp2 = 0;

for i = 1:epoch
         loss = loss_function(W1, W2, x_space);
         loss_grad1 = gradient(loss_function(W1, W2, x_space));
         loss_grad2 = gradient(loss_function(W1, W2, x_space));
    
    temp1 = W1 - learning_rate * loss_grad1;
    temp2 = W2 - learning_rate * loss_grad2';
    
    W1 = temp1;
    W2 = temp2;
end

result = zeros(size(x_space, 2));
for i = 1 : length(x_space)
    netout = neural_network(W1, W2, x_space(i));
    result (i) = 1 + x_space(i) * neural_network(W1, W2, x_space(i));
end

plot(x_space, result(:,1), 'k--')
