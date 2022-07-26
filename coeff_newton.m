function c = coeff_newton(x,y)
  n = length(x);
  for i=1:n
    for j=1:i
      A(i,j) = newtonbasis(x,j,x(i));
    endfor
  endfor
  c = segitigaBawah(A,y);