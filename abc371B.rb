n, m = gets.split.map(&:to_i)
memo = {}
m.times do
  a, b = gets.chomp.split
  puts !memo[a] && b == 'M' ? 'Yes' : 'No'
  memo[a] = true if b == 'M'
end
