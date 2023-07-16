h, w = gets.split.map(&:to_i)
grid = []
h.times do
  grid << gets.chomp.chars
end
memo = Array.new(h) { Array.new(w) }
h.times do |r|
  w.times do |c|
    next if memo[r][c] || grid[r][c] == "."
    visited_blacks = [[r, c]]
    visited_white_count = 0
    memo[r][c] = 0
    queue = [[r, c, true]]
    until queue.empty?
      current_r, current_c, approaching_white = queue.shift
      approaching = approaching_white ? "." : "#"

      if current_r > 0 && grid[current_r - 1][current_c] == approaching && !memo[current_r - 1][current_c]
        queue << [current_r - 1, current_c, !approaching_white]
        memo[current_r - 1][current_c] = 0
        if approaching_white
          visited_white_count += 1
        else
          visited_blacks << [current_r - 1, current_c]
        end
      end

      if current_r < h - 1 && grid[current_r + 1][current_c] == approaching && !memo[current_r + 1][current_c]
        queue << [current_r + 1, current_c, !approaching_white]
        memo[current_r + 1][current_c] = 0
        if approaching_white
          visited_white_count += 1
        else
          visited_blacks << [current_r + 1, current_c]
        end
      end

      if current_c > 0 && grid[current_r][current_c - 1] == approaching && !memo[current_r][current_c - 1]
        queue << [current_r, current_c - 1, !approaching_white]
        memo[current_r][current_c - 1] = 0
        if approaching_white
          visited_white_count += 1
        else
          visited_blacks << [current_r, current_c - 1]
        end
      end

      if current_c < w - 1 && grid[current_r][current_c + 1] == approaching && !memo[current_r][current_c + 1]
        queue << [current_r, current_c + 1, !approaching_white]
        memo[current_r][current_c + 1] = 0
        if approaching_white
          visited_white_count += 1
        else
          visited_blacks << [current_r, current_c + 1]
        end
      end
    end
    visited_blacks.each do |visited_r, visited_c|
      memo[visited_r][visited_c] = visited_white_count
    end
  end
end

puts memo.flatten.compact.inject(:+) || 0
