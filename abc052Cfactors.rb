require 'prime'
MOD = 10 ** 9 + 7
hash = Hash.new(0)

n = gets.to_i
n.downto(1) do |num|
  divisors = Prime.prime_division(num)
  divisors.each do |divisor, count|
    hash[divisor] += count
  end
end

ans = 1
hash.values.each do |value|
  ans *= (value + 1)
end

puts ans % MOD
