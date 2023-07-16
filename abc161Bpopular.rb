n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort.reverse
sum = nums.inject(:+)
selected = []
nums.each do |num|
  rate = num.to_f / sum
  if rate >= (1.0 / (4 * m))
    selected << num
  end
end
if selected.size >= m
  puts "Yes"
else
  puts "No"
end
