function f = polynewton(x,c,t)
  n = length(c);
  f = 0;
  for i = 1:n
    f = f+c(i)*newtonbasis(x,i,t);
  endfor
