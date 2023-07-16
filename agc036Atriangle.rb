# solving

require 'prime'
# 約数リスト
def divisors(n)
  n.prime_division.inject([1]) do |array, (k, v)|
    (0..v).map{ |i| k ** i }.product(array).map{ |a, b| a * b }
  end.sort
end

s = gets.to_i
x = divisors(s).reverse.bsearch { |n| n <= 10 ** 9 }
puts "0, 0, #{x}, 0, #{x}, #{s / x}"