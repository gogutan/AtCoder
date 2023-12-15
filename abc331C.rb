n = gets.to_i
nums = gets.split.map(&:to_i)
sorted = nums.tally.sort_by { |k, v| -k }
memo = Hash.new(0)
prev = 0
sorted.each do |k, v|
  prev += k * v
  memo[k] = prev
end
array = memo.sort_by { |k, v| k }
ans = nums.map do |num|
  n = array.bsearch { |k, v| k > num }&.last
  n || 0
end
puts ans.join(" ")
