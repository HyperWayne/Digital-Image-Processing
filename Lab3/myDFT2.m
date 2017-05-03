function [ output ] = myDFT2( input )

%  Two-Dimensional DFT
input = im2single(input);
[M,N] = size(input);

% Turn 4 for loop into -> 2 (matrix)mulitiply 2

% Implement u,x term that in the DFT formula.
X = zeros(M,M);
for u = 1 : M
    for x = 1: M
        X(u,x) = exp( -1i*2*pi*u*x / M );
    end
end

% Implement v,y term that in the DFT formula.
Y = zeros(N,N);
for v = 1 : N
    for y = 1 : N
        Y(v,y) = exp( -1i*2*pi*v*y / N );
    end
end

%  M*N = M*M x M*N x N*N 
output = X * input * Y ;

end

