n = gets.to_i
array = []
n.times do
  array << gets.split.map(&:to_i)
end

memo = {}
array.combination(2).each do |(from_x, from_y), (to_x, to_y)|
  x_dist = from_x - to_x
  y_dist = from_y - to_y
  gcd = x_dist.gcd(y_dist)
  divided_x_dist = x_dist / gcd
  divided_y_dist = y_dist / gcd
  memo["#{divided_x_dist}_#{divided_y_dist}"] = true
  memo["#{-divided_x_dist}_#{-divided_y_dist}"] = true
end

puts memo.size
