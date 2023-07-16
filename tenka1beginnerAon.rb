a, b, c = gets.split.map(&:to_i)
houses = [a, c, b]
if houses == houses.sort || houses == houses.sort.reverse
  puts "Yes"
else
  puts "No"
end
