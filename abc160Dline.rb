n, x, y = gets.split.map(&:to_i)
hash = Hash.new(0)
(0...n).each do |start|
  (start + 1...n).each do |goal|
    dist_to_x = ((x - 1) - start).abs
    dist_to_y = ((y - 1) - start).abs
    dist_to_x = dist_to_y + 1 if dist_to_x > dist_to_y + 1
    dist_to_y = dist_to_x + 1 if dist_to_y > dist_to_x + 1
    dist_from_x = (goal - (x - 1)).abs + dist_to_x
    dist_from_y = (goal - (y - 1)).abs + dist_to_y
    hash[[dist_from_x, dist_from_y, (goal - start).abs].min] += 1
  end
end
(1...n).each do |i|
  puts hash[i]
end
