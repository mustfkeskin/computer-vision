clear;
f = imread('moon.tif');

w = [1 1 1;
     1 1 1;
     1 1 1];
 w = w / 9;
 f_ = imfilter(f, w);
 gmask = f - f_;
 k = 1111;
 g = f + k * gmask;
 
 figure;
 imshow(f, []);
 figure;
 imshow(g, []);
