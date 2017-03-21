f = imread('test.tif');

%average filter
% a = 15;
% w = ones(a);
% w = w / (a*a);
% g = imfilter(f,w,'replicate');
%replicate zero padding ile gelen siyah kenarı engelliyor
% imshow(g);

%%weighted average filtering
z = [1 2 1;
     2 4 2;
     1 2 1;];
z = z / 16;
h = imfilter(f,z);
imshow(h);
