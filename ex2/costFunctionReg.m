function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hTheta = 1./(1+exp(-X*theta));

temp = theta;
temp(1) = 0;

% temp(1) = 0 해준 이유는 exclude bias term theta_0

J = (-1/m)*sum(y.*log(hTheta)+(1-y).*log(1-hTheta))+(lambda/(2*m))*sum(temp.^2);

grad = (1/m)*(X'*(hTheta-y))+(lambda/m)*temp;



% =============================================================

end
