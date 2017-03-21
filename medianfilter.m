f = imread('test.tif');
m = 3;
n = 3;
% %min
% g=ordfilt2(f, 1, ones(m,n));
% figure;
% imshow(g);
% %max
% h=ordfilt2(f, m*n, ones(m,n));
% figure;
% imshow(h);
%median
k=ordfilt2(f, median(1:m*n), ones(m,n));
figure;
imshow(k);

%median + shaped mask
w = [0 1 0;
     1 1 1;
     0 1 0;];
%median alýrken 1 olan göz sayýsýný aldýk
l=ordfilt2(f, median(1:sum(sum(w))), w);
figure;
imshow(l);

%median filtrenin dezavantajý köþeleri yuvarlýyor