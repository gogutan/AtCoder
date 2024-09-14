ab, ac, bc = gets.chomp.split
memo = Hash.new(0)
ab == '<' ? memo[:A] += 1 : memo[:B] += 1
ac == '<' ? memo[:A] += 1 : memo[:C] += 1
bc == '<' ? memo[:B] += 1 : memo[:C] += 1
puts memo.filter { |_, v| v == 1 }.keys[0]
