s = gets.chomp.split("")
reversed_s = s.reverse
different = 0
s.each_with_index { |char, i| different += 1 if char != reversed_s[i] }
puts different / 2
