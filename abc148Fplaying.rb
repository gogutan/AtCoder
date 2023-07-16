# グラフ BFS 最短距離　高橋＜青木 で青木君から1番遠いところ

n, u, v = gets.split.map(&:to_i)
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
# 無向グラフなので両始点のグラフに入れる
edges.each do |f, t|
  graph[f] << [f, t]
  graph[t] << [t, f]
end

takahashi_weights = Array.new(n + 1)
aoki_weights = Array.new(n + 1)
takahashi_queue = [[u, u, 0]]
aoki_queue = [[v, v, 0]]

until takahashi_queue.empty?
  from, to, weight = takahashi_queue.shift
  takahashi_weights[to] = weight
  graph[to].each do |f, t|
    # 逆流しないようにする（両方のグラフに入れているので必ず1つ該当する）
    next if t == from
    takahashi_queue << [f, t, weight + 1]
  end
end

until aoki_queue.empty?
  from, to, weight = aoki_queue.shift
  aoki_weights[to] = weight
  graph[to].each do |f, t|
    # 逆流しないようにする（両方のグラフに入れているので必ず1つ該当する）
    next if t == from
    aoki_queue << [f, t, weight + 1]
  end
end

# 高橋君が先に到着するノード
takahashi_first_nodes = (1..n).each.select { |i| takahashi_weights[i] < aoki_weights[i] }
# 上記のうち、青木君から1番遠いノード
max_index = takahashi_first_nodes.max_by { |i| aoki_weights[i] }
puts aoki_weights[max_index] - 1
