n, k = gets.split.map(&:to_i)
hash = Hash.new(0)
n.times do
  a, b = gets.split.map(&:to_i)
  hash[a] += b
end
hash.sort.each do |key, value|
  k -= value
  if k <= 0
    puts key
    exit
  end
end
