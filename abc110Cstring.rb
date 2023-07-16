s = gets.chomp.split("").map(&:to_s)
t = gets.chomp.split("").map(&:to_s)
s_tmp = []
t_tmp = []
("a".."z").each do |alphabet|
  s_tmp << s.each_index.select {|i| s[i] == alphabet}
  t_tmp << t.each_index.select {|i| t[i] == alphabet}
end
s_tmp.sort!
t_tmp.sort!
if s_tmp == t_tmp
  puts "Yes"
else
  puts "No"
end