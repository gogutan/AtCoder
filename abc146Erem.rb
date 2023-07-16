# solving

n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
array = []
hash = Hash.new(0)
tmp = 0
nums.each do |num|
  tmp += 1
  tmp -= num % k
  tmp = (k + tmp) if tmp < 0
  array << tmp
  hash[tmp] += 1
end
ans = 0
deducted = 0
p array
nums.each_with_index do |num, i|
  i %= k
  deducted %= k
  puts i
  puts deducted
  offset = (i - deducted) % k
  offset = (k + deducted) if offset < 0
  puts offset
  ans += hash[offset]
  deducted += num % k
  hash[array[i]] -= 1
end
puts ans
