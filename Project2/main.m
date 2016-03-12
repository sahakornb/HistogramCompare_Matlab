clear all;
close all;
clc;
% %database 
img = imread('img (1).jpg');
img_gray = rgb2gray(img);
[h bins] = calHist_manual(img_gray);
figure(1) 
bar(h);

img2 = imread('img (2).jpg');
img_gray2 = rgb2gray(img2);
[h2 bins2] = calHist_manual(img_gray2);
figure(2) 
bar(h2);

sum_ = 0;
for i=1:1:bins
    sum_ = sum_ + (h(i) - h2(i))^2;
end
euclidean = sqrt(sum_)
