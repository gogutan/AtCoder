n = gets.to_i
things = gets.split.map(&:to_i)
things.sort!
previous = things.shift
things.each do |thing|
  previous = (previous + thing.to_f) / 2
end
puts previous
