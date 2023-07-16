def side_length(x1, y1, x2, y2)
  x = (x1 - x2).abs
  y = (y1 - y2).abs
  z = Math.sqrt(x ** 2 + y ** 2)
end

xa, ya, xb, yb, xc, yc = gets.split.map(&:to_i)
a = side_length(xa, ya, xb, yb)
b = side_length(xa, ya, xc, yc)
c = side_length(xb, yb, xc, yc)
s = (a + b + c) / 2.0
area = Math.sqrt(s * (s - a) * (s - b) * (s - c))

puts area
