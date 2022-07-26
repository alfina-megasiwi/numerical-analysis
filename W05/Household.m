function [R,bt] = Household(A,b)
  [m,n] = size(A);
  C = [A b];
  for j = 1:n
    v = C(j:m,j) + sign(C(j,j))*norm(C(j:m,j))-*[1;zeros(m-j,1)];
    d = v'*v;
    for k = j:n+1
      C(j:m,k) = C(j:m,k) - ((2*v'*C(j:m,k))/d)*v;
    endfor
  endfor
  R = C(1:m, 1:n)
  bt = C(1:m, n+1)