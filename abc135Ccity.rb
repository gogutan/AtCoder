n = gets.to_i
monsters = gets.split.map(&:to_i)
heroes = gets.split.map(&:to_i)

count = 0

heroes.each_with_index do |hero, index|
  deduction = [monsters[index], hero].min
  monsters[index] -= deduction
  hero -= deduction
  count += deduction
  deduction_2 = [monsters[index + 1], hero].min
  monsters[index + 1] -= deduction_2
  hero -= deduction_2
  count += deduction_2
end

puts count