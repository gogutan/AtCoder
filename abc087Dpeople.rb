INF = 10 ** 10
n, m = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
# 重み付き有向グラフ
edges.each do |f, t, w|
  graph[f] << [f, t, w]
  graph[t] << [t, f, -w]
end

# 全ての頂点 pos を仮に定める
# グラフが非連結な場合があるため、BFS を繰り返す
pos = Array.new(n + 1, INF)
(1..n).each do |node|
  if pos[node] == INF
    queue = [[node, node, 0]]
    until queue.empty?
      from, to, weight = queue.shift
      # 既に pos が仮決めされている場合は飛ばす
      next if pos[to] != INF
      pos[to] = weight
      graph[to].each do |f, t, w|
        # 逆流しないようにする（両方のグラフに入れているので必ず1つ該当する）
        next if t == from
        queue << [f, t, w + weight]
      end
    end
  end
end

# 仮決めした頂点 pos が全て正しいかどうかを確認する
puts edges.all? { |f, t, w| pos[f] + w == pos[t] } ? "Yes" : "No"
