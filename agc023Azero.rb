# 区間和は累積和から引く！！

class Array
  def tally
    self.inject(Hash.new(0)) { |res, e| res[e] += 1; res }
  end
end

n = gets.to_i
nums = gets.split.map(&:to_i)
cumulative_sums = [0]
nums.each { |num| cumulative_sums << cumulative_sums.last + num }
puts cumulative_sums.tally.values.inject(0) { |res, num| res + (num * (num - 1) / 2) }
