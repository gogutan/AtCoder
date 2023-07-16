n = gets.to_i
ss = gets.split.map(&:to_i).unshift(0)
puts ss.each_cons(2).map { |a, b| b - a }.join(' ')
