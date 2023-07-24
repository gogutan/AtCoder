n, p, q = gets.split.map(&:to_i)
ds = gets.split.map(&:to_i)
puts [p, ds.min + q].min
