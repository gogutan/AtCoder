require 'prime'

# 約数リスト
def divisors(n)
  n.prime_division.inject([1]) do |array, (k, v)|
    (0..v).map{ |i| k ** i }.product(array).map{ |a, b| a * b }
  end.sort
end

n, m = gets.split.map(&:to_i)
# n 以上の最小の約数で割る
# 商は n 個以上ある
puts m / divisors(m).bsearch { |i| i >= n }
