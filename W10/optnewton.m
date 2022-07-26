function [x0, count] = optnewton(x0,tol,maxiter)
  g = gradfd(x0);
  count = 1;
  while norm(g)>tol && count<maxiter
    H = hessianfd(x0);
    d = H\g;
    x0 = x0-d;
    g = gradfd(x0);
    count = count +1;
  endwhile
endfunction
