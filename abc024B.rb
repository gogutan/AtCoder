n, t = gets.split.map(&:to_i)
openings = []
n.times { openings << gets.to_i }
sum = 0
previous_last = 0
openings.each do |opening|
  sum += t - [previous_last - opening, 0].max
  previous_last = opening + t
end
puts sum
