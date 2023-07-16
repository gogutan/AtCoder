n = gets.to_i
nodes = (1..n).to_a
all_edges = nodes.combination(2).to_a
removed_edges = []
limit = n.even? ? n : n - 1
1.upto(limit) do |i|
  removed_edges << [i, limit + 1 - i]
end
edges = all_edges - removed_edges
puts edges.size
edges.each do |edge|
  puts edge.join(" ")
end
