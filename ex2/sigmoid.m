function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


g = 1./(1+exp(-z));

% g = 1./(1+exp(-z)) 일때, 1. 부분의 . 을 안 찍어서 에러떴었다
% g는 zeros(size(z)) 벡터이므로 . 으로 indicate 해줘야 함

% =============================================================

end
