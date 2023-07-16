n, x = gets.split.map(&:to_i)
donuts = []
sum = 0
n.times do
  donuts << gets.to_i
  x -= donuts.last
  sum += 1
end
sum += x / donuts.min
puts sum