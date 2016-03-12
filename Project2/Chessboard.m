function distance8 = Chessboard(hist1,hist2,bins)

D = 0;
for i=1:1:bins
   D = max(abs(hist1(i)- hist2(i)));
end
distance8 = D
end