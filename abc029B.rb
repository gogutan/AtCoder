strings = []
12.times { strings << gets.chomp }
sum = 0
strings.each do |s|
  sum += 1 if s.include?("r")
end
puts sum
