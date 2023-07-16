#tree 木
INF = 1_000_000_000_000_000
n = gets.to_i
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
# 無向グラフなので両始点のグラフに入れる
edges.each do |f, t, w|
  graph[f] << [f, t, w]
  graph[t] << [t, f, w]
end

q, k = gets.split.map(&:to_i)
weights = Array.new(n + 1) { INF }
queue = [[k, k, 0]]

until queue.empty?
  from, to, weight = queue.shift
  weights[to] = [weight, weights[to]].min
  graph[to].each do |f, t, w|
    # 逆流しないようにする（両方のグラフに入れているので必ず1つ該当する）
    next if t == from
    queue << [f, t, w + weight]
  end
end

queries = []
q.times { queries << gets.split.map(&:to_i) }

queries.each do |from, to|
  puts weights[from] + weights[to]
end
