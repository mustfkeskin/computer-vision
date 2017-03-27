clear;
I = imread('semboller.pgm');

[M, N] = size(I);
labels = zeros(M,N);

currentLabel = 0;

% 8 komsu için
dx = [-1, 0, 1, 1,  1,  0, -1, -1];
dy = [ 1, 1, 1, 0, -1, -1, -1,  0];


% 4 komsu icin
%dx = [0, 1,  0, -1];
%dy = [1, 0, -1,  0];

for i = 2 : M - 1
    for j = 2 : N - 1
        
        komsular = zeros(1,length(dx),'double');
        for k = 1:length(dx)
          komsular(1,k) = labels(i + dx(k), j + dy(k));
        end
        
        
        
        if(sum(komsular) == 0 && I(i, j) == 0)
            currentLabel = currentLabel + 1;
            labels(i ,j) = currentLabel;   
        end
        
        if(sum(komsular) > 0)
            label = min(komsular(komsular>0));
            if I(i,j) == 0
                labels(i,j) = label;
            end
            for k = 1:length(dx) 
               if (I(i, j) == 0 && ...
                   labels(i + dx(k), j + dy(k)) > 0 && ...
                   labels(i + dx(k), j + dy(k)) ~=label)
               
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
