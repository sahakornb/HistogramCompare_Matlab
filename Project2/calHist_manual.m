% This is manual for calculate a histogram 
function [hist bins] = calHist_manual(img)
% Create hist template for 16 bins 
bins = 256;

for i = 1:1:bins
    chist(i) = i;
    hist(i) = 0;
end

[rows cols] = size(img);
div = rows * cols;
   for x =1:1:rows
    for y=1:1:cols
        for b = 1:1:bins
        if chist(b) - img(x,y) > 0 && chist(b) - img(x,y) < 16
            hist(b) = hist(b)+1;
        end
        end
    end
   end
   
for i = 1:1:bins
  
    hist(i) = hist(i)/div;
end
end