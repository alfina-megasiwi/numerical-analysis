Tebakan awal x0
while(abs(f(x0))> TOL & itcount < it-max)
  x0 = x0-f(x0)/f'(x0)
  itcount = itcount+1
end