function [L, U, p] = LU_pivot(A)
  [n, n] = size(A);
  L = eye(n)
  p = 1:n
  for j = 1:n-1
    [x,m] = max(abs(A(j:n, j)));
    m = m+j-1
    temp = A(j,:);
    A(j,:) = A(m,:);
    A(m,:) = temp;
    L([j m],1:j-1) = L([m j],1:j-1)
    p([j m]) = p([m j])
    for i = j+1:n
      L(i,j) = A(i,j)/A(j,j);
      A(i,:) = A(i,:) - L(i,j)*A(j,:);
    endfor
  endfor
U = A
endfunction