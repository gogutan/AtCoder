n, k = gets.split(" ").map(&:to_i)
probability = 0.0
(1..n).each do |index|
  point = index
  multiply_times = 0
  while point < k do
    point *= 2
    multiply_times += 1
  end
  probability += 1.0 / n / (2 ** multiply_times)
end
puts probability

# n, k = gets.split(" ").map(&:to_i)

# divided_numbers = []
# 0.upto(18) do |num|
#   divided_numbers.push(k / (2 ** num).to_f)
# end
# divided_numbers.each_with_index do |num, index|
#   divided_numbers[index] = num.ceil
# end
# # puts divided_numbers
# chances = []
# 0.upto(18) do |num|
#   chances.push(1 / (2 ** num).to_f / n)
# end
# # puts chances
# multiply_times = []
# last_number = false
# 18.times do |num|
#   if last_number == false
#   multiply_times[num] = n - divided_numbers[num] + 1
#     if multiply_times[num] < 0
#       multiply_times[num] = 0
#     end
#     if multiply_times[num] > 0
#       last_number = true
#     end
#   elsif last_number == true
#     multiply_times[num] = divided_numbers[num - 1] - divided_numbers[num]
#   end
# end
# # puts multiply_times
# sum = 0.0

# 18.times do |num|
#   sum += chances[num] * multiply_times[num]
# end

# puts sum