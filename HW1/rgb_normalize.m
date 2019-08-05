function [out1,out2,out3] = rgb_normalize(image)
org_R = image(:,:,1);

[h,w] = size(org_R);
normalize_R = zeros(1,256);
normalize_G = zeros(1,256);
normalize_B = zeros(1,256);



[org_r_hist,org_g_hist,org_b_hist] = RGB_histogram(image);
for l=1:1:255
     normalize_R(l)= org_r_hist(l)/(h*w);
     normalize_G(l)= org_g_hist(l)/(h*w);
     normalize_B(l)= org_b_hist(l)/(h*w);
end
out1 = normalize_R;
out2 = normalize_G;
out3 = normalize_B;
end