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
B = myGLPF(10,P,Q);
B = B.*D;
G = myIDFT2(B); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.41(b).tif');

C = myGLPF(50,P,Q);
C = C .*D;
G = myIDFT2(C); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.41(c).tif');

DD = myGLPF(100,P,Q);
DD = DD .*D;
G = myIDFT2(DD); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.41(d).tif');

E = myGLPF(150,P,Q);
E = E .*D;
G = myIDFT2(E); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.41(e).tif');

F = myGLPF(460,P,Q);
F = F.*D;
G = myIDFT2(F); H = G.*X; H = abs(H);
A = H(1:M,1:N);
imwrite(double(A),'4.41(f).tif');
