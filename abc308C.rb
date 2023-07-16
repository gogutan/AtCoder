require 'bigdecimal'
n = gets.to_i
people = []
n.times do
  people << gets.split.map(&:to_i)
end

mapped_people = people.map.with_index do |(a, b), index|
  [BigDecimal(a.to_s) / BigDecimal((a + b).to_s), index]
end

sorted_people = mapped_people.sort_by do |percentage, index|
  [-percentage, index]
end

puts sorted_people.map { |_, i| i + 1 }.join(' ')
