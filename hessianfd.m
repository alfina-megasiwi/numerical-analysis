function H = hessianfd(x)
  n = length(x);
  h = 10^-5;
  for i = 1:n
    xih = x;
    xih(i) = xih(i)+h;
    f = fung(x);
    fih = fung(xih);
    for j = i:n
      xjh = x;
      xjh(j) = xjh(j)+h;
      fjh = fung(xjh);
      xijh = xih;
      xijh(j) = xijh(j)+h;
      fijh = fung(xijh);
      H(i,j) = (fijh-fjh-fih+f)/h^2;
      H(j,i) = H(i,j);
    endfor
  endfor
endfunction
