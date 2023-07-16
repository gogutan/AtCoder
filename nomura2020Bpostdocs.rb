t = gets.chomp.split("")
t.size.times do |from|
  if t[from] == "?"
    t[from] = "D"
  end
end
puts t.join
