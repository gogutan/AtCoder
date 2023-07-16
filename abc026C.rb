n = gets.to_i
employees = Array.new(n) { {subordinates: [], salary: 0} }
(1...n).each do |index|
  employees[gets.to_i - 1][:subordinates] << index
end

(n - 1).downto(0) do |num|
  subordinates_salaries = []
  employees[num][:subordinates].each do |subordinate|
    subordinates_salaries << employees[subordinate][:salary]
  end
  employees[num][:salary] = (subordinates_salaries.max || 0) + (subordinates_salaries.min || 0) + 1
end

puts employees[0][:salary]

# n = gets.to_i
# employees = Array.new(n) { {subordinates: [], rank: 0, salary: 0} }
# (1...n).each do |index|
#   employees[gets.to_i - 1][:subordinates] << index
# end

# #[社員番号, ランク（社長が1、下に行くにつれて1ずつ増加）]
# queue = [[0, 0]]
# until queue.empty?
#   num, rank = queue.shift
#   employees[num][:rank] = rank
#   employees[num][:subordinates].each do |subordinate|
#     queue.push([subordinate, rank + 1])
#   end
# end

# # ランクが大きい順に給料を確定する
# calc_order = Array.new(20) { Array.new }
# employees.each_with_index do |employee, index|
#   calc_order[employee[:rank]] << index
# end

# calc_order.reverse!
# calc_order.flatten!

# calc_order.each do |num|
#   subordinates_salaries = []
#   employees[num][:subordinates].each do |subordinate|
#     subordinates_salaries << employees[subordinate][:salary]
#   end
#   employees[num][:salary] = (subordinates_salaries.max || 0) + (subordinates_salaries.min || 0) + 1
# end

# puts employees[0][:salary]
