n, m = gets.split.map(&:to_i)
grid = n.times.map { gets.chomp.split('') }
blacks = [
  [0, 0],
  [1, 0],
  [2, 0],
  [0, 1],
  [1, 1],
  [2, 1],
  [0, 2],
  [1, 2],
  [2, 2],
  [6, 6],
  [7, 6],
  [8, 6],
  [6, 7],
  [7, 7],
  [8, 7],
  [6, 8],
  [7, 8],
  [8, 8],
]
whites = [
  [3, 0],
  [3, 1],
  [3, 2],
  [3, 3],
  [2, 3],
  [1, 3],
  [0, 3],
  [5, 5],
  [5, 6],
  [5, 7],
  [5, 8],
  [6, 5],
  [7, 5],
  [8, 5],

]
0.upto(n - 9).each do |h|
  0.upto(m - 9).each do |w|
    if blacks.all? { |a, b| grid[h + a][w + b] == '#' } && whites.all? { |a, b| grid[h + a][w + b] == '.' }
      puts "#{h + 1} #{w + 1}"
    end
  end
end
