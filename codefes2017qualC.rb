s = gets.chomp.split("")
without_x = s.reject { |c| c == "x" }
unless without_x == without_x.reverse
  puts -1
  exit
end
x_counts = []
current = 0
s.each do |c|
  if c == "x"
    current += 1
  else
    x_counts << current
    current = 0
  end
end
x_counts << current
x_counts_reverse = x_counts.reverse
ans = 0
x_counts.size.times do |i|
  ans += (x_counts[i] - x_counts_reverse[i]).abs
end
puts ans / 2
