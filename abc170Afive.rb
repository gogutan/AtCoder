nums = gets.split.map(&:to_i)
5.times do |i|
  if nums[i] != i + 1
    puts i + 1
  end
end
