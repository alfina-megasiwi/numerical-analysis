function g = gradfd(x)
  n = length(x);
  h = 10^-5;
  for i = 1:n
    xh = x;
    xh(i) = xh(i) + h;
    f = fung(x);
    fh = fung(xh);
    g(i) = (fh - f)/h;
  end
  g = g';
end