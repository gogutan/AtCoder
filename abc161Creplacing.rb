n, k = gets.split.map(&:to_i)
n = n % k
puts [n, (n - k).abs].min
