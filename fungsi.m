function F = fungsi(x)
  F = zeros(3,1);
  F(1) = x(1)+x(2)^2+x(1)*x(3)^2-2;
  F(2) = x(2)+x(3)^2+x(2)*x(1)^2-1;
  F(3) = x(3)+x(1)^2+x(3)*x(2)^2-2;
  end