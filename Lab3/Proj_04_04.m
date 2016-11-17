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
%-----------------------------------------------------------------------
B = myGHPF(30,P,Q);
B = B.*D;
G = myIDFT2(B); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.56(a).tif');

C = myGHPF(60,P,Q);
C = C .*D;
G = myIDFT2(C); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.56(b).tif');


E = myGHPF(160,P,Q);
E = E .*D;
G = myIDFT2(E); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.56(c).tif');




