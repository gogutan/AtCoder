a, b, c, d = gets.split(" ").map(&:to_i)

lcm = [c, d].inject{|a,b| a.lcm(b)}
c_divisors = (b / c) - ((a - 1) / c)
d_divisors = (b / d) - ((a - 1) / d)
common_divisors = (b / lcm) - ((a - 1) / lcm)
cd_divisors = c_divisors + d_divisors - common_divisors

ans = b - a + 1 - cd_divisors

puts ans