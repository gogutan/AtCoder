n = gets.to_i
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
edges.each do |from, to|
  graph[from] << to
  graph[to] << from
end
nums = gets.split.map(&:to_i).sort
sum = nums.inject(:+) - nums.last
ans = Array.new(n + 1)
queue = [1]
until queue.empty?
  current = queue.shift
  unless ans[current]
    ans[current] = nums.pop
    graph[current].each do |to|
      queue << to
    end
  end
end
ans.shift
puts sum
puts ans.join(" ")
