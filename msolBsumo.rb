strings = gets.chomp.split("").map(&:to_s)
lose_sum = 0
strings.each do |string|
  if string == "x"
    lose_sum += 1
  end
end
if lose_sum > 7
  puts "NO"
else
  puts "YES"
end