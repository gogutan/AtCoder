s = gets.split("").map(&:to_s)
white_number = s.count("W")
before_distance_sum = 0
after_distance_sum = 0

white_number.times do |num|
  after_distance_sum += num
end

s.each_with_index do |str, index|
  if str == "W"
    before_distance_sum += index
  end
end

puts before_distance_sum - after_distance_sum