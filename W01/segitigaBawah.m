function x = segitigaBawah(L,b)
  n = length(b);
  x = zeros(n,1);
  x(1) = b(1)/L(1,1);
  for i = 2:n
    x(i) = (b(i)- L(i, 1:i-1)*x(1:i-1))/L(i,i);
  endfor
endfunction

L = rand(5)
L = tril(L)
b = rand(5,1)
x = segitigaBawah(L,b)
L*x #harus sama dengan b
L * x - b