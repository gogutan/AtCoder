n, k = gets.split.map(&:to_i)
nums = []
n.times { nums << gets.to_i }

if nums.include?(0)
  puts n
  exit
end

current_array = []
product = 1
max = 0
nums.each do |num|
  current_array << num
  product *= num
  until product <= k || current_array.empty?
    product /= current_array.shift
  end
  max = [max, current_array.size].max
end
puts max
