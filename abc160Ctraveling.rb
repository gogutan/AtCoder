k, n = gets.split.map(&:to_i)
houses = gets.split.map(&:to_i)
prev = houses.first
dists = []
houses.each do |house|
  dists << house - prev
  prev = house
end
dists << houses.first + (k - houses.last)
puts k - dists.max
