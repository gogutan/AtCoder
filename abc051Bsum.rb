k, s = gets.split.map(&:to_i)
sum = 0
(0..k).each do |num|
  rest = s - num
  sum += [[(k * 2) - rest + 1, rest + 1].min, 0].max
end
puts sum

# k, s = gets.split.map(&:to_i)
# sum = 0
# (0..k).each do |num1|
#   (0..k).each do |num2|
#     if num1 + num2 <= s && num1 + num2 + k >= s
#       sum += 1
#     end
#   end
# end
# puts sum
