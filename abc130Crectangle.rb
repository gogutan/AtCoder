w, h, x, y = gets.split(" ").map(&:to_i)

ans1 = (w * h) / 2.0

if x == w / 2.0 && y == h / 2.0
  ans2 = 1
else
  ans2 = 0
end

puts "#{ans1} #{ans2}"