function [R,bt,p] = householdpivot(A,b)
  [m,n] = size(A);
  C = [A b];
  p = 1:n;
  for j = 1:n
    for i = j:n
      f(i) = norm(C(j:m,i));
    endfor
    [x,l] = max(f);
    l = l+j-1 % perlu di-adjust karena f makin lama makin pendek padahal harus menyesuaikan posisi kolom gaberubah
    
    C(:,[j l]) = C(:,[l j]); %tukar kolom
    p([j l]) = p([l j]);
    
    v = C(j:m,j) + sign(C(j,j))*norm(C(j:m,j))-[1;zeros(m-j,1)];
    d = v'*v;
    for k = j:n+1
      C(j:m,k) = C(j:m,k) - ((2*v'*C(j:m,k))/d)*v;
    endfor
  endfor
  R = C(1:m, 1:n)
  bt = C(1:m, n+1)