img = imread('sunflower.jpg');


s = size(img);
height = s(1);
width = s(2);
img = rgb2gray(img);

for i = 1:height
    for j = 1:width
        if(img(i,j)>128)
            img(i,j)=255;
        else
            img(i,j)=0; 
        end
    end
end

imshow(img);