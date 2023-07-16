high, mid, low, k = gets.split.map(&:to_i)
ans = k.even? ? high - mid : mid - high
ans = 'Unfair' if ans.abs > 10 ** 18
puts ans
