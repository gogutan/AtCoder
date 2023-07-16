s = gets.chomp.split("")
ans = 0
while ans == 0
  s.pop
  if s.size.odd?
    next
  else
    if s[0...s.size / 2] == s[s.size / 2..-1]
      ans = s.size
    end
  end
end
puts ans
