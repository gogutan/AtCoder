N = gets.to_i
A = gets.to_i
B = gets.to_i
sum = 0
N.downto(0) do |num|
  original_num = num
  digit_sum = 0
  while num >= 1
    digit_sum += num % 10
    num /= 10
  end
  if digit_sum >= A && digit_sum <= B
    sum += original_num
  end
end
puts sum