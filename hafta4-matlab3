clear;
f = imread('building.tif');
f = double(f);

wx = [-1 -1 -1;
       0  0  0;
       1  1  1];
 
 wy = [-1 0 1;
       -1 0 1;
       -1 0 1];
 
 gx = imfilter(f, wx);
 gy = imfilter(f, wy);
 
 M = sqrt(double((gx.^2) + (gy.^2)));
 buyuk = max(max(M));
 G = M >= 0.15 * buyuk;

 figure;
 imshow(G, []);
 figure;
 imshow(gx, []);
 figure;
 imshow(gy, []);
 figure;
 imshow(f, []);
 
