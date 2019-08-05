function [O1_DoG] = find_dog(im1,im2)


% [L1,L2,L3]=gauss_scale_space(original,sigma_0);
% if octave_level == 1 
%     
%    im1= cell2mat(L1.Oktav1{1});
%    im2=cell2mat(L1.Oktav1{2});
%    O1_DoG= im1-im2;
%    figure,imshow(uint8(O1_DoG));
% end
O1_DoG= im1-im2;
end
