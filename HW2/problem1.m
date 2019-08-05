clc; clear all; close all;
original =imread('lenna.jpg');

oktav=3;
scale =5;

sigma_0= 1;
filter_size=[5,5];


[h,w]=size(original);
empty=zeros(255,400);


[L1,L2,L3] = gauss_scale_space(original,sigma_0,filter_size);



figure,
multi = cat(1,cell2mat(L1.Oktav1(1,1)),cell2mat(L1.Oktav1(1,2)),cell2mat(L1.Oktav1(1,3)),cell2mat(L1.Oktav1(1,4)),cell2mat(L1.Oktav1(1,5)));
montage(multi);

figure,
multi1 = cat(1,cell2mat(L2.Oktav2(1,1)),cell2mat(L2.Oktav2(1,2)),cell2mat(L2.Oktav2(1,3)),cell2mat(L2.Oktav2(1,4)),cell2mat(L2.Oktav2(1,5)));
montage(multi1);

figure,
multi2 = cat(1,cell2mat(L3.Oktav3(1,1)),cell2mat(L3.Oktav3(1,2)),cell2mat(L3.Oktav3(1,3)),cell2mat(L3.Oktav3(1,4)),cell2mat(L3.Oktav3(1,5)));
montage(multi2);



dog1_1=find_dog(cell2mat(L1.Oktav1(1,1)),cell2mat(L1.Oktav1(1,2)));
dog1_2=find_dog(cell2mat(L1.Oktav1(1,2)),cell2mat(L1.Oktav1(1,3)));
dog1_3=find_dog(cell2mat(L1.Oktav1(1,3)),cell2mat(L1.Oktav1(1,4)));
dog1_4=find_dog(cell2mat(L1.Oktav1(1,4)),cell2mat(L1.Oktav1(1,5)));

figure,
multi3 = cat(1,dog1_1,dog1_2, dog1_3,dog1_4);
montage(multi3);

dog2_1=find_dog(cell2mat(L2.Oktav2(1,1)),cell2mat(L2.Oktav2(1,2)));
dog2_2=find_dog(cell2mat(L2.Oktav2(1,2)),cell2mat(L2.Oktav2(1,3)));
dog2_3=find_dog(cell2mat(L2.Oktav2(1,3)),cell2mat(L2.Oktav2(1,4)));
dog2_4=find_dog(cell2mat(L2.Oktav2(1,4)),cell2mat(L2.Oktav2(1,5)));

figure,
multi4 = cat(1,dog2_1,dog2_2, dog2_3,dog2_4);
montage(multi4);

dog3_1=find_dog(cell2mat(L3.Oktav3(1,1)),cell2mat(L3.Oktav3(1,2)));
dog3_2=find_dog(cell2mat(L3.Oktav3(1,2)),cell2mat(L3.Oktav3(1,3)));
dog3_3=find_dog(cell2mat(L3.Oktav3(1,3)),cell2mat(L3.Oktav3(1,4)));
dog3_4=find_dog(cell2mat(L3.Oktav3(1,4)),cell2mat(L3.Oktav3(1,5)));

figure,
multi4 = cat(1,dog3_1,dog3_2, dog3_3,dog3_4);
montage(multi4);


for o=0:1:oktav-1
    for s=0:1:scale-1
        sigma(o+1,s+1)=sigma_0*2^(o+s/scale)
    end
end


% G1= fspecial('gaussian',[5,5],sigma(1,1));
% im1=imfilter(original,G1,'same'); 
% % figure,
% % imshow(im1);
% 
% G2= fspecial('gaussian',[5,5],sigma(1,2));
% im2=imfilter(original,G2,'same');
% % figure,
% % imshow(im2);
% 
% G3= fspecial('gaussian',[5,5],sigma(1,3));
% im3=imfilter(original,G3,'same');
% % figure,
% % imshow(im3);
% 
% G4= fspecial('gaussian',[5,5],sigma(1,4));
% im4=imfilter(original,G4,'same')
% % figure,
% % imshow(im4);
% 
% G5= fspecial('gaussian',[5,5],sigma(1,5));
% im5=imfilter(original,G5,'same');
% % figure,
% % imshow(im5);
% 
% G6= fspecial('gaussian',[5,5],sigma(2,1));
% im6=imfilter(original,G6,'same');
% 
% % figure,
% % imshow(im6);
% 
% G7= fspecial('gaussian',[5,5],sigma(2,2));
% im7=imfilter(original,G7,'same');
% % figure,
% % imshow(im7);
% 
% G8= fspecial('gaussian',[5,5],sigma(2,3));
% im8=imfilter(original,G8,'same');
% % figure,
% % imshow(im8);
% 
% G9= fspecial('gaussian',[5,5],sigma(2,4));
% im9=imfilter(original,G9,'same');
% % figure,
% % imshow(im9);
% 
% G10= fspecial('gaussian',[5,5],sigma(2,5));
% im10=imfilter(original,G10,'same');
% % figure,
% % imshow(im10);
% 
% G11= fspecial('gaussian',[5,5],sigma(3,1));
% im11=imfilter(original,G11,'same');
% % figure,
% % imshow(im11);
% 
% 
% G12= fspecial('gaussian',[5,5],sigma(3,2));
% im12=imfilter(original,G12,'same');
% % figure,
% % imshow(im12);
% 
% G13= fspecial('gaussian',[5,5],sigma(3,3));
% im13=imfilter(original,G13,'same');
% % figure,
% % imshow(im13);
% 
% G14= fspecial('gaussian',[5,5],sigma(3,4));
% im14=imfilter(original,G14,'same');
% % figure,
% % imshow(im14);
% 
% 
% G15= fspecial('gaussian',[5,5],sigma(3,5));
% im15=imfilter(original,G15,'same');
% % figure,
% % imshow(im15);
% L1=struct('Oktav1',{{im1,im2,im3,im4,im5}});
% L2=struct('Oktav2',{{im6,im7,im8,im9,im10}});
% L3=struct('Oktav3',{{im11,im12,im13,im14,im15}});
