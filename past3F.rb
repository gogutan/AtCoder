n = gets.to_i
strings = []
n.times { strings << gets.chomp.chars }
strings_reversed = strings.reverse
ans = []
n.times do |i|
  ans[i] = (strings[i] & strings_reversed[i]).first
end
puts ans.compact.size == n ? ans.join : -1
