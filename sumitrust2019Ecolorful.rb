n = gets.to_i
hats = gets.split.map(&:to_i)
nums = [0, 0, 0]
answers = []
hats.each do |hat|
  index = nums.find_index { |i| i == hat }
  if !index
    puts 0
    exit
  else
    answers << nums.count(hat)
    nums[index] += 1
  end
end
puts answers.inject(1) { |res, n| res * n % 1000000007 }
