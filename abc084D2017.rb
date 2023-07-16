require 'prime'

INF = 10 ** 5
q = gets.to_i
questions = []
q.times do
  questions << gets.split.map(&:to_i)
end

prime_nums = Array.new(INF + 2, false)

1.upto(INF + 1) do |num|
  prime_nums[num] = num.prime?
end

cumulative_alike_nums = Array.new(INF + 1, 0)

1.upto(INF) do |num|
  cumulative_alike_nums[num] = cumulative_alike_nums[num - 1]
  cumulative_alike_nums[num] += 1 if prime_nums[num] && prime_nums[(num + 1) / 2]
end

questions.each do |first, last|
  puts cumulative_alike_nums[last] - cumulative_alike_nums[first - 1]
end
