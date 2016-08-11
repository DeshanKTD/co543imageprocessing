img = imread('sunflower.jpg');
img = rgb2gray(img);

%add brighness
img1 = addbrightness(img,150);
%subtract brighness
img2 = addbrightness(img,-100);

subplot(3,1,1),imshow(img);
title('original');
subplot(3,1,2),imshow(img1);
title('brigtness added');
subplot(3,1,3), imshow(img2);
title('brightness subtracted');
