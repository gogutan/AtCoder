s = gets.chomp
k = gets.to_i
options = []
(0..s.size - k).each do |index|
  options << s[index, k]
end
puts options.uniq.size
