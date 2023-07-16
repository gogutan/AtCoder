x = gets.to_i
mod = x % 100
neccesary = (mod / 5.0).ceil
(neccesary - 1).times do
  x -= 105
end
if x >= 100
  puts 1
else
  puts 0
end
