clear all;
close all;
clc;
inputImg = imread('img (1).jpg');
img_gray = rgb2gray(inputImg);
[h bins] = calHist_manual(img_gray);

value = load('database.dat')

figure(1)
subplot(1,2,1);
imshow(inputImg)
title('InputImage')

subplot(1,2,2);
x=1:1:256;
bar(x,h(1,:));
title('InputImage Histogram')

for i = 1:1:23
    d(i) = Chessboard(h,value(i,:),256);
end
[B,I] = sort(d)

index = 1
figure(2)
for i=1:1:3;

 s1 = 'img (';
 n = int2str(I(i));
 s2 = ').jpg';
 s = strcat(s1,n,s2)
 
 img = imread(s);
 subplot(3,2,index);
 imshow(img)
 title('InputImage')
  
 subplot(3,2,index+1);
 x=1:1:256;
 bar(value(I(i),:));
 title('InputImage Histogram')
 index = index + 2;

end
