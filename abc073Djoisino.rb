INF = 10 ** 7
n, m, r = gets.split.map(&:to_i)
destinations = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
memo = Array.new(n) { Array.new(n, INF) }
# 初期化　既にいる場所へ行くコストは 0
n.times { |i| memo[i][i] = 0 }
edges.each do |f, t, w|
  f -= 1
  t -= 1
  memo[f][t] = w
  memo[t][f] = w
end

# ワーシャルフロイド法 Warshall–Floyd Algorithm
# 参照渡しで若干高速化
(0...n).each do |via|
  (0...n).each do |from|
    memo_from = memo[from]
    (0...n).each do |to|
      via_dist = memo_from[via] + memo[via][to]
      memo_from[to] = via_dist if memo_from[to] > via_dist
    end
  end
end

distances = []
destinations.permutation(r).each do |cities|
  tmp = 0
  current = cities.shift
  cities.each do |city|
    tmp += memo[current - 1][city - 1]
    current = city
  end
  distances << tmp
end

puts distances.min
