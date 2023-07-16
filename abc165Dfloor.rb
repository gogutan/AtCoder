a, b, n = gets.split.map(&:to_i)
x = n
if b <= x
  x = b - 1
end
puts (a * x / b).floor - a * (x / b).floor
# n.downto(0) do |x|
#   puts "#{x} の時: #{(a * x / b).floor - a * (x / b).floor}"
# end
