n = gets.to_i
numbers = gets.split.map(&:to_i)
count = 0
numbers.each_with_index do |number, index|
  count += 1 if number != index + 1
end
if count == 0 || count == 2
  puts "YES"
else
  puts "NO"
end