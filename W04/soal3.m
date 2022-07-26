n = 100;
# membangkitkan matrik tridiagonal 
T= zeros(n);
v = 1:n;
for j=1:n
 T(j,j) = v(j);
endfor
for j=1:n-1
 T(j,j+1) = v(j)^2;
 T(j+1,j) = 2*v(j)+1;
endfor   

# membangkitkan vektor b 
b = rand(n,1);
[L,U] = soal2(T);

#LUx=b
#Ly=b
#Ux=y
y = segitigaBawah(L,b);
x = segitigaAtas(U,y);
backward_error = T*x - b;
L,U,x, backward_error

