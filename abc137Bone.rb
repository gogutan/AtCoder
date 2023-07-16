k, x = gets.split.map(&:to_i)
answers = []
(x - (k - 1)..x + (k - 1)).each do |index|
  answers << index
end
puts answers.join(" ")
