n, k = gets.split.map(&:to_i)
cities = gets.split.map(&:to_i).map(&:pred)
memo = Array.new(n, -1)
current = 0
count = 0
memo[0] = 0
rest = 0
loop do
  dest = cities[current]
  count += 1
  if count >= k
    puts dest + 1
    exit
  end
  if memo[dest] == -1
    memo[dest] = count
    current = dest
  else
    loop_count = count - memo[dest]
    rest = k - memo[dest]
    rest %= loop_count
    current = dest
    break
  end
end
dest = current
rest.times do
  dest = cities[current]
  current = dest
end
puts dest + 1
