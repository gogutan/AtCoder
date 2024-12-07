n = gets.to_i
nums = gets.split.map(&:to_i)
repeat_memo = Hash.new(-1)
mapped_nums = nums.map.with_index(1) do |num, index|
                mapped_num = repeat_memo[num]
                repeat_memo[num] = index
                mapped_num
              end
puts mapped_nums.join(' ')
