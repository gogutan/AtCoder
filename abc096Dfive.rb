require 'prime'
primes_end_with_one = Prime.each(55555).select { |n| n.to_s[-1] == "1" }
n = gets.to_i
puts primes_end_with_one[0...n].join(" ")
