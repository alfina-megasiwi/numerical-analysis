function [U,bt] = gausswithppivot(A,b)
  n = length(b);
  A = [A b]
  for j = 1:n-1
    [x,m] = max(abs(A(j:n, j))) % [x,m] xnya besarnya m itu indexnya
    m = m+j-1
    temp = A(j,:);
    A(j,:) = A(m,:);
    A(m,:) = temp;
    % baru dinol-in di bawah pivotnya
    for i = j+1:n
      r=A(i,j)/A(j,j);
      A(i,:) = A(i,:) - r*A(j,:);
    endfor
  endfor
U = A(:,1:n);
bt = A(:, n+1);
endfunction