clear;
%sigma
s = 3;
X = -3*s : 3*s;
%vektörümüzün büyüklüðü
%b = (3*s)*2 + 1 ;  
[a,b] = size(X);
Y = X;

for i = 1:b
    for j = 1:b
        G(i,j) = exp(-((X(i)^2) + (Y(j)^2))/(2*s*s)); 
    end
end
mesh(G);

f = imread('test.tif');
h = imfilter(f,G);
figure;
imshow(h);
