n, m = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
edges.each do |from, to|
  graph[from] << to
  graph[to] << from
end
checked = Array.new(n + 1, false)
ans = 0
(1..n).each do |i|
  unless checked[i]
    queue = [[i, i]]
    tree = true
    until queue.empty?
      current, from = queue.shift
      graph[current].each do |to|
        next if to == from
        if checked[to]
          tree = false
          break
        else checked[to]
          checked[to] = true
          queue << [to, current]
        end
      end
    end
    ans += 1 if tree
  end
end
puts ans
