INF = 100000
INF2 = 10 ** 5000
n = gets.to_i
nums = gets.split.map(&:to_i)
pow_memo = [1]
# (0..INF).each do |i|
#   if pow_memo[i] < 10 ** 2900
#     pow_memo[i + 1] = pow_memo[i] * 2
#   else
#     pow_memo[i + 1] = pow_memo[i]
#   end
# end

if n == 0 && nums.first == 1
  puts 1
  exit
elsif n == 0 && nums.first == 0
  puts -1
  exit
end

leaves = [1]
rests = [nums.sum]
0.upto(n - 1) do |from|
  tmp = rests[from]
  tmp2 = (leaves[from] - nums[from]) * 2
  tmp = tmp2 if tmp > tmp2
  leaves[from + 1] = tmp
  if tmp < 1
    puts -1
    exit
  end
  rest = rests[from]
  rest -= nums[from + 1]
  # if rest < 1 && from != n - 1
  #   puts -1
  #   exit
  # end
  # if rest != 0 && from == n - 1
  #   puts -1
  #   exit
  # end
  if nums[from + 1] >= tmp && from != n - 1
    puts -1
    exit
  end
  if nums[from + 1] > tmp
    puts -1
    exit
  end
  rests[from + 1] = rest
end

if rests.last != 0
  puts -1
  exit
end

tmp = 1
nums.each do |num|
  tmp -= num
  if tmp < 0
    puts -1
    exit
  end
  tmp *= 2 if tmp < INF2
end

puts leaves.sum
