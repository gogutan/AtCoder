n = gets.to_i
first_row = gets.split.map(&:to_i)
second_row = gets.split.map(&:to_i)
sums = []
n.times do |i|
  sums << first_row[0..i].inject(:+) + second_row[i...n].inject(:+)
end
puts sums.max
