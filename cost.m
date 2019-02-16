function J = cost( x , price ,theta )
m=length(x);
 h=x * theta;
  L=length(theta);
J=1/ (2*m)*sum ((h-price).^2) +((0.0000001/(2*m)*sum((theta(2:L,1)).^2)));


%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


end

