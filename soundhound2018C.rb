n, m, d = gets.split.map(&:to_i)
expected =
  if d == 0
    1 / n.to_f
  else
    double = [n - (d * 2), 0].max
    single = n - double
    (double * 2 + single) / (n ** 2).to_f
  end
puts expected * (m - 1)
