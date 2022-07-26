function J = jacob2(x)
  n = length(x);
  h = 10^-5;
  for i = 1:n
    for j = 1:n
      xh = x;
      xh(j) = xh(j)+h;
      F = test(x);
      Fh = test(xh);
      J(i,j) = (Fh(i)-F(i))/h;
    end
  end
end