n, m = gets.split.map(&:to_i)
node_costs = gets.split.map(&:to_i)
graph = Array.new(n) { [] }
m.times do
  from, to, cost = gets.split.map(&:to_i)
  graph[from - 1] << [to - 1, cost]  # 0-indexedに変換
  graph[to - 1] << [from - 1, cost]  # 0-indexedに変換
end

# 最小が最上位の親になる 優先度付きキュー PQ
# 最大が最上位の親にする時は、コメントアウト箇所を変更
# 更新機能
class PriorityQueue
  attr_accessor :data, :size

  def initialize(array = [])
    @data = []
    array.each { |a| push(a) }
  end

  def push(element)
    current = @data.size
    @data[up_heap(current, element)] = element
  end

  def pop
    ret = @data.first
    x = @data.last
    @data[down_heap(0, x)] = x
    @data.pop
    ret
  end

  def update(current, element)
    index = up_heap(current, element)
    index = down_heap(current, element) if index == current
    @data[index] = element
  end

  def size
    @data.size
  end

  def front
    @data.first
  end

  def empty?
    @data.empty?
  end

  def parent(num)
    (num - 1) / 2
  end

  def left_child_index(num)
    2 * num + 1
  end

  def right_child_index(num)
    2 * num + 2
  end

  def have_parent?(index)
    index > 0
  end

  def have_child?(index)
    left_child_index(index) < @data.size
  end

  private

    def up_heap(current, element)
      while have_parent?(current)
        p_index = parent(current)
        break if @data[p_index][1] <= element[1]
        @data[current] = @data[p_index]
        current = p_index
      end
      current
    end

    def down_heap(current, element)
      while have_child?(current)
        a_index = left_child_index(current)
        b_index = right_child_index(current)
        a_index = b_index if b_index < @data.size && @data[b_index][1] < @data[a_index][1]
        break if @data[a_index][1] >= element[1]
        @data[current] = @data[a_index]
        current = a_index
      end
      current
    end
end

def dijkstra(n, graph, node_costs)
  min_cost = Array.new(n, Float::INFINITY)
  min_cost[0] = 0
  pq = PriorityQueue.new
  pq.push([0, min_cost[0]])

  until pq.empty?
    current_node, current_cost = pq.pop
    next if current_cost > min_cost[current_node]

    graph[current_node].each do |to, cost|
      new_cost = current_cost + cost + node_costs[current_node]
      if new_cost < min_cost[to]
        min_cost[to] = new_cost
        pq.push([to, new_cost])
      end
    end
  end

  min_cost.map.with_index { |cost, index| cost + node_costs[index] }
end

min_costs = dijkstra(n, graph, node_costs)
puts min_costs[1..].join(' ')
