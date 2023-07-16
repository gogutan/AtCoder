MOD = 10 ** 9 + 7
n = gets.to_i
nums = gets.split.map(&:to_i)
ans = 1
nums.sort.each_with_index do |num, i|
  deducted_num = num - i
  if deducted_num < 1
    ans = 0
    break
  end
  ans *= deducted_num
  ans %= MOD
end
puts ans
