n, m = gets.split.map(&:to_i)
edges = Array.new(n) { Array.new }
m.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  edges[a] << b
  edges[b] << a
end
ans = 0
queue = [[0, [0]]]
until queue.empty?
  start, visited = queue.shift
  if visited.size == n
    ans += 1
    next
  end
  edges[start].each do |dest|
    if !visited.include?(dest)
      queue << [dest, [*visited, dest]]
    end
  end
end
puts ans
