n, m = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
edges.each do |from, to|
  graph[from] << to
  graph[to] << from
end
puts graph.all? { |g| g.size.even? } ? "YES" : "NO"
