n = gets.to_i
memo = Array.new(10) { Array.new(10, 0) }
memo_reverse = Array.new(10) { Array.new(10, 0) }
1.upto(n) do |num|
  next if num % 10 == 0
  s = num.to_s
  memo[s[0].to_i][s[-1].to_i] += 1
  memo_reverse[s[-1].to_i][s[0].to_i] += 1
end
memo_flatten = memo.flatten
memo_reverse_flatten = memo_reverse.flatten
sum = 0
100.times do |i|
  sum += memo_flatten[i] * memo_reverse_flatten[i]
end
puts sum
