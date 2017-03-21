I = imread('fingerprint.tif');
I = im2bw(I);

figure;
imshow(I);

I = imcomplement(I);



w = [1, 1, 1;
     1, 8, 1;
     1, 1, 1];
 
w = w / sum(w); 
I = imfilter(I,w);

figure;
imshow(I);

SE = strel('cube',7);
I = imerode(I,SE);
figure;
imshow(I);
I = imdilate(I,SE);
figure;
imshow(I);
