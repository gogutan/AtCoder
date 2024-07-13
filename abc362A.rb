colors = gets.split.map(&:to_i)
color = gets.chomp
if color == 'Red'
  colors.delete_at(0)
elsif color == 'Green'
  colors.delete_at(1)
else
  colors.delete_at(2)
end
puts colors.min
