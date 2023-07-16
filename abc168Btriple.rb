k = gets.to_i
s = gets.chomp.split("")
if s.size <= k
  puts s.join
else
  puts "#{s[0...k].join}..."
end
