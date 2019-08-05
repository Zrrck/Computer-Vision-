clc;clear all;close all;

rgb_org_im = imread('lenna.jpg');
rgb_com_im1= imread('tree.jpg');
rgb_com_im2 = imread('red.jpg')

orginal_image = rgb2gray(imread('lenna.jpg'));
compare_image1 = imread('riceblurred.png');
compare_image2 = imread('coins.png');



[r,g,b]= my_CBIR(rgb_com_im1,rgb_com_im2);



