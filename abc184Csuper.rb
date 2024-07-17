def reachable? (r1, c1, r2, c2)
  r1 + c1 == r2 + c2 || r1 - c1 == r2 - c2 || ((r1 - r2).abs + (c1 - c2).abs) <= 3
end

r1, c1 = gets.split.map(&:to_i)
r2, c2 = gets.split.map(&:to_i)
step = 0

until reachable?(r1, c1, r2, c2)
  step += 1
  r_dist = (r1 - r2).abs
  c_dist = (c1 - c2).abs
  movable = (r_dist + c_dist) / 2
  if r1 < r2
    r1 += movable
  else
    r2 += movable
  end
  if c1 < c2
    c1 += movable
  else
    c2 += movable
  end
end

puts (r1 == r2 && c1 == c2) ? step : step + 1
