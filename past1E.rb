n, q = gets.split.map(&:to_i)
logs = []
follows = Array.new(n) { Array.new(n, "N") }
q.times { logs << gets.split.map(&:to_i) }
logs.each do |a, b, c|
  case a
  when 1
    follows[b - 1][c - 1] = "Y"
  when 2
    n.times do |i|
      if follows[i][b - 1] == "Y"
        follows[b - 1][i] = "Y"
      end
    end
  when 3
    tmp = []
    follows[b - 1].each_with_index do |follow, i|
      if follow == "Y"
        follows[i].each_with_index do |follow_2, i_2|
          next if i_2 == b - 1
          if follow_2 == "Y"
            tmp << [b - 1, i_2]
          end
        end
      end
    end
    tmp.each do |from, to|
      follows[from][to] = "Y"
    end
  end
end
follows.each { |f| puts f.join }
