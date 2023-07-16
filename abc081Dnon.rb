n = gets.to_i
nums = gets.split.map(&:to_i)
maximum = nums.max
minimum = nums.min
answers = []
if maximum.abs > minimum.abs
  (0..n - 2).each do |index|
    while nums[index] > nums[index + 1]
      max_index = nums.index(nums.max)
      nums[index + 1] += nums[max_index]
      answers << [max_index + 1, index + 2]
    end
  end
else
  (n - 1).downto(1) do |index|
    while nums[index - 1] > nums[index]
      min_index = nums.index(nums.min)
      nums[index - 1] += nums[min_index]
      answers << [min_index + 1, index]
    end
  end
end

puts answers.size
answers.each { |answer| puts answer.join(" ") }
