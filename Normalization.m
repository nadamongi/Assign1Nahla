function [ thetaNormal]= Normalization( x,price )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
thetaNormal=(((x.')*x)^(-1))*((x.')*price);


end

