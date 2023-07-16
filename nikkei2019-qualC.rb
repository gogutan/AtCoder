n = gets.to_i
foods = []
n.times { foods << gets.split.map(&:to_i) }
foods.sort!.reverse!
score = 0
foods.each_with_index do |(a, b), index|
  if index.even?
    score += a
  else
    score -= b
  end
end
puts score
