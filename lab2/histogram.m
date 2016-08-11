function v = histogram(img)
    [m,n] = size(img);
    h = zeros(1,256);    
        for i = 1:m
            for j = 1:n
                h(img(i,j)+1)=h(img(i,j)+1)+1;
            end
        end
       
    
    v=h;
end
    