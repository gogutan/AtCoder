n, m = gets.split.map(&:to_i)
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
# 無向グラフなので両始点のグラフに入れる
edges.each do |f, t|
  graph[f] << t
  graph[t] << f
end
counts = Array.new(n, 0)
m.times do
  node, count = gets.split.map(&:to_i)
  counts[node - 1] += count
end

ans = []
# from, to, count
queue = [[1, 1, 0]]
until queue.empty?
  from, to, count = queue.shift
  count += counts[to - 1]
  ans[to - 1] = count
  graph[to].each do |f, t, w|
    # 逆流しないようにする（両方のグラフに入れているので必ず1つ該当する）
    next if t == from
    queue << [f, t, count]
  end
end
puts ans.join(" ")
