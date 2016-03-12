clear all;
close all;
clc;
% %database 
for i=1:1:23
    s1 = 'img (';
    n = int2str(i);
    s2 = ').jpg';
    s = strcat(s1,n,s2)

    img = imread(s);
    img_gray = rgb2gray(img);
    [h bins] = calHist_manual(img_gray);
    database(i,:) = h;
end
save('database.dat','database','-ascii');
