function [image8Bit] = pekistirme_powerlaw(I,gama)

[h,w] = size(I);

I2= ones(h,w);

for i=1:1:h
    for j=1:1:w
       
      I2(i,j) =double(I(i,j)).^gama;
    end
    end

image8Bit = uint8(255 * mat2gray(I2));
end