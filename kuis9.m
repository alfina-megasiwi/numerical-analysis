function solution = kuis9(x)
    for i = 1:10
        langkah = i
        F = fungsi(x)
        J = jacobian(x)
        d = J\F;
        x = x-d
    end
  end