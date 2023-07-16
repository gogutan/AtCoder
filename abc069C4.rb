n = gets.to_i
nums = gets.split.map(&:to_i)
multiple_of_4 = 0
multiple_of_2 = 0
nums.each do |num|
  if num % 4 == 0
    multiple_of_4 += 1
  elsif num % 2 == 0
    multiple_of_2 += 1
  end
end
possible = multiple_of_4 * 2 + multiple_of_2
possible += 1 if multiple_of_2 == 0

puts n <= possible ? "Yes" : "No"
