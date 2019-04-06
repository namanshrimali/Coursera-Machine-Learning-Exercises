function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

m = length(y); % number of training examples
% Initialize some useful values
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    
    error= X*theta-y;
    theta= theta -(1/m)*alpha*(error'*X)';
    
    % ============================================================

    % Save the cost J in every iteration
   % J_history(iter) = computeCost(X, y, theta);
    % disp(J_history(iter));
end

  disp(min(J_history));
end