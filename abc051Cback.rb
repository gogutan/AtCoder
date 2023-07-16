sx, sy, tx, ty = gets.split.map(&:to_i)
w = tx - sx
h = ty - sy
ans = "U" * h + "R" * w + "D" * h + "L" * (w + 1) + "U" * (h + 1) + "R" * (w + 1) + "D" * 1 + "R" * 1 + "D" * (h + 1) + "L" * (w + 1) + "U" * 1
puts ans