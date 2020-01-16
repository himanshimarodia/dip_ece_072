clc;
clear; close all;
h=[0.5 -0.5];
 img=imread('lina.jpg');
G = rgb2gray(img);
subplot(221);
imshow(G);
o = [];
for a= 1:168
    o = [o;conv(G(a,:),h)];
end
subplot(222);
imshow(mat2gray(o));
w = linspace(-pi,pi,1000);
H= 0.5*(1-exp(-j*w));

subplot(223);
plot(w,abs(H));
