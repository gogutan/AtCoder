n, m, x, y = gets.chomp.split(" ").map(&:to_i)
x_cities = gets.chomp.split(" ").map(&:to_i)
y_cities = gets.chomp.split(" ").map(&:to_i)
x_max = x_cities.max
y_min = y_cities.min
ans = "War"
(x_max + 1..y_min).each do |i|
  if (x + 1..y).include?(i)
    ans = "No War"
    break
  end
end
puts ans