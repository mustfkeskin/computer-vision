clear;
I = imread('labirent.pgm');

[M, N] = size(I);
labels = zeros(M,N);

currentLabel = 0;
dx = [-1, 0, 1, 1,  1,  0, -1, -1];
dy = [ 1, 1, 1, 0, -1, -1, -1,  0];

for i = 2:M - 1
    for j = 2:N - 1
        komsular = zeros(1,8,'double');
        for k = 1:8
          komsular(1,k) = labels(i + dx(k), j + dy(k));
        end
        
        if(sum(komsular) == 0 && I(i, j) == 0)
            currentLabel = currentLabel + 10;
            labels(i ,j) = currentLabel;   
        end
        
        if(sum(komsular) > 0)
            label = min(komsular(komsular>0));
            if I(i,j) == 0
                labels(i,j) = label;
            end
            for k = 1:8 
               if  I(i + dx(k), j + dy(k)) == 0 && labels(i + dx(k), j + dy(k)) > 0
                   search = labels(i + dx(k), j + dy(k));
                   labels(labels == search) = label;
               end
            end
        end
     end
end


cmap = colormap;    
cmap(1,:) = [1 1 1];

% apply new colormap
colormap(cmap);

% display matrix 
imagesc(labels);
