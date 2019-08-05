function [CBIR_R,CBIR_G,CBIR_B] = my_CBIR(rgb_org_image,rgb_comp_image)

value_R = zeros(1,256);
value_G = zeros(1,256);
value_B = zeros(1,256);

org_R = rgb_org_image(:,:,1);
org_G = rgb_org_image(:,:,2);
org_B = rgb_org_image(:,:,3);


comp_R = rgb_comp_image(:,:,1);
comp_G = rgb_comp_image(:,:,2);
comp_B = rgb_comp_image(:,:,3);


org_R_normalizetion = my_normalize(org_R);
org_G_normalizetion = my_normalize(org_G);
org_B_normalizetion = my_normalize(org_B);


comp_R_normalizetion = my_normalize(comp_R);
comp_G_normalizetion = my_normalize(comp_G);
comp_B_normalizetion = my_normalize(comp_B);

for i=1 : 1 : 255
    value_R(i)=Min(comp_R_normalizetion(i),org_R_normalizetion(i));
    value_G(i)=Min(comp_G_normalizetion(i),org_G_normalizetion(i));
    value_B(i)=Min(comp_B_normalizetion(i),org_B_normalizetion(i));
end
CBIR_R = sum(value_R);
CBIR_G = sum(value_G);
CBIR_B = sum(value_B);


end