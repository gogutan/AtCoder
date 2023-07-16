s = gets.chomp
if s =~ /[a-z]/
  puts "error"
else
  puts s.to_i * 2
end
