n = gets.to_i
6.downto(0) do |num|
  if n >= 2 ** num
    puts 2 ** num
    break
  end
end

# n = gets.to_i
# count = 0
# max_count = 0
# max_num = 1
# original_num = 0
# 1.upto(n) do |num|
#   original_num = num
#   while num.even?
#     num /= 2
#     count += 1
#   end
#   if max_count < count
#     max_count = count
#     max_num = original_num
#   end
#   count = 0
# end
# puts max_num