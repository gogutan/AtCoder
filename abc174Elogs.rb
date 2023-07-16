INF = 10 ** 9
n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

ans = (1..INF).bsearch { |min_length|
  cut_count = nums.inject(0) { |res, num| res + (num / min_length.to_f).ceil - 1 }
  cut_count <= k
}

puts ans
