# INF = 10 ** 4
# $combination_memo = Array.new(INF) { Array.new }
# $permutation_memo = Array.new(INF) { Array.new }
# $factorial_memo = Array.new(INF)

# class Integer
#   def combination(k)
#     if res = $combination_memo[self][k]
#       res
#     elsif k.zero?
#       $combination_memo[self][k] = 1
#     else
#       $combination_memo[self][k] = (self - k + 1..self).inject(:*) / k.factorial
#     end
#   end

#   def permutation(k)
#     if res = $permutation_memo[self][k]
#       res
#     elsif k.zero?
#       $permutation_memo[self][k] = 1
#     else
#       $permutation_memo[self][k] = (self - k + 1..self).inject(:*)
#     end
#   end

#   def factorial
#     if res = $factorial_memo[self]
#       res
#     elsif self.zero?
#       $factorial_memo[self] = 1
#     else
#       $factorial_memo[self] = (self - 1).factorial * self
#     end
#   end
# end

# n = gets.to_i
# coins = []
# n.times { coins << gets.to_i }
# divisors = Array.new(n, 0)
# coins.each_with_index do |coin1, index1|
#   coins.each_with_index do |coin2, index2|
#     divisors[index1] += 1 if coin1 % coin2 == 0
#   end
# end

# probabilities = Array.new(n, 0)
# n.times do |index|
#   probabilities[index] = ((divisors[index] + 1) / 2) / divisors[index].to_f
# end

# puts probabilities.inject(0, :+)

n = gets.to_i
coins = []
n.times { coins << gets.to_i }
ans = 0
coins.each do |coin1|
  count = 0
  coins.each do |coin2|
    count += 1 if coin1 % coin2 == 0
  end
  ok_count = count / 2
  ok_count += 1 if count.odd?
  ans += 1.0 / count * ok_count
end
puts ans
