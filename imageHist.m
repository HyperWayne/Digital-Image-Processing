function [ histVector ] = imageHist( input )
%   imageHist Summary of this function goes here
%   Detailed explanation goes here
    
      [M,N] = size(input);
      histVector = zeros(256,1);
      
      for i = 1:M
            for j = 1:N
                histVector(input(i,j)+1) = histVector(input(i,j)+1) +1;
            end
      end

  
end

    