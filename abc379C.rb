n, m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
ms = gets.split.map(&:to_i)
pos_and_stones = xs.zip(ms).sort_by { |x, _| x }
pos_and_stones << [n + 1, 0]

prev_pos = 0
stones = 1
cost = 0

pos_and_stones.each  do |current_pos, current_stones|
  stones_to_put_behind = current_pos - prev_pos
  stones -= stones_to_put_behind

  if stones < 0
    puts -1
    exit
  end

  min_cost = 0
  max_cost = current_pos - prev_pos - 1
  # cost to put stones behind
  cost += stones_to_put_behind * (max_cost + min_cost) / 2
  # cost to move stones to current position
  cost += stones * (max_cost + 1)
  stones += current_stones
  prev_pos = current_pos
end

puts stones == 0 ? cost : -1
