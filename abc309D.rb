n1, n2, m = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
graph1 = Array.new(n1 + n2 + 1) { Array.new }
# graph2 = Array.new(n2 + 1) { Array.new }
# 重み付き有向グラフ
edges.each do |f, t|
  # if f <= n1
    graph1[f] << [f, t]
    graph1[t] << [t, f]
  # else
    # graph1[f] << [f, t]
    # graph1[t] << [t, f]
  # end
end

visited = Hash.new(0)
# [dist, to]
queue1 = [[0, 0], [n2, 0]]
# dist1 = 0
p graph1
until queue1.empty?
  dist, to = queue1.shift
  p queue1
  next if visited[to] < dist + 1
  visited[to] = dist + 1 if visited[to] < dist + 1
  p graph1[to]
  graph1[to].each do |from, to|
    queue1.push([dist + 1, to])
  end
end

p visited
