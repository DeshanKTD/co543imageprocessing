function val = powertransform(img,gamma,c)
img = rgb2gray(img);
[m,n] = size(img);


for i=1:m
    for j = 1:n
        x = double(img(i,j));
        img(i,j) = c.*x^gamma; 
    end
end

val = img;

end