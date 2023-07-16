x, y = gets.split.map(&:to_i)
0.upto(x) do |crane|
  turtle = x - crane
  if crane * 2 + turtle * 4 == y
    puts "Yes"
    exit
  end
end
puts "No"
