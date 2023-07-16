n = gets.chomp.split("").map(&:to_i)
n.reverse!
n << 0
ans = 0
n.each_with_index do |digit, index|
  if digit <= 4
    ans += digit
  elsif digit == 5
    n[index + 1] += 1 if n[index + 1] >= 5
    ans += 5
  else
    ans += 10 - digit
    n[index + 1] += 1
  end
end
puts ans
