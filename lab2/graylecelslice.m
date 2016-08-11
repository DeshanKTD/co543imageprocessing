function val = graylecelslice(img,val,a,b)
img = rgb2gray(img);
[m,n] = size(img);


for i=1:m
    for j = 1:n
        x = img(i,j);
        if x>=a & x<=b
            img(i,j)=val;
        end
    end
end

val = img;

end