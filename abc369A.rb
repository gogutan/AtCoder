a, b = gets.split.map(&:to_i)
if a == b
  puts 1
elsif (a - b).odd?
  puts 2
else
  puts 3
end
