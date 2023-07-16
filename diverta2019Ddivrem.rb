require 'prime'

# 約数リスト
def divisors(n)
  n.prime_division.inject([1]) do |array, (k, v)|
    (0..v).map{ |i| k ** i }.product(array).map{ |a, b| a * b }
  end.sort
end

n = gets.to_i
n_divisors = divisors(n)
ans = 0
n_divisors.each do |num|
  tmp = n - num
  next if tmp < 1
  divisor = tmp / num
  ans += divisor if num == n % divisor
end
puts ans
