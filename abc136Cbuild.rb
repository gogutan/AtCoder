n = gets.to_i
heights = gets.split.map(&:to_i)
previous = heights[0]
heights.shift
heights.each do |height|
  if height < previous
    puts "No"
    exit
  else
    previous = [previous, height - 1].max
  end
end
puts "Yes"
