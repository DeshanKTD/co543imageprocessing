function y = flipvr(img)
    imgn = rgb2gray(img);
    imsize = size(imgn);
    height = imsize(1);
    width  = imsize(2);
    
    for j=1:height
        for i = 1:width
            imgi(j,width+1-i) = imgn(j,i);
        end
    end
            
    y = imgi;
end
    
    