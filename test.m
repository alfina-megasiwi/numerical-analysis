function F = test(x)
  F = zeros(2,1);
  F(1) = 2*x(1)*x(2)-3*x(1)*sin(x(2))-1;
  F(2) = x(1)^2-x(2)^2+4*x(1)*x(2)-2;
  end