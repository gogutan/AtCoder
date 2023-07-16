nums = gets.split.map(&:to_i)
nums.each do |num|
  if nums.count(num) == 1
    puts num
    break
  end
end
