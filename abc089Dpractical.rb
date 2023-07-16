h, w, d = gets.split.map(&:to_i)
numbers = Array.new(h * w) { Array.new }
h.times do |h_index|
  row = gets.split.map(&:to_i)
  row.each_with_index do |num, w_index|
    numbers[num - 1].push(h_index, w_index, 0)
  end
end
q = gets.to_i
questions = []
q.times { questions << gets.split.map(&:to_i).map(&:pred) }

(0...d).each do |start|
  cost = 0
  current = start
  start.step(h * w - 1, d) do |spot|
    cost += (numbers[current][0] - numbers[spot][0]).abs + (numbers[current][1] - numbers[spot][1]).abs
    numbers[spot][3] = cost
    current = spot
  end
end

questions.each do |start, goal|
  puts numbers[goal][3] - numbers[start][3]
end
