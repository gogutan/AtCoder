require 'prime'

# 約数リスト
def divisors(n)
  n.prime_division.inject([1]) do |array, (k, v)|
    (0..v).map{ |i| k ** i }.product(array).map{ |a, b| a * b }
  end.sort
end

n = gets.to_i
divisors_of_75 = divisors(75)

hash = Hash.new(0)
(2..n).each do |i|
  Prime.prime_division(i).each do |pr, n|
    hash[pr] += n
  end
end

nums = hash.values.map { |num| num + 1 }
possible_divisors = []
nums.each do |num|
  possible_divisors << (2..num).select{ |num| divisors_of_75.include?(num) }
end

ans = [1]
possible_divisors.each do |divs|
  tmp = []
  divs.each do |div|
    ans.each do |a|
      next if div * a > 75
      tmp << div * a
    end
  end
  ans += tmp
end

puts ans.count(75)
