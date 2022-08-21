n = gets.to_i
nums = gets.split.map(&:to_i).sort.reverse
options = nums[0..2].permutation.map do |a, b, c|
  (a.to_s + b.to_s + c.to_s).to_i
end
puts options.max
