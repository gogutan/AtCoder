n = gets.to_i
balls = gets.split.map(&:to_i)

memo = [0, 0, 1]
3.upto(200_000) do |i|
  memo[i] = memo[i - 1] * i / (i - 2)
end

hash_memo = Hash.new(0)

balls.each do |ball|
  hash_memo[ball] += 1
end

sum = 0
balls.uniq.each do |ball|
  sum += memo[hash_memo[ball]]
end

# puts sum

balls.each do |ball|
  # original_count = hash_memo[ball]
  # original = memo[hash_memo[ball]]
  # deduction = original * original_count
  deduction = memo[hash_memo[ball]]
  increment = memo[hash_memo[ball] - 1]
  puts sum - deduction + increment
end

