function g = grad(x)
  g(1) = 4*x(1)-x(2)-5;
  g(2) = -x(1)+8*x(2)+6;
  g = g';
  end