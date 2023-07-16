require 'prime'
k = gets.to_i
k_to_s = k.to_s
k_size = k_to_s.size
if k.even? || k_to_s[k_size - 1] == '5' || k_to_s[k_size - 1] == '0'
  puts -1
  exit
end
tmp = 0
ans = -1
mods = [7 % k]
k.times do |i|
  mods[i + 1] = mods[i] * 10 % k
end
1.upto(k) do |i|
  tmp += mods[i]
  tmp %= k
  if tmp == 0
    ans = i
    break
  end
end
puts ans
