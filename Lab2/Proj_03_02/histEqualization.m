function [ output, T ] = histEqualization(input )
%   histEqualization Summary of this function goes here
%   Detailed explanation goes here

     [M,N] = size(input);
     
     % Get the Histogram of the original image 
     histVector = imageHist(input);
     
     % Probability Density Function of r
     % The intensity values r are viewed as random variables in [0,L-1]
     
     L = 256-1;
     T = uint8(zeros(256,1));
     
     % Cumulative distribution function (CDF) of r (Sigma)
    
     sum = 0;
     for i = 1:256
         sum = sum + histVector(i)/(M*N);   
         T(i) = round(sum * L);
     end
     
      for i=1:M
            for j=1:N
                output(i, j) = T(input(i, j)+1);
            end
      end
   
      
end

