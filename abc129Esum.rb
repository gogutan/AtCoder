INF = (10 ** 9 + 7)
L = gets.chomp.to_s
dp_not_tight = 1
dp_tight = 2
L[1..-1].each_char.with_index do |char, index|
  if char == "0"
    dp_not_tight *= 3
  else
    dp_not_tight = dp_not_tight * 3 + dp_tight
    dp_tight *= 2
  end
  if index % 20 == 0
    dp_not_tight %= INF
    dp_tight %= INF
  end
end
puts (dp_not_tight + dp_tight) % INF