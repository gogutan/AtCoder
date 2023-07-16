n, l = gets.split.map(&:to_i)
s = gets.chomp
tabs = 1
crash = 0
s.each_char do |c|
  if c == "+"
    tabs += 1
  else
    tabs -= 1
  end
  if tabs > l
    crash += 1
    tabs = 1
  end
end
puts crash
