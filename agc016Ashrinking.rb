s = gets.chomp.split("")
ans = []
("a".."z").each do |alphabet|
  max = 0
  current = 0
  s.each do |c|
    if c == alphabet
      max = current if max < current
      current = 0
    else
      current += 1
    end
  end
  max = current if max < current
  ans << max
end
puts ans.min
