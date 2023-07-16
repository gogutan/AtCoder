a, b, c, d = gets.chomp.split(" ").map(&:to_f)
t_win_rate = b / a
a_win_rate = d / c
if t_win_rate > a_win_rate
  puts "TAKAHASHI"
elsif a_win_rate > t_win_rate
  puts "AOKI"
else
  puts "DRAW"
end