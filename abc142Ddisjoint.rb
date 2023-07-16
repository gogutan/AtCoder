require 'prime'

a, b = gets.split.map(&:to_i)
gcd = a.gcd(b)
divisions = Prime.prime_division(gcd)
puts divisions.length + 1
