s_1 = gets.chomp.split("")
n = s_1.size
s_2 = s_1[0...(n - 1) / 2]
s_3 = s_1[((n + 3) / 2 - 1)...n]
if s_1 == s_1.reverse && s_2 == s_2.reverse && s_3 == s_3.reverse
  puts "Yes"
else
  puts "No"
end
