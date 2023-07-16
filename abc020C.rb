$h, $w, $t = gets.split.map(&:to_i)
$boards = Array.new
$h.times { $boards << gets.chomp.split("") }

start = $boards.flatten.find_index("S")
$start_i, $start_j = start.divmod($w)

goal = $boards.flatten.find_index("G")
$goal_i, $goal_j = goal.divmod($w)

def bfs(time)
  boards_dup = Marshal.load(Marshal.dump($boards))
  boards_dup[$start_i][$start_j] = 0
  queue = [[$start_i, $start_j, 0]]
  until queue.empty?
    h_cur, w_cur, time_cur = queue.shift

    if h_cur != 0
      case boards_dup[h_cur - 1][w_cur]
      when "."
        time_up = time_cur + 1
        boards_dup[h_cur - 1][w_cur] = time_up
        index = queue.bsearch_index { |x| x[2] >= time_up }
        index ||= -1
        queue.insert(index, [h_cur - 1, w_cur, time_up])
      when "#"
        time_up = time_cur + time
        boards_dup[h_cur - 1][w_cur] = time_up
        index = queue.bsearch_index { |x| x[2] >= time_up }
        index ||= -1
        queue.insert(index, [h_cur - 1, w_cur, time_up])
      when "G"
        time_goal = time_cur + 1
        break
      end
    end

    if h_cur != $h - 1
      case boards_dup[h_cur + 1][w_cur]
      when "."
        time_down = time_cur + 1
        boards_dup[h_cur + 1][w_cur] = time_down
        index = queue.bsearch_index { |x| x[2] >= time_down }
        index ||= -1
        queue.insert(index, [h_cur + 1, w_cur, time_down])
      when "#"
        time_down = time_cur + time
        boards_dup[h_cur + 1][w_cur] = time_down
        index = queue.bsearch_index { |x| x[2] >= time_down }
        index ||= -1
        queue.insert(index, [h_cur + 1, w_cur, time_down])
      when "G"
        time_goal = time_cur + 1
        break
      end
    end

    if w_cur != 0
      case boards_dup[h_cur][w_cur - 1]
      when "."
        time_left = time_cur + 1
        boards_dup[h_cur][w_cur - 1] = time_left
        index = queue.bsearch_index { |x| x[2] >= time_left }
        index ||= -1
        queue.insert(index, [h_cur, w_cur - 1, time_left])
      when "#"
        time_left = time_cur + time
        boards_dup[h_cur][w_cur - 1] = time_left
        index = queue.bsearch_index { |x| x[2] >= time_left }
        index ||= -1
        queue.insert(index, [h_cur, w_cur - 1, time_left])
      when "G"
        time_goal = time_cur + 1
        break
      end
    end

    if w_cur != $w - 1
      case boards_dup[h_cur][w_cur + 1]
      when "."
        time_right = time_cur + 1
        boards_dup[h_cur][w_cur + 1] = time_right
        index = queue.bsearch_index { |x| x[2] >= time_right }
        index ||= -1
        queue.insert(index, [h_cur, w_cur + 1, time_right])
      when "#"
        time_right = time_cur + time
        boards_dup[h_cur][w_cur + 1] = time_right
        index = queue.bsearch_index { |x| x[2] >= time_right }
        index ||= -1
        queue.insert(index, [h_cur, w_cur + 1, time_right])
      when "G"
        time_goal = time_cur + 1
        break
      end
    end
  end

time_goal

end

min = 1
max = $t
until min == max
  mid = (min + max) / 2
  mid += 1 if (min + max).odd?
  time_goal = bfs(mid)
  if time_goal <= $t
    min = mid
  else
    max = mid - 1
  end
end
puts min
