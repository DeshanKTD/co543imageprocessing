img = imread('sunflower.jpg');

imggray = rgb2gray(img);

h = histogram(img);
%plotting gray scale histogram
figure,bar(h,'black');

r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);

figure,
%plotting rgb histograms
subplot(3,1,1),bar(histogram(r),'red');
subplot(3,1,2),bar(histogram(g),'green');
subplot(3,1,3),bar(histogram(b),'blue');