n = gets.to_i
sum = 0
1.upto(n) do |i|
  if i % 3 != 0 && i % 5 != 0
    sum += i
  end
end
puts sum
