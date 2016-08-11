function y = imagecomlement(img)
    imgn = rgb2gray(img);
    imsize = size(imgn);
    height = imsize(1);
    width  = imsize(2);
    
    for j=1:height
        for i = 1:width
            imgn(j,i) = 256-imgn(j,i);
        end
    end
            
    y = imgn;
end
    
    