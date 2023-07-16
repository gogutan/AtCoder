# O(M^3) = 27_000_000 実行時間 4508ms
# 参照渡しで高速化後 実行時間 3890ms

INF = 10 ** 7
n, m = gets.split.map(&:to_i)
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

longests = memo.map { |from| from.max }
puts longests.min

# # 最小が最上位の親になる 優先度付きキュー PQ ダイクストラ用に改変 これはダメ
# # 更新機能
# class PriorityQueue
#   attr_accessor :data, :size, :position

#   def initialize(array = [])
#     @data = []
#     @position = {}
#     array.each { |a| push(a) }
#   end

#   def push(element)
#     current = @data.size
#     index = up_heap(current, element)
#     @data[index] = element
#     @position[element.nid] = index
#   end

#   def pop
#     ret = @data.first
#     x = @data.last
#     index = down_heap(0, x)
#     @data[index] = x
#     @position[x.nid] = index
#     @data.pop
#     ret
#   end

#   def update(current, element)
#     index = up_heap(current, element)
#     index = down_heap(current, element) if index == current
#     @data[index] = element
#     @position[element.nid] = index
#   end

#   def size
#     @data.size
#   end

#   def front
#     @data.first
#   end

#   def empty?
#     @data.empty?
#   end

#   def parent(num)
#     (num - 1) / 2
#   end

#   def left_child_index(num)
#     2 * num + 1
#   end

#   def right_child_index(num)
#     2 * num + 2
#   end

#   def have_parent?(index)
#     index > 0
#   end

#   def have_child?(index)
#     left_child_index(index) < @data.size
#   end

#   private

#     def up_heap(current, element)
#       while have_parent?(current)
#         p_index = parent(current)
#         break if @data[p_index].cost <= element.cost
#         @data[current] = @data[p_index]
#         @position[p_index] = @position[current]
#         current = p_index
#       end
#       current
#     end

#     def down_heap(current, element)
#       while have_child?(current)
#         a_index = left_child_index(current)
#         b_index = right_child_index(current)
#         a_index = b_index if @data[b_index] && @data[b_index].cost < @data[a_index].cost
#         break if @data[a_index].cost >= element.cost
#         @data[current] = @data[a_index]
#         @position[a_index] = @position[current]
#         current = a_index
#       end
#       current
#     end
# end

# # 優先度付きキュー利用 ダイクストラ用グラフ
# class Graph
#   attr_accessor :nodes
#   class Node
#     attr_accessor :nid, :edges, :cost, :from_nid, :fixed
#     INF = 10 ** 100
#     def initialize(nid)
#       @nid = nid
#       @edges = []
#       @cost = INF
#       @from_nid = nil
#       @fixed = false
#     end
#   end

#   def initialize(n)
#     @nodes = (n + 1).times.map { |i| Node.new(i) }
#     @pq = PriorityQueue.new
#   end

#   def add_edge(from, to, cost)
#     @nodes[from].edges << [to, cost]
#     @nodes[to].edges << [from, cost]
#   end

#   def dijkstra(nid)
#     @nodes[nid].cost = 0
#     @nodes.each do |node|
#       @pq.push(node)
#     end
#     until @pq.empty?
#       fixed_node = @pq.pop
#       nid = fixed_node.nid
#       @nodes[nid].fixed = true
#       @nodes[nid].cost = fixed_node.cost
#       fixed_node.edges.each do |to, cost|
#         puts to
#         to_node = @pq.data[@pq.position[to]]
#         p to_node
#         original_cost = to_node.cost
#         to_node.cost = cost + fixed_node.cost
#         @pq.update(@pq.position[to], to_node) if original_cost > cost + fixed_node.cost
#       end
#     end
#   end
# end

# n, m = gets.split.map(&:to_i)
# edges = []
# m.times { edges << gets.split.map(&:to_i) }
# graph = Graph.new(n)
# edges.each do |from, to, cost|
#   graph.add_edge(from, to, cost)
# end
# graph.dijkstra(2)
# p graph.nodes