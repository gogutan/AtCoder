s = gets.chomp.to_s
t = gets.chomp.to_s

end_point = s.size - t.size
replace_point = nil
0.upto(end_point) do |start|
  successive_num = 0
  t.size.times do |order|
    if s[start + order] == "?" or s[start + order] == t[order]
      successive_num += 1
      if successive_num == t.size
        replace_point = start
      end
    else
      break
    end
  end
end

if replace_point
  s[replace_point, t.size] = t
  s.gsub!("?", "a")
  puts s
else
  puts "UNRESTORABLE"
end
