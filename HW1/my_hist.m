function [out] = my_hist(image)
[h,w]=size(image);
hist_image=zeros(1,256);

for i=1:1:h
    for j=1:1:w
        hist_image(image(i,j)+1)=hist_image(image(i,j)+1)+1;
        
        
    end
end

out = hist_image;
end