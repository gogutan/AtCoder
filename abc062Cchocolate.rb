h, w = gets.split.map(&:to_i)
ans = 10 ** 10
(1...h).each do |height|
  half_width, mod = w.divmod(2)
  a = height * w
  b = (h - height) * half_width
  c = (h - height) * (half_width + mod)
  options = [a, b, c]
  gap = options.max - options.min
  ans = gap if ans > gap
end

if h >= 3
  third_height, mod = h.divmod(3)
  min = third_height * w
  max = mod.nonzero? ? (third_height + 1) * w : third_height * w
  gap = max - min
  ans = gap if ans > gap
end

h, w = w, h

(1...h).each do |height|
  half_width, mod = w.divmod(2)
  a = height * w
  b = (h - height) * half_width
  c = (h - height) * (half_width + mod)
  options = [a, b, c]
  gap = options.max - options.min
  ans = gap if ans > gap
end

if h >= 3
  third_height, mod = h.divmod(3)
  min = third_height * w
  max = mod.nonzero? ? (third_height + 1) * w : third_height * w
  gap = max - min
  ans = gap if ans > gap
end

puts ans
