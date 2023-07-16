n = gets.to_i
nums = gets.split.map(&:to_i)
answers = []
(-100..100).each do |dest|
  answer = 0
  nums.each do |num|
    answer += (num - dest) ** 2
  end
  answers << answer
end
puts answers.min
