img = imread('sunflower.jpg');
img = rgb2gray(img);

img = imresize(img,[256,256]);

sqmask1 = zeros(256,256);
sqmask2 = zeros(256,256);

%making square mask
for i=1:256
    for j=1:256
        if i>64 && i<=192 && j>64 && j<=192
            sqmask1(i,j)=1;
        end
    end
end

%making circular mask
for i=1:256
    for j=1:256
        if (i-128)^2+(j-128)^2<=128^2
            sqmask2(i,j)=1;
        end
    end
end


sqmask1 = uint8(sqmask1);
sqmask2 = uint8(sqmask2);



%applying square mask to image
img1 = img.*sqmask1;

%applying circular mask to image
img2 = img.*sqmask2;

subplot(1,2,1), imshow(img1);
subplot(1,2,2), imshow(img2);

