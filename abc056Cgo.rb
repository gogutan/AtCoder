x = gets.to_i
sum = 0
count = 0
while sum < x
  count += 1
  sum += count
end
puts count
