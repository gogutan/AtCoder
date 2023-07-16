s = gets.chomp
compressed_array = []
previous = ""
s.each_char do |char|
  if char != previous
    compressed_array << [char, 1]
    previous = char
  else
    compressed_array[-1][1] += 1
  end
end
puts compressed_array.flatten.join
