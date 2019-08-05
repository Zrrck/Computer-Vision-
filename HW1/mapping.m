function [] = mapping(image,gama)

[h,w]=size(image)
I = zeros(1,h*w);
x=1;
for i= 1 : 1 : h
    for j = 1 : 1 : w
        I(x) = image(i,j);
        x=x+1;
    end
end
[Y,I] = sort(I);
s= Y.^gama;

out=uint8(255 * mat2gray(s));
plot(Y,out);
end