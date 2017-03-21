clear;
A = [0 0 0 0 0 0 0 0 0 0 0 0;
     0 0 0 0 1 1 1 1 0 0 0 0;
     0 0 0 0 1 1 1 1 0 0 0 0;
     0 0 0 0 1 1 1 1 0 0 0 0;
     0 1 1 1 1 1 1 1 1 1 1 0;
     0 1 1 1 1 1 1 1 1 1 1 0;
     0 1 1 1 1 1 1 1 1 1 1 0;
     0 0 0 0 1 1 1 1 0 0 0 0;
     0 0 0 0 1 1 1 1 0 0 0 0;
     0 0 0 0 1 1 1 1 0 0 0 0;
     0 0 0 0 0 0 0 0 0 0 0 0];
 
 B1 = [0 1 0;
       1 1 1;
       0 1 0];
 B2 = [ 1;
        1;
        1];
 B3 = [1, 1, 1;
       1, 1, 1;
       1, 1, 1];
 
I1 = imerode(A,B1);
figure;
imshow(I1);

I2 = imdilate(A,B1);
figure;
imshow(I2);

I3 = imerode(A,B2);
figure;
imshow(I3);

I4 = imdilate(A,B3);
figure;
imshow(I4);

I = imerode(A,B1);
I5 = A - I;
figure;
imshow(I5);




   
