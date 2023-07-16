N, M = gets.split.map(&:to_i)
edges = Array.new(N) { [] }

M.times do
  a, b = gets.split.map(&:to_i)
  # 頂点は全て処理しやすいように -1 する 
  edges[a - 1].push(b - 1)
end
# スタートとゴールも -1 する
S, T = gets.split.map(&:to_i).map(&:pred)

# 距離を格納するための配列
# 3の倍数、余り1、余り2のステップで到達した時の、最短距離をそれぞれ格納
dist = Array.new(N) { Array.new(3) }
que = [[S, 0]]
# BFSでdistを埋めていく
while !que.empty?
  start, step = que.shift
  # 3つのうちどこに格納すべきか判断するための変数
  next_step = (step + 1) % 3
  edges[start].each do |edge|
    # 任意の頂点、ステップ（3の倍数か、余り1か、余り2か）が埋まっていない場合のみ埋める
    # BFSで埋めているので、先に埋めた方が最短距離であるため更新はしない
    unless dist[edge][next_step]
      dist[edge][next_step] = step + 1
      # キューにスタート地点と今までにかかったステップ数を入れる
      que.push([edge, step + 1])
    end
  end
end

ans = dist[T][0] || -3
puts ans/3