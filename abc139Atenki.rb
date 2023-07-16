s = gets.chomp.split("")
t = gets.chomp.split("")
ans = 0

s.each_with_index do |char, index|
  t.each_with_index do |char2, index2|
    next if index != index2
    if char == char2
      ans += 1
    end
  end
end
puts ans
