n = gets.to_i
k = gets.to_i

queue = [[1, 0]]
answers = []

until queue.empty?
  sum, count = queue.shift
  if count < n
    queue.push([sum * 2, count + 1])
    queue.push([sum + k, count + 1])
  else
    answers.push(sum)
  end
end

puts answers.min
