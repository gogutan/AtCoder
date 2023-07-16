n, m = gets.split.map(&:to_i)
cs = gets.split.map(&:to_s)
ds = gets.split.map(&:to_s)
prices = gets.split.map(&:to_i)

ans = 0
cs.each do |c|
  index = ds.find_index(c) || -1
  ans += prices[index + 1]
end

puts ans
