n, k = gets.split.map(&:to_i)
k = k.abs
num_counts = [0, 0]
n.times do
  num_counts << num_counts.last + 1
end
(n - 1).times do
  num_counts << num_counts.last - 1
end
ans = 0
num_counts_size = num_counts.size
num_counts_size.times do |i|
  break if i + k > num_counts_size - 1
  ans += num_counts[i] * num_counts[i + k]
end
puts ans
