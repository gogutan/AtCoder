n = gets.to_i
nums = gets.chomp.split("").map(&:to_i)
array = Array.new(10) { Array.new }
nums.each_with_index do |num, index|
  array[num] << index
end
p array

count = 0

0.upto(9) do |digit_1|
  0.upto(9) do |digit_2|
    0.upto(9) do |digit_3|
      if array[digit_1].empty?
        next
      else
        digit_1_index = array[digit_1].first
      end

      digit_2_index = array[digit_2].bsearch { |i| i > digit_1_index }
      next if !digit_2_index

      digit_3_index = array[digit_3].bsearch { |i| i > digit_2_index }
      next if !digit_3_index

      count += 1
    end
  end
end
puts count
