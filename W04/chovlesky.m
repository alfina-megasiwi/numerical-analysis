function [G] = chovlesky(A)
  [n,n] = size(A);
  G = eye(n);
  for j = 1:n
    G(j,j) = sqrt(A(j,j) - G(j,1:j-1)*G(j,1:j-1)');
    for i = j+1:n
      G(i,j) = (A(i,j) - G(i,1:j-1)*G(j,1:j-1)')/G(j,j);
    endfor
  endfor
  %G(n,n) = sqrt(A(n,n) - G(n,1:n-1)*G(n,1:n-1)');
