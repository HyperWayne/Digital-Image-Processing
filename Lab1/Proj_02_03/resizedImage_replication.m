function [ resultedImage  ] = resizedImage_replication( originalImage, scalingFactor )
%   resizedImage_replication Summary of this function goes here
%   Detailed explanation goes here
    
        [m,n] = size(originalImage);
        
        M = floor(m*scalingFactor);   % M is the pixel after scaling , so does N.
        N = floor(n*scalingFactor);
        
 for i=1:M   
        x = floor(i/scalingFactor);  % x indicates new row pixel
        if( x == 0 ) % In case floor(0.xx) = 0
          x = 1; 
        end
        for j=1:N
            y = floor(j/scalingFactor);  % y indicates new col pixel
            if( y == 0 )  % In case floor(0.xx) = 0
              y = 1; 
            end
            resultedImage(i,j) = originalImage(x, y);
        end
 end

end

