n, x = gets.split.map(&:to_i)
s = gets.chomp.split("")
s.each do |a|
  if a == "x"
    x -= 1
    x = 0 if x < 0
  else
    x += 1
  end
end
puts x
