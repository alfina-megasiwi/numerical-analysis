function J = jacob(x)
  J(1,1) = 2*x(2)-3*sin(x(2));
  J(1,2) = 2*x(1)-3*x(1)*cos(x(2));
  J(2,1) = 2*x(1)+4*x(2);
  J(2,2) = -2*x(2)+4*x(1);
  end