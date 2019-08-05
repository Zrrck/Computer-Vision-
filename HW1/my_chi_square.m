function [value] = my_chi_square(orginal_image,compare_image)
orginal_image_normalize_hist = my_normalize(orginal_image);
compare_image_normalize_hist = my_normalize(compare_image);
chi_square = [1,256];
for k=1:1:255

 chi_square(k)=(orginal_image_normalize_hist(k)-compare_image_normalize_hist(k)).^2/(orginal_image_normalize_hist(k)+compare_image_normalize_hist(k));
end
value = my_nansum(chi_square);

end