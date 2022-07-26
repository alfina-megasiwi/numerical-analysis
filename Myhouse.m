function [R,bt1,bt2] = Myhouse(A,b)
  [m,n] = size(A);
  C = [A b];
  for j=1:n
    v = C(j:m,j)+sign(C(j,j))*norm(C(j:m,j))*[1;zeros(m-j,1)];
    for i=j:n+1
      C(j:m,i)=C(j:m,i)-(2*v'*C(j:m,i)/(v'*v))*v;
    endfor
  endfor
  R = C(1:n,1:n);
  bt1 = C(1:n,n+1);
  bt2 = C(n+1:m,n+1);