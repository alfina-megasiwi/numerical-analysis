# basic operation
# change format
format short
x = 1+2*3

# nilai x gk ke-update, kalo mau ke-update gunakan assignment
4*x
2+x
x = x/2
x = 2^8

# identifier case sensitive
X = 3

# 5x akan error
# format short -> versi pendek dari representasi basis 10
# format long -> versi long dari representasi basis 10
format short
x
x = 1/3
format long
x
x = 1/2^100 #kurung, exponential, multiplication/division, substract/addition
format hex # representasi hex dari bilangan
x
format short
clear # menghapus semua variable yg ada di workspace
clc # clean screen
x = 1/3
y = 1/3
who # variable yg ada
x = 1 # muncul (digunakan untuk mendebug)
x = 1; # tidak akan muncul di console
x = 7; b = cos(x), c = cosh(x)
# fungsi trigonometri dalam radian
pi
cos(pi)
# cara convert radian ke derajat
# x radian = 180/pi x derajat
cos(90)
sqrt(4)
log(10) # basis natural
log10(10)
exp(2) # e^2
exp(1) # e
e # e
NaN # bukan bilangan
Inf # termasuk bilangan, infinity
Inf + Inf
NaN*3
3/0
NaN - NaN
Inf - Inf
x = 2
y = exp(x^2)/sqrt(sin(x)) # (e^(x^2))/(sin(x))^1/2

# MATRIX
clear
clc
x = [1,2,3] # matrix baris
y = [1;2;3] # matrix kolom
A = [1,2;3,4]
size(A) # me-return banyak baris dan banyak kolom
[m,n] = size(A)
size(x)

# Mengakses elemen Matrix
x(1) # Octave index mulai dari 1
x(2)
b = [2;1]
# concate A dan b
A(:,3) = b
A(1,2) # Matrix A, baris 1 kolom 2

# Operasi generic matrix
I = eye(10) # Matrix identitas 10x10
X = rand(5,5)# Matrix 5x5 dengan value random
X(:,1) # Semua baris, kolom 1

# update value
X(1,1) = rand()
Y = ones(5,1) # Matrix 1 semua valuenya

X(2,:) # baris 2 MATRIX X semua kolom

# Slicing itu inklusif
X(2,2:5) #baris 2, kolom 2, 3, 4, 5

X = rand(5,2)
Y = rand(2,7)
X * Y # perkalian matrix

X = rand(5,5)
Y = rand(5,5)
X + Y # penjumlahan matrix
X .* Y # mengalikan per-elemen

X' # X transpose
A = rand(5,5)
b = rand(5,1)

# CONCATE A AND b
[A,b] # nambah baris
[A;b']  # nambah kolom

# Range
# vektor baris
x = 1:5
x'
x = 1:2:100
x = 1:0.1:10
x = 1:pi:10

# FOR LOOP
for i = 1:10
  i
end
sum = 0
for i = 1:10
 sum += i;
end
sum

while(sum<200)
sum+=5
end

x = 3
if(x>5)
disp(x)
elseif(x<3)
disp(x*2)
else
disp(x*10)
end

# FUNCTION
x = 5
y = 7
z = x + y
disp(x)

function output_var = contoh(x,y)
  output_var=x*y
end

contoh(3,4)

function [jumlah, kali] = contoh(x,y)
  jumlah = x+y
  kali = x*y
end

[j,k] = contoh(3,4)

# PLOT
# x = 0:0.1:10
# y = x .* 2
# plot(x,y)

x = -1:0.1:1
y = x .^ 2
plot(x,y)


# Running time
function output_var = contoh(x,y)
  tic
  output_var=x*y
  toc
end

contoh(3,4)

# Pembanding
true && false
true || false
~1
x = 1
y = 2
x ~= y

# Matrix lain
zeros(4,4)

# Fungsi Anonymous
myfun = @(x1,x2) x1+x2;
myfun(10,3)


# Invers, you should never use inverse
A = rand(10,10)
inv(A)

A = rand(3,3)
b = rand(3,3)
inv(A)*b
A\b # use this

linspace(1,3,10)