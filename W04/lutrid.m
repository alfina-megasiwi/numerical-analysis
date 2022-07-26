function [L,U] = lutrid(T)
  [n n] = size(T)
  L = eye(n)
  for i = 1:n-1
    L(i+1,i) = T(i+1,i)/T(i,i);
    T(i+1,i:i+1) = T(i+1,i:i+1) - L(i+1,i)*T(i,i:i+1);
  endfor
  U = triu(T)
