h, w, y, x = gets.split.map(&:to_i)
grid = []
h.times do
  grid << gets.chomp.split('')
end
ans = 1
x -= 1
y -= 1
if grid[y][x] == "#"
  puts 0
  exit
end
(y - 1).downto(0) do |i|
  if grid[i][x] == "."
    ans += 1
  else
    break
  end
end
(y + 1).upto(h - 1) do |i|
  if grid[i][x] == "."
    ans += 1
  else
    break
  end
end
(x - 1).downto(0) do |i|
  if grid[y][i] == "."
    ans += 1
  else
    break
  end
end
(x + 1).upto(w - 1) do |i|
  if grid[y][i] == "."
    ans += 1
  else
    break
  end
end
puts ans
