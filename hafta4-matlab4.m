clear;
f = imread('building.tif');
sigma = 3;
x = -3 * sigma : 3 * sigma;
y = -3 * sigma : 3 * sigma;
[M, N] = size(x);
G = zeros(N,N);
for i=1:N
    for j=1:N
        G(i,j) = (((x(i)^2 + y(j)^2) - (2 * sigma^2)) / sigma^4) * exp(-(x(i)^2 + y(j)^2) / (2 * sigma * sigma));
    end
end

G = G * -1;
toplam = sum(sum(G));
G = G / toplam;
result = imfilter(f,G);
imshow(result);

