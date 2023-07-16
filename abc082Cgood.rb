n = gets.to_i
numbers = gets.split.map(&:to_i)
count = Hash.new(0)
numbers.each do |number|
  count[number] += 1
end
sum = 0
count.each do |key, value|
  if key <= value
    sum += value - key
  else
    sum += value
  end
end
puts sum
