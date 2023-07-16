n, a, b = gets.split.map(&:to_i)
cities = gets.split.map(&:to_i)
walking_costs = []
tmp = cities.first
cities.each do |city|
  walking_costs << (city - tmp) * a
  tmp = city
end
costs = walking_costs.map { |c| [c, b].min }
puts costs.inject(:+)
