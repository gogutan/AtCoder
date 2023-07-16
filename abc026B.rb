n = gets.to_i
radius = []
n.times { radius << gets.to_i }
radius.sort! { |a, b| b <=> a }
red_area = 0
radius.each_with_index do |r, index|
  area = r ** 2 * Math::PI
  red_area += index.even? ? area : -area
end
puts red_area
