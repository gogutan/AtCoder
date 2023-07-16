MOD = 1000000007
n, k = gets.split.map(&:to_i)
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
edges.each do |from, to|
  graph[from] << to
  graph[to] << from
end
ans = [k]
colors = k - 1
#[from, to]
queue = [[1, 1]]
until queue.empty?
  from, current = queue.shift
  rest = colors
  graph[current].each do |to|
    next if from == to
    ans << rest
    rest -= 1
    queue << [current, to]
  end
  colors = k - 2
end
puts ans.inject(1) { |res, num| res * num % MOD }

# N, K = gets.chomp.split(" ").map(&:to_i)
# sides = []
# (N - 1).times do
#   sides << gets.chomp.split(" ").map(&:to_i)
# end
# multiplier = []
# multiplier << K
# queue = []
# queue.push(1)
# tmp = 0
# until queue.empty? do
#   num = queue.shift
#   selected = sides.select {|a, b| a == num || b == num}
#   multi = K - 1
#   (0...selected.length).each do |sele|
#     multiplier << multi - sele - [tmp, 1].min
#   end
#   selected.each do |select|
#     if select[0] == num
#       queue.push(select[1])
#     else
#       queue.push(select[0])
#     end
#   end
#   sides.delete_if {|a, b| a == num || b == num}
#   tmp += 1
# end
# puts multiplier.inject(:*) % 1000000007

# # def dfs(i, a_length, b_length, c_length)
# #   if i == N
# #     if [a_length, b_length, c_length].include?(0)
# #       return INF
# #     else
# #       return (a_length - A).abs + (b_length - B).abs + (c_length - C).abs
# #     end
# #   end

# #   # どの材料にもしない場合
# #   @ans = [@ans, dfs(i + 1, a_length, b_length, c_length)].min
# #   # Aの材料にする場合
# #   @ans = [@ans, dfs(i + 1, a_length + LS[i], b_length, c_length) + 10].min
# #   # Bの材料にする場合
# #   @ans = [@ans, dfs(i + 1, a_length, b_length + LS[i], c_length) + 10].min
# #   # Cの材料にする場合
# #   @ans = [@ans, dfs(i + 1, a_length, b_length, c_length + LS[i]) + 10].min

# #   # 全探索後 ans を返す
# #   return @ans
# # end

# # puts (0 ,0 ,0 ,0) - 30