function [L,d] = LDLT(A)
  [n,n] = size(A)
  L = eye(n)
  for j = 1:n-1
    j
    d(j) = A(j,j)
    for i = j+1:n
      i
      L(i,j) = A(j,i)/A(j,j)
      A(i,j:n) = A(i,j:n)-L(i,j)*A(j,j:n)
    endfor
  endfor
  d(n) = A(n,n)

##0.4864   0.7640   1.1107   0.3482
##0.7640   1.4866   1.6503   0.3129
##1.1107   1.6503   2.6177   0.8368
##0.3482   0.3129   0.8368   0.80
   
##>> LDLT(A)
##n = 4
##n = 4
##L =
##
##Diagonal Matrix
##
##   1   0   0   0
##   0   1   0   0
##   0   0   1   0
##   0   0   0   1
##
##j = 1
##d = 0.4864
##i = 2
##L =
##
##   1.0000        0        0        0
##   1.5709   1.0000        0        0
##        0        0   1.0000        0
##        0        0        0   1.0000
##
##A =
##
##   0.4864   0.7640   1.1107   0.3482
##        0   0.2863  -0.0945  -0.2341
##   1.1107   1.6503   2.6177   0.8368
##   0.3482   0.3129   0.8368   0.8024
##
##i = 3
##L =
##
##   1.0000        0        0        0
##   1.5709   1.0000        0        0
##   2.2836        0   1.0000        0
##        0        0        0   1.0000
##
##A =
##
##   0.4864   0.7640   1.1107   0.3482
##        0   0.2863  -0.0945  -0.2341
##        0  -0.0945   0.0814   0.0416
##   0.3482   0.3129   0.8368   0.8024
##
##i = 4
##L =
##
##   1.0000        0        0        0
##   1.5709   1.0000        0        0
##   2.2836        0   1.0000        0
##   0.7159        0        0   1.0000
##
##A =
##
##   0.4864   0.7640   1.1107   0.3482
##        0   0.2863  -0.0945  -0.2341
##        0  -0.0945   0.0814   0.0416
##        0  -0.2341   0.0416   0.5531
##
##j = 2
##d =
##
##   0.4864   0.2863
##
##i = 3
##L =
##
##   1.0000        0        0        0
##   1.5709   1.0000        0        0
##   2.2836  -0.3301   1.0000        0
##   0.7159        0        0   1.0000
##
##A =
##
##   0.4864   0.7640   1.1107   0.3482
##        0   0.2863  -0.0945  -0.2341
##        0        0   0.0502  -0.0357
##        0  -0.2341   0.0416   0.5531
##
##i = 4
##L =
##
##   1.0000        0        0        0
##   1.5709   1.0000        0        0
##   2.2836  -0.3301   1.0000        0
##   0.7159  -0.8176        0   1.0000
##
##A =
##
##   0.4864   0.7640   1.1107   0.3482
##        0   0.2863  -0.0945  -0.2341
##        0        0   0.0502  -0.0357
##        0   0.0000  -0.0357   0.3617
##
##j = 3
##d =
##
##   0.486375   0.286320   0.050170
##
##i = 4
##L =
##
##   1.0000        0        0        0
##   1.5709   1.0000        0        0
##   2.2836  -0.3301   1.0000        0
##   0.7159  -0.8176  -0.7117   1.0000
##
##A =
##
##   0.4864   0.7640   1.1107   0.3482
##        0   0.2863  -0.0945  -0.2341
##        0        0   0.0502  -0.0357
##        0   0.0000   0.0000   0.3363



##FINAL RESULT:
##d =
##
##   0.486375   0.286320   0.050170   0.336312
##
##ans =
##
##   1.0000        0        0        0
##   1.5709   1.0000        0        0
##   2.2836  -0.3301   1.0000        0
##   0.7159  -0.8176  -0.7117   1.0000
##
##>>