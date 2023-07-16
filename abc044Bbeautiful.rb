w = gets.chomp
count_hash = Hash.new(0)
w.each_char { |char| count_hash[char] += 1 }
puts count_hash.values.all? { |i| i.even? } ? "Yes" : "No"
