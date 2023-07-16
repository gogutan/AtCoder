a, b, k = gets.split.map(&:to_i)
size = [k, b - a + 1].min
left_array = Array.new(size){ |i| a + i }
right_array = Array.new(size){ |i| b - i }.reverse!
array = (left_array + right_array).uniq
array.each { |item| puts item }
