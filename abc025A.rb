s = gets.chomp.to_s
n = gets.chomp.to_i

divmod = (n - 1).divmod(5)

ans = s[divmod[0]] + s[divmod[1]]

puts ans