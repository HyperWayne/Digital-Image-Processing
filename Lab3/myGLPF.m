function [ output ] = myGLPF( D0,M,N )

% Gaussian Lowpass Filtering

GLF = zeros(M,N);

% D(u,v) = distance from the center of the frequency rectangle.
for u = 1 : M
    for v = 1 : N
        GLF(u,v) = exp( -1 * ( (u - M/2)^2 + (v - N/2)^2 ) / (2 * D0 * D0) );
    end
end

output = im2single(GLF);

end