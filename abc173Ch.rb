$h, $w, k = gets.split.map(&:to_i)
grid = []
$h.times { grid << gets.chomp.split("") }

def black_counts(grid, r, c)
  black_count = 0
  $h.times do |r_i|
    $w.times do|c_i|
      black_count += 1 if grid[r_i][c_i] == "#" && r[r_i] == 0 && c[c_i] == 0
    end
  end
  black_count
end

ans = 0
(2 ** $h).times do |r|
  (2 ** $w).times do |c|
    ans += 1 if black_counts(grid, r, c) == k
  end
end
puts ans
