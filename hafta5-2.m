%erosion

%opening  A o B = (A - B) + B
%closing  A o B = (A + B) - B
clear;
I = imread('wirebond.tif');
I = im2bw(I);

SE = strel('square',11);
IM = imerode(I,SE);
figure;
imshow(IM);

SE = strel('square',15);
IM = imerode(I,SE);
figure;
imshow(IM);

SE = strel('square',45);
IM = imerode(I,SE);
figure;
imshow(IM);
