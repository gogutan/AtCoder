n, q = gets.split.map(&:to_i)
actions = []
q.times { actions << gets.split.map(&:to_i) }
numbers = Array.new(n, 0)
actions.each do |start, goal, num|
  (start..goal).each do |index|
    numbers[index - 1] = num
  end
end
numbers.each do |num|
  puts num
end
