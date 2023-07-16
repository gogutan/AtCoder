h, w = gets.split.map(&:to_i)
costs = []
h.times { edges << gets.split.map(&:to_i) }
memo = Array.new(h) { Array.new(w, INF) }
edges.each do |f, t, w|
  f -= 1
  t -= 1
  memo[f][t] = w
  memo[t][f] = w
end

# TAKAHASHI_HOME を除き、ワーシャルフロイド法 Warshall–Floyd Algorithm
# （除かない場合は n.times ）
(1...n).each do |via|
  (1...n).each do |from|
    (1...n).each do |to|
      memo[from][to] = [memo[from][to], memo[from][via] + memo[via][to]].min
    end
  end
end

next_to_takahashi = []
memo[TAKAHASHI_HOME].each_with_index do |weight, index|
  next_to_takahashi << index if weight < INF
end

shortest = INF
next_to_takahashi.combination(2).each do |from, to|
  shortest = [memo[from][to] + memo[TAKAHASHI_HOME][from] + memo[TAKAHASHI_HOME][to], shortest].min
end

puts shortest == INF ? -1 : shortest