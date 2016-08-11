img1 = imread('town.jpg');
img2 = imread('sunflower.jpg');

imgad = imgadd(img1,img2);
imgsub = imgsubtract(img1,img2);

subplot(1,2,1),imshow(imgad);
subplot(1,2,2),imshow(imgsub);

    