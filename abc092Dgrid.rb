a, b = gets.split.map(&:to_i)
grid = []
50.times { grid << ("." * 100).split("") }
50.times { grid << ("#" * 100).split("") }
0.step(48, 2) do |h|
  break if b <= 1
  0.step(99, 2) do |w|
    break if b <= 1
    grid[h][w] = "#"
    b -= 1
  end
end
51.step(99, 2) do |h|
  break if a <= 1
  0.step(99, 2) do |w|
    break if a <= 1
    grid[h][w] = "."
    a -= 1
  end
end
puts "100 100"
grid.each do |r|
  puts r.join
end
