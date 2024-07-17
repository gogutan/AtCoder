def reachable? (r1, c1, r2, c2)
  r1 + c1 == r2 + c2 || r1 - c1 == r2 - c2 || ((r1 - r2).abs + (c1 - c2).abs) <= 3
end

def distance(r1, c1, r2, c2)
  (r1 - r2).abs + (c1 - c2).abs
end

def diff(r1, c1, r2, c2)
  ((r1 - r2).abs - (c1 - c2).abs).abs
end

def step(r1, c1, r2, c2)
  if r1 == r2 && c1 == c2
    0
  elsif reachable?(r1, c1, r2, c2)
    1
  elsif distance(r1, c1, r2, c2).even? || distance(r1, c1, r2, c2) <= 6 || diff(r1, c1, r2, c2) <= 4
    2
  else
    3
  end
end

r1, c1 = gets.split.map(&:to_i)
r2, c2 = gets.split.map(&:to_i)

puts step(r1, c1, r2, c2)
