m = gets.to_i
numbers = Array.new
m.times do
  numbers << gets.split.map(&:to_i)
end
digit = numbers.inject(0) { |res, num| res + num[1] }
sum = numbers.inject(0) { |res, num| res + num[0] * num[1] }
count = (sum - 1) / 9
puts digit - 1 + count
