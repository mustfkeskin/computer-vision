f = imread('moon.tif');

w = [0 1 0;
     1 -4 1;
     0 1 0];
 
 s = imfilter(f, w);
 g = f + (-3) * s;
 
 figure;
 imshow(g, []);
 figure;
 imshow(f, []);
 figure;
 imshow(s, []);
