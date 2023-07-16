k, x = gets.split.map(&:to_i)
if 500 * k >= x
  puts "Yes"
else
  puts "No"
end
