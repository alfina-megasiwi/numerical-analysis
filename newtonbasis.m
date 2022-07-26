function N = newtonbasis(x,i,t)
  n = length(x);
  N = 1;
  for j=2:i-1
    N = N*(t-x(j-1));
  endfor
