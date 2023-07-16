a, b, t = gets.split(" ").map(&:to_i)

cookie_times = t / a

sum = 0

1.upto(cookie_times) do |num|
  sum += b
end

puts sum