a = gets.chomp.to_i
b = gets.chomp.to_i
n = gets.chomp.to_i

lcm = a.lcm(b)
div, mod = n.divmod(lcm)

ans = mod == 0 ? div * lcm : (div + 1) * lcm

puts ans