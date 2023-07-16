r, g, b, n = gets.split(" ").map(&:to_i)

count = 0

sum = 0

3001.times do |index|
  3001.times do |index2|
    sum = r * index + g * index2
    if (n - sum) % b == 0 && n >= sum
      count += 1
    end
  end
end

puts count

# r, g, b, n = gets.split(" ").map(&:to_i)

# numbers = []

# numbers.push(r)
# numbers.push(g)
# numbers.push(b)

# numbers.sort!

# number_0_max = n / numbers[0]
# number_1_max = 0
# number_2_max = 0

# count = 0

# sum0 = 0
# sum1 = 0
# sum2 = 0

# number_0_max.downto(0) do |index|
#   sum0 = numbers[0] * index
  
#   if sum0 < n
#     number_1_max = (n - sum0) / numbers[1]
#   elsif sum0 == n
#     count += 1
#     next
#   else
#     next
#   end

#   number_1_max.downto(0) do |index2|
#     sum1 = numbers[1] * index2
  
#     if sum0 + sum1 < n
#       number_2_max = (n - sum0 - sum1) / numbers[2]
#     elsif sum0 + sum1 == n
#       count += 1
#       next
#     else
#       next
#     end
  
#     number_2_max.downto(0) do |index3|
#       sum2 = numbers[2] * index3
#       if sum0 + sum1 + sum2 < n
#         break
#       elsif sum0 + sum1 + sum2 == n
#         count += 1
#         break
#       else
#         next
#       end

#     end
#   end
# end

# puts count