s = gets.chomp
c_existing = false
f_existing = false
s.each_char do |c|
  if !c_existing && c == "C"
    c_existing = true
  elsif c_existing && c == "F"
    f_existing = true
  end
end
puts c_existing && f_existing ? "Yes" : "No"
