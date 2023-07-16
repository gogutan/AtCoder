TAKAHASHI_HOME = 0
INF = 10 ** 8
n, m = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
memo = Array.new(n) { Array.new(n, INF) }
edges.each do |f, t, w|
  f -= 1
  t -= 1
  memo[f][t] = w
  memo[t][f] = w
end

# TAKAHASHI_HOME を除き、ワーシャルフロイド法 Warshall–Floyd Algorithm
# （除かない場合は n.times ）
# 参照渡しで高速化
(1...n).each do |via|
  memo_via = memo[via]
  (1...n).each do |from|
    memo_from = memo[from]
    (1...n).each do |to|
      tmp = memo_from[via] + memo_via[to]
      memo_from[to] = tmp if memo_from[to] > tmp
    end
  end
end

next_to_takahashi = []
memo[TAKAHASHI_HOME].each_with_index do |weight, index|
  next_to_takahashi << index if weight < INF
end

shortest = INF
next_to_takahashi.combination(2).each do |from, to|
  tmp = memo[from][to] + memo[TAKAHASHI_HOME][from] + memo[TAKAHASHI_HOME][to]
  shortest = tmp if shortest > tmp
end

puts shortest == INF ? -1 : shortest
