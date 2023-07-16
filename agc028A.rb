n, m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp
lcm = s.size.lcm(t.size)
hash = Hash.new
s.each_char.with_index do |c, i|
  hash[i * lcm / n + 1] = c
end
ans = lcm
t.each_char.with_index do |c, i|
  if hash[i * lcm / m + 1] && hash[i * lcm / m + 1] != c
    ans = -1
    break
  end
end
puts ans
