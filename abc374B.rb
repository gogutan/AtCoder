s = gets.chomp
t = gets.chomp
if s == t
  puts 0
else
  size = [s.size, t.size].max
  size.times do |i|
    if s[i] != t[i]
      puts i + 1
      break
    end
  end
end
