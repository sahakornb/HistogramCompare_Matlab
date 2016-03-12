function distance4 = Cityblock(hist1,hist2,bins)

D = 0;
for i=1:1:bins
   D = D + abs(hist1(i)- hist2(i));
end
distance4 = D
end