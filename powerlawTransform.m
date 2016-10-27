function [ output ] =  powerlawTransform( input, r )

% The general form of Power-Law Transformation is s = c*r^gamma , where c
% and gamma are positive constants

% Do initialization 
[m, n, d] = size(input);
output = uint8(zeros(m, n));

c = 255/power(255, r);

for i=1:m
    for j=1:n
        output(i, j) = uint8(c*double(input(i, j)).^r);
    end
end

end

