clc;clear all;close all;


%%%% Problem 1 a) %%%%
I1 = rgb2gray(imread('lenna.jpg'));
I2=pekistirme_powerlaw(I1,0.5);  % Istenen gama degerini kullanarak power law uygular.
I3=pekistirme_powerlaw(I1,2);

%%%% Problem 1 b) %%%%

figure,
imshow(I1);title('Orginal Image');
figure,
imshow(I2);title('Power law Gama= 0.5 Image');
figure,
imshow(I3);title('Power law Gama= 2 Image');

%%%% Problem 1 c) %%%%

figure,
mapping(I1,0.1);  % yazdigim mapping fonksiyonu plot olarak  
hold on;
mapping(I1,0.2);  % giri? piksel de?erleri ile ç?k?? piksel de?erlerini istenen gama degeri icin cizer.
mapping(I1,0.4);  % hold on,off ilede verilen degerler icin cizimleri tek grafikte cizdirdim.
mapping(I1,0.67);
mapping(I1,1);
mapping(I1,1.5);
mapping(I1,2.5);
mapping(I1,5);
mapping(I1,10);
hold off;
legend('0.1','0.2','0.4','0.67','1','1.5','2.5','5','10'); % legend komutu ilede cizimleri labellandirdim.



%%%%%%%%  mapping fonksiyonu ile fonksiyonlastirdigim kod parcasi  %%%%%%%%%%%%%



% [h,w]=size(I1)
% I4 = zeros(1,h*w);
% x=1;
% for i= 1 : 1 : h
%     for j = 1 : 1 : w
%         I4(x) = I1(i,j);
%         x=x+1;
%     end
% end
% 
% 
% 
% 
% [Y,I] = sort(I4);
% 
% s= Y.^0.1;
% s1=uint8(255 * mat2gray(s));
% s2= Y.^0.2;
% s10=uint8(255 * mat2gray(s2));
% s3= Y.^0.4;
% s11=uint8(255 * mat2gray(s3));
% s4= Y.^0.67;
% s12=uint8(255 * mat2gray(s4));
% s5= Y.^1;
% s13=uint8(255 * mat2gray(s5));
% s6= Y.^1.5;
% s14=uint8(255 * mat2gray(s6));
% s7= Y.^2.5;
% s15=uint8(255 * mat2gray(s7));
% s8= Y.^5;
% s16=uint8(255 * mat2gray(s8));
% s9= Y.^10;
% s17=uint8(255 * mat2gray(s9));
% figure,
% plot(Y,s1,Y,s10,Y,s11,Y,s12,Y,s13,Y,s14,Y,s15,Y,s16,Y,s17);


