function x=plotNo3(coef)
  s = -2:0.1:2;
  z = zeros(length(s),1);
  for i=1:length(s)
    z(i) = eval(coef',s(i));
  endfor
  plot(s,z)
endfunction