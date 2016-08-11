function val = logtransform(img)
img = rgb2gray(img);
[m,n] = size(img);
c = 255/log10(1+double(max(max(img))));

for i=1:m
    for j = 1:n
        x = double(img(i,j));
        img(i,j) = c.* log10(1+x); 
    end
end

val = img;

end