function y = imresizeall(img,b)
    img = rgb2gray(img);
    a = size(img);
    height = a(1);
    width = a(2);
    
    height2 = b(1);
    width2 = b(2);
    
    imgn = zeros(height2,width2);
    
    hratio = height/height2;
    wratio = width/width2;
    
    
    for i = 1: height2
        for j = 1: width2
            x = floor(j*wratio);
            y = floor(i*hratio);
            if x>width-1
                x=width-1;
            end
            if y>height-1
                y=height-1;
            end
            imgn(i,j) = img(y+1,x+1);
            
        end
    end
   
    y= uint8(imgn);
end
    
                        