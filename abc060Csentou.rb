n, t = gets.split.map(&:to_i)
seconds = gets.split.map(&:to_i)
sum = 0
previous = -10 ** 10
seconds.each do |second|
  sum += t
  sum -= [t - (second - previous), 0].max
  previous = second
end
puts sum
