n = gets.to_i
s = gets.chomp.split("")
if s[0...s.length / 2] == s[s.length / 2..-1]
  puts "Yes"
else
  puts "No"
end
