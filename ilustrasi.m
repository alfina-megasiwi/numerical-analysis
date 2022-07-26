function ilustrasi
    x = -10:.1:10;
    y = -10:.1:10;
    [x,y] = meshgrid(x,y);
    keepind = (x^2 + y^2) <= 100;
    x(~keepind) = NaN;
    y(~keepind) = NaN;
    f = ((abs(sin(x).*sin(y).*exp(abs(100-sqrt(x.^2+y.^2)/pi)))+1).^0.1)./10000;
    surf(x,y,f)
end