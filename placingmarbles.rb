places = gets.chomp.chars
count = 0
places.each do |place|
  if place == "1"
    count += 1
  end
end
puts count