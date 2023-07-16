n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
max = [k, n - k + 1].min
array = (1..n).map do |i|
  dist_from_edge = [i, n - (i - 1)].min
  [dist_from_edge, max].min
end

nums.each_with_index do |num, i|
  nums[i] *= array[i]
end
puts nums.inject(:+)
