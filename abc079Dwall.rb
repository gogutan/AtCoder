h, w = gets.split.map(&:to_i)
costs = []
10.times { costs << gets.split.map(&:to_i) }
wall = []
h.times { wall << gets.split.map(&:to_i) }
updated = Array.new(10) { Array.new(10, false) }
10.times { |i| updated[i][i] = true }
10.times do |r|
  10.times do |c|
    next if updated[r][c]
    queue = [[c, costs[r][c]]]
    until queue.empty?
      tmp_r, tmp_cost = queue.shift
      costs[tmp_r].each_with_index do |cost, i|
        if tmp_cost + cost < costs[r][i]
          costs[r][i] = tmp_cost + cost
          updated[r][i] = true
          queue << [i, tmp_cost + cost]
        end
      end
    end
  end
end
wall.flatten!
ans = 0
10.times { |i| ans += wall.count(i) * costs[i][1] }
puts ans
