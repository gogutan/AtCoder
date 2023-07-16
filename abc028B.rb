s = gets.chomp
keys = ("A".."F").to_a
values = Array.new(6, 0)
hash = Hash[[keys, values].transpose]
s.chars { |char| hash[char] += 1 }
puts hash.values.join(" ")
