function [ output ] = myIDFT2( input )

%  Two-Dimensional inverse DFT
input = im2single(input);
[M,N] = size(input);

% IDFT differ DFT with a sign of exponential coefficient in the DFT formula.

% Implement u,x term that in the IDFT formula.
X = zeros(M,M);
for u = 1 : M
    for x = 1: M
        % 1j for complex numbers
        X(u,x) = exp( 1j*2*pi*u*x / M );  
    end
end
% Implement v,y term that in the DFT formula.
Y = zeros(N,N);
for v = 1 : N
    for y = 1 : N
        Y(v,y) = exp( 1j*2*pi*v*y / N );
    end
end

%  IDFT needs divided input by M, N
output = (X * input * Y) / (M*N);

end

