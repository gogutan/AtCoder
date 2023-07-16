n = gets.to_i
power = 1
n.times do |num|
  power = power * (num + 1) % 1000000007
end
puts power % 1000000007