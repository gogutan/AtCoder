n = gets.to_i
original_n = n
digit_sum = 0
while n > 0 do
  digit_sum += n % 10
  n /= 10
end
if original_n % digit_sum == 0
  puts "Yes"
else
  puts "No"
end