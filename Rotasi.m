function [R, bt] = Rotasi(A,b)
  [m,n] = size(A);
  E = [A b]
  for j = 1:n %karena b gak dinolin
    for i = j+1:m
      r = sqrt(E(j,j)^2 + E(i,j)^2);
      c = E(j,j)/r;
      s = E(i,j)/r;
      tmp = c*E(j,j:n+1)+s*E(i,j:n+1); %terdapar 4 perkalian skalar dengan vektor maka O(4n)
      E(i,j:n+1) = -s*E(j,j:n+1)+c*E(i,j:n+1);  %terdapar 4 perkalian skalar dengan vektor O(4n)
      E(j,j:n+1) = tmp;
    endfor
  endfor
  R = E(:, 1:n);
  bt = E(:,n+1);