a, b = gets.split.map(&:to_i)
answers = []
answers << a + b
answers << a - b
answers << a * b
puts answers.max
