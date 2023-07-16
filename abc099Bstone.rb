a, b = gets.chomp.split(" ").map(&:to_i)
right_height = 1
2.upto(b - a) do |num|
  right_height += num
end
answer = right_height - b
puts answer