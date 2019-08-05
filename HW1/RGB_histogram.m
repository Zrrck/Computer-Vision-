function [R_hist,G_hist,B_hist] = RGB_histogram(rgb_org_image)

org_R = rgb_org_image(:,:,1);
org_G = rgb_org_image(:,:,2);
org_B = rgb_org_image(:,:,3);


R_hist = my_hist(org_R);
G_hist = my_hist(org_G);
B_hist = my_hist(org_B);
end