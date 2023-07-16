s = gets.chomp
count = -1
previous = ""
s.chars do |char|
  if char != previous
    count += 1
    previous = char
  end
end
puts count
