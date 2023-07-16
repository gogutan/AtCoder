class Integer
  def combination(k)
    return 1 if k.zero?
    (self - k + 1..self).inject(:*) / k.factorial
  end

  def permutation(k)
    return 1 if k.zero?
    (self - k + 1..self).inject(:*)
  end

  def factorial
    return 1 if self.zero?
    (1..self).inject(:*)
  end
end

n, m = gets.split.map(&:to_i)
candies = gets.split.map(&:to_i)
tmp = 0
hash = Hash.new(0)
candies.each_with_index do |c, i|
  mod = (tmp + c) % m
  hash[mod] += 1
  tmp = mod
end
sum = 0
hash.values.each { |v| sum += v.combination(2) }
sum += hash[0]
puts sum
