n = gets.to_i
s = gets.chomp
ans = 0
(1...n).each do |i|
  former = s[0...i]
  latter_max = n - i
  trim_size = ans + 1
  tmp = 0
  while trim_size <= latter_max
    if former.include?(s[i, trim_size])
      tmp = trim_size
      trim_size += 1
    else
      break
    end
  end
  ans = tmp if ans < tmp
end
puts ans
