function distance = Euclidean(hist1,hist2,bins)
sum_ = 0;
for i=1:1:bins
    sum_ = sum_ + (hist1(i) - hist2(i))^2;
end
distance = sqrt(sum_)
end