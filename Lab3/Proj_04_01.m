close all; clear all;

A = imread('Image\Fig0431(d)(blown_ic_crop).tif');
A = im2double(A);
[M,N] = size(A);
B = padarray(A,[M,N],0,'post');
imwrite(double(B), '4.36(b).tif');
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

imwrite(double(C), '4.36(c).tif');

D = myDFT2(C);
QQ = D;
D = abs(D); 
D = 100*log(D+1);
D = mat2gray(D);

imwrite(D,'4.36(d).tif');

E = myGLPF(30,P,Q);
E = im2double(E);
imwrite(E,'4.36(e).tif');

F = D .* E;
imwrite(double(F),'4.36(f).tif');

F = QQ .* E;

G = myIDFT2(F);
H = G.*X; 
H = abs(H);

imwrite(double(H),'4.36(g).tif');

A = H(1:M,1:N);

imwrite(double(A),'4.36(h).tif');
