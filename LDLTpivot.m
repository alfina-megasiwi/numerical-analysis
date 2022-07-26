function [L,d,p] = LDLTpivot(A)
  [n,n] = size(A)
  L = eye(n);
  p = 1:n;
  for j = 1:n-1
    [x,m] = max(abs(diag(A(j:n,j:n))));
    m = m+j-1
    A([j m], :) = A([m j],:); %tukar baris
    A(:, [j m]) = A(:,[m j]);
    L([j m],1:j-1) = L([m j],1:j-1);
    p([j m]) = p([m j]);
    d(j) = A(j,j);
    for i = j+1:n
      L(i,j) = A(j,i)/A(j,j);
      A(i,j:n) = A(i,j:n) - L(i,j)*A(j,j:n);
    endfor
  endfor
