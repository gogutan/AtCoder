MOD = 10 ** 9 + 7
n = gets.to_i
nums = gets.split.map(&:to_i)
nums.sort!
possible = true
nums.each_with_index do |num, index|
  index += 1 if (n.odd? && index.odd?) || (n.even? && index.even?)
  unless num == index
    possible = false
    break
  end
end

factorial_count = n / 2

ans = 1
if possible
  factorial_count.times do
    ans = ans * 2 % MOD
  end
else
  ans = 0
end

puts ans
