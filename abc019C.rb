n = gets.to_i
nums = gets.split.map(&:to_i)
answers = []
nums.each do |num|
  while num.even?
    num /= 2
  end
  answers << num
end
puts answers.uniq.size
