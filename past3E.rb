n, m, q = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
colors = gets.split.map(&:to_i)
queries = []
q.times { queries << gets.split.map(&:to_i) }
graph = Array.new(n) { [] }
edges.each do |f, t|
  f -= 1
  t -= 1
  graph[f] << t
  graph[t] << f
end

queries.each do |query, x, y|
  x -= 1
  puts colors[x]
  case query
  when 1
    graph[x].each do |to|
      colors[to] = colors[x]
    end
  else
    colors[x] = y
  end
end
