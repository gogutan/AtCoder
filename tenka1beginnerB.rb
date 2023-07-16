n = gets.to_i
s = gets.chomp
k = gets.to_i
s.gsub!(/[^#{s[k - 1]}]/, "*")
puts s
