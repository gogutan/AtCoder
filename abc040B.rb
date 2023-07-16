area = gets.to_i
options = []
1.upto(area) do |num|
  h = num
  w = area / h
  options << [h, w, (area - h * w) + (h - w).abs]
end
puts options.transpose[2].min
