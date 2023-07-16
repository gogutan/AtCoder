d, n = gets.split(" ").map(&:to_i)
fav =
  if n == 100
    100 ** d * (n + 1)
  else
    100 ** d * n
  end
puts fav