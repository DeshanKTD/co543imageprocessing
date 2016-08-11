function val = bitslice(img,planes)
    img = rgb2gray(img);
    [m,n] = size(img);
    padd = size(planes);
    val = zeros(m,n);
    
    for i=1:padd
        val = bitset(val,planes(i),bitget(img,planes(i)));
    end
    val = uint8(val);
end