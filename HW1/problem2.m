clc; clear all;close all;

orginal=rgb2gray(imread('lenna.jpg'));
orginal_gama1 = pekistirme_powerlaw(orginal,0.5);
orginal_gama2 = pekistirme_powerlaw(orginal,2);


figure,
plot(my_hist(orginal)); title('Orginal imge histogrami')
figure,
plot(my_hist(orginal_gama1)); title('0.5 gama histogrami')
figure, 
plot(my_hist(orginal_gama2)); title('2 gama histogrami')
figure,
plot(my_normalize(orginal)); title('Orginal imge normalize histogrami')
figure,
plot(my_normalize(orginal_gama1)); title('0.5 gama normalize histogrami')
figure,
plot(my_normalize(orginal_gama2)); title('2 gama normalize histogrami')













% [h,w]=size(I);
% histI=zeros(1,256);
% histI2=zeros(1,256);
% histI3=zeros(1,256);
%
% pdf_hist = zeros(1,256);
% pdf_hist2 = zeros(1,256);
% pdf_hist3= zeros(1,256);
% pdf_hist_sum = zeros(1,256);
% I2=pekistirme_powerlaw(I,0.5)
% I3=pekistirme_powerlaw(I,2);
% 
% for i=1:1:h
%     for j=1:1:w
%         histI(I(i,j)+1)=histI(I(i,j)+1)+1;
%         
%         histI2(I2(i,j)+1)=histI2(I2(i,j)+1)+1;
%         
%         histI3(I3(i,j)+1)=histI3(I3(i,j)+1)+1;
%     end
% end
% 
% 
% for l=1:1:255
%     pdf_hist(l)= histI(l)/(h*w);
%     pdf_hist2(l)= histI2(l)/(h*w);
%     pdf_hist3(l)= histI3(l)/(h*w);
% end
% pdf_hist_sum(1)=pdf_hist(1);
% for l=1:1:255
%     pdf_hist_sum= pdf_hist_sum + pdf_hist(l+1) ;
% end
% 
% 
% figure,plot(histI);
% figure,plot(cdf_hist);
% figure,plot(pdf_hist);title('normalization')
% figure,plot(pdf_hist2);title('normalization2')
% figure,plot(pdf_hist3);title('normalization3')
% figure,plot(pdf_hist_sum);
% 
% figure,
% plot(histI);title('Original Image')
% figure,
% plot(histI2);title('Power law Gama = 0.5 Image')
% figure,
% plot(histI3);title('Power law Gama = 2 Image')
% 
