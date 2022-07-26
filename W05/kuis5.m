% command syntax kuis 5
A = rand(5,3)
b = rand(5,1)
x_normal = A\b

% Kolom 1 baris 2:5 zeroing
A1 = A
b1 = b
u1 = A1(:,1)
u2 = A1(:,2)
u3 = A1(:,3)
vh1 = u1 + sign(A1(1,1))*norm(u1,2)*[1;0;0;0;0]
A1(:,1) = u1 - 2*(vh1'*u1)/(vh1'*vh1)*vh1
A1(:,2) = u2 - 2*(vh1'*u2)/(vh1'*vh1)*vh1
A1(:,3) = u3 - 2*(vh1'*u3)/(vh1'*vh1)*vh1
b1 = b1 - 2*(vh1'*b1)/(vh1'*vh1)*vh1

% Kolom 2 baris 3:5 zeroing
A2 = A1
b2 = b1
u2 = A2(2:5,2)
u3 = A2(2:5,3)
vh2 = u2 + sign(A2(2,2))*norm(u2,2)*[1;0;0;0]
A2(2:5,2) = u2 - 2*(vh2'*u2)/(vh2'*vh2)*vh2
A2(2:5,3) = u3 - 2*(vh2'*u3)/(vh2'*vh2)*vh2
b2(2:5) = b2(2:5) - 2*(vh2'*b2(2:5))/(vh2'*vh2)*vh2

% Kolom 3 baris 4:5 zeroing
A3 = A2
b3 = b2
u3 = A3(3:5,3)
vh3 = u3 + sign(A1(3,3))*norm(u3,2)*[1;0;0]
A3(3:5,3) = u3 - 2*(vh3'*u3)/(vh3'*vh3)*vh3
b3(3:5) = b3(3:5) - 2*(vh3'*b3(3:5))/(vh3'*vh3)*vh3

% check apakah norm 2 error matrix tereduksi sama dengan 
% norm 2 error solusi persamaan normal
A
A1
A2
A3
b
b1
b2
b3
x_normal
x_hh = A3(1:3,1:3)\b3(1:3)

error_xnormal = norm(A*x_normal-b,2)
error_xhh = b3(4:5)