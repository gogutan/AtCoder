n = gets.to_i
a = gets.split(" ").map(&:to_i)
abs_a = a.map(&:abs)
answer = abs_a.max - abs_a.min
puts answer