n = gets.to_i
people = []
n.times { people << gets.chomp }
counts = { "M" => 0, "A" => 0, "R" => 0, "C" => 0, "H" => 0 }
people = people.select { |item| ["M", "A", "R", "C", "H"].include?(item[0]) }

people.each do |e|
  counts[e[0]] += 1
end

sum = 0
counts.values.combination(3).to_a.each do |combi|
  sum += combi.inject(:*)
end

puts sum
