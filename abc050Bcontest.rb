n = gets.to_i
times = gets.split.map(&:to_i)
m = gets.to_i
drinks = []
m.times { drinks << gets.split.map(&:to_i) }
sum = times.inject(:+)
drinks.each do |problem, time|
  puts sum - times[problem - 1] + time
end
