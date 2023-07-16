n = gets.to_i
cities = []
n.times { cities << gets.split.map(&:to_i) }
def distance(x1, y1, x2, y2)
  Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)
end

array = []
cities.combination(2).each do |(x1, y1), (x2, y2)|
  array << distance(x1, y1, x2, y2)
end

sum = array.inject(:+)
avg = sum / array.size
puts avg * (n - 1)
