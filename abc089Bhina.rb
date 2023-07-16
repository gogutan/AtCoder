n = gets.to_i
strings = gets.chomp.split
puts strings.include?("Y") ? "Four" : "Three"
