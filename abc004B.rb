grids = []
4.times { grids << gets.split }
grids.reverse.each { |grid| puts grid.reverse.join(" ") }
