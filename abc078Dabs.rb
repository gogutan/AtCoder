n, z, w = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
option_1 = (w - numbers[n - 1]).abs
if n > 1
  option_2 = (numbers[n - 2] - numbers[n - 1]).abs
else
  option_2 = 0
end
puts [option_1, option_2].max
