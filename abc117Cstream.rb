n, m = gets.chomp.split(" ").map(&:to_i)
xs = gets.chomp.split(" ").map(&:to_i)
xs.sort!
previous = nil
abss = []

xs.each do |x|
  if previous == nil
    previous = x
  else
    abss << x - previous
    previous = x
  end
end

abss.sort!

(n - 1).times do
  abss.pop
end

abss << 0

puts abss.inject(:+)