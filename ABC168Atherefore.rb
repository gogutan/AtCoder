n = gets.chomp.split("")
if [2, 4, 5, 7, 9].include?(n.last.to_i)
  puts "hon"
elsif [0, 1, 6, 8].include?(n.last.to_i)
  puts "pon"
else
  puts "bon"
end
