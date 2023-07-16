INF = 10 ** 9 + 7
n = gets.to_i
original_slimes = gets.split.map(&:to_i)
slimes = []
original_slimes[0...-1].each_with_index do |o, i|
  slimes << original_slimes[i + 1] - o
end

num = 1
(n - 1).downto(1) do |i|
  num *= i
  # num %= INF
end

array = []

array << num * slimes.first

previous_add = num
current = num

slimes[1..-1].each_with_index do |slime, index|
  previous_add = previous_add * (index + 1) / (index + 2)
  # previous_add %= INF
  current += previous_add
  # current %= INF
  array << current * slime
end

sum = array.inject(:+)
puts sum % INF
