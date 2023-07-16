r, d, x = gets.split(" ").map(&:to_i)
answers = []
answers.push(x)
10.times do
  answers.push(answers.last * r - d)
end
answers.shift
puts answers