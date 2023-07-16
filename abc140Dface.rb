n, k = gets.split.map(&:to_i)
strs = gets.chomp.split("")
previous = strs.first
ans = n - 1
changed_count = 0
strs.each do |str|
  changed_count += 1 if str != previous
  previous = str
end
ans -= changed_count
ans += (k * 2)
puts [ans, n - 1].min
