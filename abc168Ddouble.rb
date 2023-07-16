n, m = gets.split.map(&:to_i)
edges = Array.new(n) { Array.new }
m.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  edges[a] << b
  edges[b] << a
end

# [current]
queue = [0]
ans = Array.new(n)
until queue.empty?
  current = queue.shift
  edges[current].each do |to|
    next if to == 0
    unless ans[to]
      ans[to] = current
      queue << to
    end
  end
end

ans.shift
puts "Yes"
ans.each { |n| puts n + 1 }
