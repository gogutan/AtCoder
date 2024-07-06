n = gets.to_i
graph = Array.new(n) { [] }
total_length = 0

(n - 1).times do
  u, v, w = gets.split.map(&:to_i)
  total_length += w * 2
  graph[u - 1] << [v - 1, w]
  graph[v - 1] << [u - 1, w]
end

def dfs(graph, node, visited, distance)
  visited[node] = true
  max_distance = distance
  max_node = node

  graph[node].each do |next_node, weight|
    unless visited[next_node]
      result, far_node = dfs(graph, next_node, visited, distance + weight)
      if result > max_distance
        max_distance = result
        max_node = far_node
      end
    end
  end

  return max_distance, max_node
end

_, farthest_node = dfs(graph, 0, Array.new(n, false), 0)

max_distance, _ = dfs(graph, farthest_node, Array.new(n, false), 0)

puts total_length - max_distance
