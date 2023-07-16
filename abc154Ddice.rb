n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
expects = nums.map { |n| (1 + n) / 2.0 }
first_expected = expects[0...k].inject(:+)
array = [first_expected]
(0...n - k).each do |i|
  first_expected -= expects[i]
  first_expected += expects[i + k]
  array << first_expected
end
puts array.max
