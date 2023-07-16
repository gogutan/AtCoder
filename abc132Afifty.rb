s = gets.chomp.split("").map(&:to_s)
s.sort!
if s[0] == s[1] && s[2] == s[3] && s[1] != s[2]
  puts "Yes"
else
  puts "No"
end