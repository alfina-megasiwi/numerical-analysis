function p = lagrange(x,y,t)
  n = length(x);
  p = 0;
  for i=1:n
    l(i) = 1;
    for j=1:n
      if j!=i
        l(i) = l(i)*((t-x(j)))/(x(i)-x(j));
      endif
    endfor
    p = p+y(i)*l(i);
  endfor
