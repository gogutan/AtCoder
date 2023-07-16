h, w = gets.split.map(&:to_i)
horizontal = (h - 1) * w
vertical = (w - 1) * h
puts horizontal + vertical
