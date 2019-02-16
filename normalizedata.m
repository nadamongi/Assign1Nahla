function [ x ] = Untitled3( x,n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

for w=2:n
    if max(abs(x(:,w)))~=0
    x(:,w)=(x(:,w)-mean((x(:,w))))./std(x(:,w));
    end
end
end

