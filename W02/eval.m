function result = eval(coef, a)
  result = 0;
  [n, m]   = size(coef);
  for i=m:-1:2;
    result += coef(i);
    result *= a;
  endfor
  result += coef(1);
endfunction