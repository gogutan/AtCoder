r, b = gets.chomp.split
nums = gets.split.map(&:to_i)
s = gets.chomp
if s == r
  puts "#{nums.first - 1} #{nums.last}"
else
  puts "#{nums.first} #{nums.last - 1}"
end
