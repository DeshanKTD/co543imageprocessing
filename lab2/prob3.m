img = imread('sunflower.jpg');

img1 = logtransform(img);               %log transformation
img2 = powertransform(img,0.04,100);    %power transformation
img3 = graylecelslice(img,200,80,150);  %gray scale slicing
img4 = bitslice(img,[7,8]);             %bit plane slicing

subplot(4,2,1), imshow(img);
title('log transformation');
subplot(4,2,2), imshow(img1);
subplot(4,2,3), imshow(img);
title('power transformation');
subplot(4,2,4), imshow(img2);
subplot(4,2,5), imshow(img);
title('gray scale slicing');
subplot(4,2,6), imshow(img3);
subplot(4,2,7), imshow(img);
title('bit plane slicing');
subplot(4,2,8), imshow(img4);