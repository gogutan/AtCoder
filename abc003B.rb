s = gets.chomp.to_s
t = gets.chomp.to_s
ans = "You can win"
s.each_char.with_index do |char, index|
  if char == "@"
    if t[index] =~ /[atcoder@]/
      next
    else
      ans = "You will lose"
      break
    end
  elsif char =~ /[atcoder]/
    if t[index] =~ /[#{char}@]/
      next
    else
      ans = "You will lose"
      break
    end
  else
    if t[index] == char
      next
    else
      ans = "You will lose"
      break
    end
  end
end
puts ans
