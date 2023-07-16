n = gets.to_i
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
# 無向グラフなので両始点のグラフに入れる
edges.each do |f, t|
  graph[f] << [f, t]
  graph[t] << [t, f]
end

who_reachable = Array.new(n + 1, 0)

# [from, to, who]
queue = [[1, 1, :fennec], [n, n, :snuke]]
until queue.empty?
  from, to, who = queue.shift
  graph[to].each do |f, t|
    next if t == from || (t == n && who == :fennec) || (t == 1 && who == :snuke)
    who_reachable[t] = who if who_reachable[t] == 0
    queue << [f, t, who]
  end
end

fennec_reachable = who_reachable.count(:fennec)
snuke_reachable = who_reachable.count(:snuke)
puts fennec_reachable > snuke_reachable ? "Fennec" : "Snuke"
