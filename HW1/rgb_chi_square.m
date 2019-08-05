function [value_R,value_G,value_B] = rgb_chi_square(org_image,comp_image)

org_R = org_image(:,:,1);
org_G = org_image(:,:,2);
org_B = org_image(:,:,3);

org_R_norm_hist = my_normalize(org_R);
org_G_norm_hist = my_normalize(org_G);
org_B_norm_hist = my_normalize(org_B);

comp_R = comp_image(:,:,1);
comp_G = comp_image(:,:,2);
comp_B = comp_image(:,:,3);

comp_R_norm_hist = my_normalize(comp_R);
comp_G_norm_hist = my_normalize(comp_G);
comp_B_norm_hist = my_normalize(comp_B);

chi_square_R = [1,256];
chi_square_G = [1,256];
chi_square_B = [1,256];


for k=1:1:255

 chi_square_R(k)=(org_R_norm_hist(k)-comp_R_norm_hist(k)).^2/(org_R_norm_hist(k)+comp_R_norm_hist(k));
 
 chi_square_G(k)=(org_G_norm_hist(k)-comp_G_norm_hist(k)).^2/(org_G_norm_hist(k)+comp_G_norm_hist(k));
 
 chi_square_B(k)=(org_B_norm_hist(k)-comp_B_norm_hist(k)).^2/(org_B_norm_hist(k)+comp_B_norm_hist(k));
end
value_R = my_nansum(chi_square_R);
value_G = my_nansum(chi_square_G);
value_B= my_nansum(chi_square_B);

end