MOD = 10 ** 9 + 7
n = gets.to_i
start, goal = gets.split.map(&:to_i)
m = gets.to_i
edges = []
m.times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
edges.each do |from, to|
  graph[from] << to
  graph[to] << from
end

graph.each_with_index do |n, i|
  puts "#{i}の接続先:#{n}"
end
# 0の接続先:[]
# 1の接続先:[2, 3]
# 2の接続先:[1, 4]
# 3の接続先:[1, 4]
# 4の接続先:[2, 3, 5, 6]
# 5の接続先:[4, 7]
# 6の接続先:[4, 7]
# 7の接続先:[5, 6]

# dp[step数][町] に何通りの最短経路があるか
dp = Array.new(n + 1) { Array.new(n + 1, 0) }

# 0 step 目は、スタート地点に 1 通りの最短経路
dp[0][start] = 1

1.upto(n) do |step|
  1.upto(n) do |from|
    graph[from].each do |to|
      dp[step][to] += dp[step - 1][from]
    end
  end
  if dp[step][goal] > 0
    puts dp[step][goal] % MOD
    break
  end
end
