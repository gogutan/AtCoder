r, c = gets.split.map(&:to_i)
puts [(8 - r).abs, (8 - c).abs].max.even? ? 'white' : 'black'
