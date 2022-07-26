function k = koef(x,y)
  n = length(x);
  A = zeros(n-2,n-2); % n-2 karena k yg kita cari n-2
  b = zeros(n-2,1)
  for i = 2:n-1
    A(i-1,i-1) = 2*(x(i-1)-x(i+1));
    A(i-1,i) = x(i)- x(i+1);
    A(i,i-1) = x(i-1) - x(i);
    b(i-1) = 6*((y(i-1)-y(i))/(x(i-1)-x(i)))-((y(i)-y(i+1)/(x(i)-x(i+1))));
  endfor
  A(n-2,n-2) = 2*(x(n-2)-x(n));
  b(n-2) = 6*((y(n-2)-y(n-1))/(x(n-2)-x(n-1)))-((y(n-1)-y(n)/(x(n-1)-x(n))));
  k = A\b;
  endfunction