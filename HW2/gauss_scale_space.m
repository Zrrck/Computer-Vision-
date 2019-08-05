
function [L1,L2,L3] =gauss_scale_space(image, sigma_0,filter_size)
oktav=3;
scale =5;

original = im2double(image);
sigma=zeros(3,5);
for o=0:1:oktav-1
    for s=0:1:scale-1
        sigma(o+1,s+1)=sigma_0*2^(o+s/scale);
%         G1= fspecial('gaussian',filter_size,sigma(o+1,s+1));
% 
%         g(o+1,s+1)=imfilter(original,G1,'same');
    end
end




G1= fspecial('gaussian',filter_size,sigma(1,1));
im1=imfilter(original,G1,'same');
% figure,
% imshow(im1);

G2= fspecial('gaussian',filter_size,sigma(1,2));
im2=imfilter(original,G2,'same');
% figure,
% imshow(im2);

G3= fspecial('gaussian',filter_size,sigma(1,3));
im3=imfilter(original,G3,'same');
% figure,
% imshow(im3);

G4= fspecial('gaussian',filter_size,sigma(1,4));
im4=imfilter(original,G4,'same')
% figure,
% imshow(im4);

G5= fspecial('gaussian',filter_size,sigma(1,5));
im5=imfilter(original,G5,'same');
% figure,
% imshow(im5);

G6= fspecial('gaussian',filter_size,sigma(2,1));
im6=imfilter(original,G6,'same');

% figure,
% imshow(im6);

G7= fspecial('gaussian',filter_size,sigma(2,2));
im7=imfilter(original,G7,'same');
% figure,
% imshow(im7);

G8= fspecial('gaussian',filter_size,sigma(2,3));
im8=imfilter(original,G8,'same');
% figure,
% imshow(im8);

G9= fspecial('gaussian',filter_size,sigma(2,4));
im9=imfilter(original,G9,'same');
% figure,
% imshow(im9);

G10= fspecial('gaussian',filter_size,sigma(2,5));
im10=imfilter(original,G10,'same');
% figure,
% imshow(im10);

G11= fspecial('gaussian',filter_size,sigma(3,1));
im11=imfilter(original,G11,'same');
% figure,
% imshow(im11);


G12= fspecial('gaussian',filter_size,sigma(3,2));
im12=imfilter(original,G12,'same');
% figure,
% imshow(im12);

G13= fspecial('gaussian',filter_size,sigma(3,3));
im13=imfilter(original,G13,'same');
% figure,
% imshow(im13);

G14= fspecial('gaussian',filter_size,sigma(3,4));
im14=imfilter(original,G14,'same');
% figure,
% imshow(im14);


G15= fspecial('gaussian',filter_size,sigma(3,5));
im15=imfilter(original,G15,'same');
% figure,
% imshow(im15);
L1=struct('Oktav1',{{im1,im2,im3,im4,im5}});
L2=struct('Oktav2',{{im6,im7,im8,im9,im10}});
L3=struct('Oktav3',{{im11,im12,im13,im14,im15}});