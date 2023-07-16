s, l, r = gets.split.map(&:to_i)
if l <= s && s <= r
  puts s
elsif s < l
  puts l
else
  puts r
end
