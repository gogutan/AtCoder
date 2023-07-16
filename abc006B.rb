n = gets.to_i
numbers = [0, 0, 1]
3.upto(n - 1) do |index|
  numbers << (numbers[index - 3] + numbers[index - 2] + numbers[index - 1]) % 10007
end
puts numbers[n - 1] % 10007
