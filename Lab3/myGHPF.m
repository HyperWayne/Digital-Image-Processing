function [ output ] = myGHPF( D0,M,N )

% Gaussian Highpass Filtering

GHF = zeros(M,N);

% D(u,v) = distance from the center of the frequency rectangle.
for u = 1 : M
    for v = 1 : N
        GHF(u,v) = 1 - exp( -1 * ((u - M/2)^2 + (v - N/2)^2) / (2 * D0^2));
    end
end

output = im2single(GHF); 

end

