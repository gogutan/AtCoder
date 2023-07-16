n = gets.to_i
s = gets.chomp
num = 0
max = 0
s.chars do |char|
  if char == "I"
    num += 1
    if num > max
      max = num
    end
  else
    num -= 1
  end
end
puts max
