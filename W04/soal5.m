function [L,U,P] = soal5(T)
  [n n] = size(T);
  L = eye(n);
  p = 1:n;

  for i = 1:n-1
    [x,m] = max(abs(T(i:n, i)));
    m = m + i - 1;
    T([i m],:) = T([m i],:);
    L([i m],1:i-1) = L([m i],1:i-1);
    p([i m]) = p([m i]);
    L(i+1,i) = T(i+1,i)/T(i,i);
    T(i+1,i:i+1) = T(i+1,i:i+1) - L(i+1,i)*T(i,i:i+1);
  endfor
  U = triu(T);
  P = eye(n)(p,:);
