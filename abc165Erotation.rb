n, m = gets.split.map(&:to_i)
former = (1..m).to_a
latter = (m + 1..2 * m + 1).to_a
rest = m
while rest > 0 && former.size > 1
  puts "#{former.shift} #{former.pop}"
  rest -= 1
end
while rest > 0 && latter.size > 1
  puts "#{latter.shift} #{latter.pop}"
  rest -= 1
end
