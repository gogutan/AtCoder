n = gets.to_i
b_nums = gets.split.map(&:to_i)
b_nums << 10 ** 6
a_nums = []
a_nums << b_nums.first

(1..n - 1).each do |index|
  a_nums << [b_nums[index - 1], b_nums[index]].min
end

puts a_nums.inject(:+)
