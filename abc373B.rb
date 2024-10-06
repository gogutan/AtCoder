alphabets = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
s = gets.chomp
current_pos = s.index('A')
ans = 0
alphabets.each_char do |c|
  pos = s.index(c)
  ans += (current_pos - pos).abs
  current_pos = pos
end
puts ans
