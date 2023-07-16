n = gets.to_i
points = []
n.times do
  points << gets.split.map(&:to_i)
end
def naname

end
points.combination(3).each do |a, b, c|
  if (a[0] == b[0] && b[0] == c[0]) || (a[1] == b[1] && b[1] == c[1]) || ((a[0] - b[0]).to_f / (a[1] - b[1]) == (b[0] - c[0]).to_f / (b[1] - c[1]))
    puts "Yes"
    exit
  end
end
puts "No"
