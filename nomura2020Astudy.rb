h1, m1, h2, m2, k = gets.split.map(&:to_i)
interval = (h2 - h1) * 60 + m2 - m1
puts interval - k
