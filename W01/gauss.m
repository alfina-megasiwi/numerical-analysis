function [U, bt] = gauss(A,b)
  n = length(A);
  for j = 1:n-1
    for i = j+1:n
      r=A(i,j)/A(j,j);
      A(i,:) = A(i,:) - r*A(j,:);
      b(i) = b(i) - r*b(j); 
    endfor
  endfor
  U = A
  bt = b
 endfunction
  