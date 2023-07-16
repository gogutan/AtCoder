l1, l2, l3 = gets.chomp.split(" ").map(&:to_i)
case l1
when l2
  puts l3
when l3
  puts l2
else
  puts l1
end