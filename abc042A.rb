nums = gets.chomp.split(" ").map(&:to_i)
if nums.count(5) == 2 && nums.count(7) == 1
  puts "YES"
else
  puts "NO"
end