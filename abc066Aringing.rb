bells = gets.split.map(&:to_i)
puts bells.inject(:+) - bells.max
