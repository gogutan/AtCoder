s = gets.chomp
t = gets.chomp

s_dash = s.split("").sort.join
t_dash = t.split("").sort.reverse.join

puts s_dash < t_dash ? "Yes" : "No"
