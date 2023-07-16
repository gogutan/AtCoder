n = gets.to_i
s = gets.chomp
accessory = ["b"]
first_addition = ["a", "c"]
second_addition = ["c", "a"]
third_addition = ["b", "b"]

(1..n).each do |index|
  case index % 3
  when 1
    accessory << first_addition[0] + accessory.last + first_addition[1]
  when 2
    accessory << second_addition[0] + accessory.last + second_addition[1]
  when 0
    accessory << third_addition[0] + accessory.last + third_addition[1]
  end
end

puts accessory.find_index { |i| i == s } || -1
