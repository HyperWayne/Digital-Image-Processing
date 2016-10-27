function [ output ] = logTransform( input )
%   logTransform Summary of this function goes here
%   Detailed explanation goes here
%   The general form of log transformation is s = c*log(1+r)

[m, n, d] = size(input);
output = uint8(zeros(m,n));

c = 255/log(256);

 for i=1:m
    for j=1:n
        output(i, j) = uint8( c*log(1.0+double(input(i, j))));
    end
 end

   
end

