t = gets.to_i

def output_ans(i, num, nums)
  cost = 0
  (1...num).each do |moving_num|
    index = nums.find_index(moving_num)
    destination = moving_num - 1
    cost += (index - destination).abs + 1
    
  end
  puts "Case ##{i}: #{cost}"
end

(1..t).each do |i|
  num = gets.to_i
  nums = gets.split.map(&:to_i)
  output_ans(i, num, nums)
end
