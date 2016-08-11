function val = imgadd(x,y)

x = rgb2gray(x);
y = rgb2gray(y);

if size(x) == size(y)
    s = size(x);
    height = s(1);
    width = s(2);
    
    for i = 1:height
        for j = 1:width
            x(i,j) = x(i,j)+y(i,j);
            if x(i,j)>255
                x(i,j)=255;
            end
        end
    end
    val = x;
else
    error('images are not in same size');
end
end
