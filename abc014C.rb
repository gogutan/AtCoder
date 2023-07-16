# いもす法 imos法

# n + 1 長の array を返す
def cumulative_sum(array)
  tmp = [0]
  previous = 0
  array.each { |num| tmp << previous += num }
  tmp
end

INF = 10 ** 6 + 1
n = gets.to_i
array = Array.new(INF + 1, 0)
n.times do
  a, b = gets.split.map(&:to_i)
  array[a] += 1
  array[b + 1] -= 1
end

puts cumulative_sum(array).max
