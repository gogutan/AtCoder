a = gets.chomp
hash = Hash.new(0)
a.each_char do |c|
  hash[c] += 1
end
ans = 1 + a.size * (a.size - 1) / 2
hash.values.select { |n| n > 1 }.each do |n|
  ans -= n * (n - 1) / 2
end
puts ans
