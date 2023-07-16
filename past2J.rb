# reference: https://qiita.com/anqooqie/items/191ad215e93237c77811
s = gets.chomp
while s.include?("(")
  s.sub!(/(\([^()]*\))/) { $1[1..-2] + $1[1..-2].reverse }
end
puts s
