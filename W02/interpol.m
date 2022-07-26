function a=interpol(x,y)
  n = length(x);
  A = ones(n,n);
  indexX = 1;
  for i=1:n %baris
    for j=2:n %kolom
      A(i,j) = A(i, j-1)*x(indexX);
    endfor
    indexX += 1;
  endfor
  [U, bt]=gauss(A,y);
  a = segitigaAtas(U,bt);
endfunction

function [U, bt] = gauss(A,b)
  n = length(A);
  for j = 1: n-1
    for i = j+1:n
      r = A(i,j)/A(j,j);
      A(i,:) = A(i,:) - r*A(j,:);
      b(i) = b(i)-r*b(j);
    endfor
  endfor
U=A; bt = b;
endfunction

function x = segitigaAtas(U,b)
  n = length(b);
  x = zeros(n,1);
  x(n) = b(n)/U(n,n);
  for i=n-1:-1:1
    x(i) = (b(i) - U(i,i+1:n)*x(i+1:n))/U(i,i);
  endfor
endfunction