n = gets.to_i
numbers = []
n.times do |num|
  numbers << [gets.to_i, num]
end

numbers.sort!.reverse!

biggest_1 = numbers[0]
biggest_2 = numbers[1]

n.times do |num|
  if num == biggest_1[1]
    puts biggest_2[0]
  else
    puts biggest_1[0]
  end
end