close all; clear all;

A = imread('Image\Fig0441(a)(characters_test_pattern).tif');
A = im2double(A);
[M,N] = size(A);
B = padarray(A,[M,N],0,'post');

P = 2*M; Q = 2*N;
X = zeros(P,Q);
r = 1;

for x = 1: P
    for y = 1 : Q
        X(x,y) = r;
        r = r*(-1);
    end
    r = r*(-1);
end
C = X.*B; 

D = myDFT2(C);
QQ = D;
D = abs(D); 
D = 100*log(D+1);
D = mat2gray(D);

imwrite(D,'4.41(a).tif');
