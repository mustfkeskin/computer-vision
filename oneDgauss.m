clear;
%sigma
s = 3;
X = -3*s : 3*s;
%vektörümüzün büyüklüðü
%b = (3*s)*2 + 1 ;  
[a,b] = size(X);

for i = 1:b
    G(i) = (1 / (sqrt(2*pi))*s) * exp(-(X(i)^2)/(2*s*s));    
end
plot(G);

f = imread('test.tif');
h = imfilter(f,G);
figure;
imshow(h);
H = G';
cikis = imfilter(h,H);
figure;
imshow(cikis);