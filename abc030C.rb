n, m = gets.split.map(&:to_i)
x, y = gets.split.map(&:to_i)
departings = gets.split.map(&:to_i)
returnings = gets.split.map(&:to_i)

time = 0
count = 0
takahashi_in_a = true

while true
  if takahashi_in_a
    break unless boarding_index = departings.find_index { |i| i >= time }
    time = departings[boarding_index] + x
    departings.shift(boarding_index + 1)
    takahashi_in_a = false
  else
    break unless boarding_index = returnings.find_index { |i| i >= time }
    time = returnings[boarding_index] + y
    returnings.shift(boarding_index + 1)
    takahashi_in_a = true
    count += 1
  end
end

puts count
