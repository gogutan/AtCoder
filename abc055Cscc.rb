n, m = gets.split.map(&:to_i)
c = n * 2 + m
scc = [c / 4, m / 2].min
puts scc
