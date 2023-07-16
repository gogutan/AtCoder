# 根付き木の原点を任意に定める

n = gets.to_i
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
# 無向グラフなので両始点のグラフに入れる
edges.each do |f, t|
  graph[f] << [f, t]
  graph[t] << [t, f]
end

ans = Array.new(n + 1) { Hash.new(0) }
queue = [[1, 1, 0]]
biggest = 0
until queue.empty?
  from, to, num = queue.shift
  used_nums = [num]
  graph[to].each do |f, t|
    # 逆流しないようにする（両方のグラフに入れているので必ず1つ該当する）
    next if t == from
    used_nums.pop if used_nums.last == 0
    if used_nums.include?(1)
      if used_nums.first > used_nums.size
        next_num = used_nums.size
      else
        next_num = used_nums.size + 1
      end
    else
      next_num = 1
    end
    used_nums << next_num
    ans[f][t] = next_num
    queue << [f, t, next_num]
    biggest = next_num if biggest < next_num
  end
end

puts biggest
edges.each { |f, t| puts ans[f][t] }
