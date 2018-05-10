function [J, grad] = cost(theta, X, y, lambda)

m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

z = X * theta;

htheta = 1 ./ (1 + exp(-1*z));

J = 1 / m * sum(-y .* log(htheta) - (1 - y) .* log(1 - htheta));

grad = 1 / m * (X' * (htheta - y));


end;