clc;clear all;close all;

rgb_org_im = imread('sun.jpg');
rgb_com_im1= imread('sun2.jpg');
rgb_com_im2 = imread('tree.jpg')

orginal_image = rgb2gray(imread('lenna.jpg'));
compare_image1 = imread('riceblurred.png');
compare_image2 = imread('coins.png');

org_R = rgb_org_im(:,:,1);
org_G = rgb_org_im(:,:,2);
org_B = rgb_org_im(:,:,3);

comp1_R = rgb_com_im1(:,:,1);
comp1_G = rgb_com_im1(:,:,2);
comp1_B = rgb_com_im1(:,:,3);

comp2_R = rgb_com_im2(:,:,1);
comp2_G = rgb_com_im2(:,:,2);
comp2_B = rgb_com_im2(:,:,3);

[org_r_hist,org_g_hist,org_b_hist] = RGB_histogram(rgb_org_im);
[comp1_r_hist,comp1_g_hist,comp1_b_hist] = RGB_histogram(rgb_com_im1);
[comp2_r_hist,comp2_g_hist,comp2_b_hist] = RGB_histogram(rgb_com_im2);

[x,y,z] = rgb_normalize(rgb_org_im);
[x1,y1,z1] = rgb_normalize(rgb_com_im1);
[x2,y2,z2] = rgb_normalize(rgb_com_im2);
gray_chi_sguare1 = my_chi_square(orginal_image,compare_image1);
gray_chi_sguare2 = my_chi_square(orginal_image,compare_image2);

%%%%  problem 3 a) %%%%

figure,
plot(my_normalize(orginal_image));title('gray scale orginal image normalize histogram');

figure,
plot(my_normalize(compare_image1));title('gray scalecompare image normazlize histogram'); 
str = sprintf('CHI SQUARE ORGINAL IMGE VS TEST1 IMGE = %f ', gray_chi_sguare1);
title(str);
figure,
plot(my_normalize(compare_image2));title('gray scale compare image normalize histogram');

str = sprintf('CHI SQUARE ORGINAL IMGE VS TEST2 IMGE = %f ', gray_chi_sguare2);
title(str);


%%%%   problem 3  b)  %%%% 
[CHI_SQUARE_R,CHI_SQUARE_G,CHI_SQUARE_B] = rgb_chi_square(rgb_org_im,rgb_com_im1);
[CHI_SQUARE_R1,CHI_SQUARE_G1,CHI_SQUARE_B1] = rgb_chi_square(rgb_org_im,rgb_com_im2);


%%%%   problem 3 c)   %%%%
[CBIR_R,CBIR_G,CBIR_B]= my_CBIR(rgb_org_im,rgb_com_im1);
[CBIR_R1,CBIR_G1,CBIR_B1]= my_CBIR(rgb_org_im,rgb_com_im2);



figure,
plot(x);title('RGB orjinal image R normazlize histogram'); 
figure,
plot(y);title('RGB orjinal image G normazlize histogram'); 
figure,
plot(z);title('RGB orjinal image B normazlize histogram'); 
figure,
plot(x1);title('RGB TEST1 image R normazlize histogram'); 
str = sprintf('CHI SQUARE ORGINAL RGB IMGE VS TEST1 IMGE R = %f CBIR R=%f', CHI_SQUARE_R,CBIR_R);
title(str);
figure,
plot(y1);title('RGB TEST1 image G normazlize histogram'); 
str = sprintf('CHI SQUARE ORGINAL RGB IMGE VS TEST1 IMGE G = %f CBIR G=%f ',CHI_SQUARE_G,CBIR_G);
title(str);
figure,
plot(z1);title('RGB TEST1 image B normazlize histogram'); 
str = sprintf('ORGINAL RGB IMGE VS TEST1 IMGE  CHI SQUARE  B=%f CBIR B=%f',CHI_SQUARE_B,CBIR_B);
title(str);

figure,
plot(x2);title('RGB TEST2 image R normazlize histogram'); 
str = sprintf('CHI SQUARE ORGINAL RGB IMGE VS TEST1 IMGE R = %f CBIR R=%f', CHI_SQUARE_R1,CBIR_R1);
title(str);
figure,
plot(y2);title('RGB TEST2 image G normazlize histogram'); 
str = sprintf('CHI SQUARE ORGINAL RGB IMGE VS TEST1 IMGE G = %f CBIR G=%f',CHI_SQUARE_G1,CBIR_G1);
title(str);
figure,
plot(z2);title('RGB TEST2 image B normazlize histogram'); 
str = sprintf('CHI SQUARE ORGINAL RGB IMGE VS TEST1 IMGE  B=%f CBIR B=%f',CHI_SQUARE_B1,CBIR_B1);
title(str);








