n = gets.to_i
numbers = gets.split(" ").map(&:to_i)
numbers.sort!.reverse!
count = 0
numbers.length.times do |index|
  numbers.length.times do |index2|
    if index == index2
      next
    end
    if (numbers[index] + numbers[index2]) & (numbers[index] + numbers[index2] - 1) == 0 && numbers[index] != 0 && numbers[index2] != 0
      count += 1
      numbers[index] = 0
      numbers[index2] = 0
    end
  end
end
puts count