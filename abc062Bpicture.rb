h, w = gets.split.map(&:to_i)
picture = []
picture << ("#" * (w + 2)).split("")
h.times do
  row = gets.chomp.split("")
  row.unshift("#")
  row.push("#")
  picture << row
end
picture << ("#" * (w + 2)).split("")
picture.each do |pic|
  puts pic.join
end
