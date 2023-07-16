n = gets.to_i
robots = []
n.times { robots << gets.split.map(&:to_i) }
from_to = robots.map { |p, l| [p - l, p + l] }
from_to.sort! { |a, b| a[1] <=> b[1] }
current = - (10 ** 10)
sum = 0
from_to.each do |from, to|
  next if from < current
  current = to
  sum += 1
end
puts sum
