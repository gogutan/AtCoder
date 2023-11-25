n = gets.to_i
s = gets.chomp
sum = 0
current_sum = 0
s.each_char do |c|
  if c == '<'
    current_sum = 0
  else
    current_sum += 1
    sum += current_sum
  end
end
puts sum
