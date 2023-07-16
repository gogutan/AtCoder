n, d = gets.split.map(&:to_i)
spots = []
n.times { spots << gets.split.map(&:to_i) }
ans = 0
spots.each do |x, y|
  if Math.sqrt(x ** 2 + y ** 2) <= d
    ans += 1
  end
end
puts ans
