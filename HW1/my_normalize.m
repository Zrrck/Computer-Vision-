function [out] = my_normalize(image)
[h,w] = size(image);
normalize_hist = zeros(1,256);
image_hist = my_hist(image);
for l=1:1:255
     normalize_hist(l)= image_hist(l)/(h*w);
end
out = normalize_hist;
end