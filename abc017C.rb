# いもす法 imos法

# n + 1 長の array を返す
def cumulative_sum(array)
  tmp = [0]
  previous = 0
  array.each { |num| tmp << previous += num }
  tmp
end

n, m = gets.split.map(&:to_i)
ruins = []
n.times { ruins << gets.split.map(&:to_i) }
array = Array.new(m + 1, 0)
score = 0
ruins.each do |l, r, s|
  array[l - 1] += s
  array[r] -= s
  score += s
end

# いずれかの宝石を取らないようにする
puts score - cumulative_sum(array)[1..-2].min

# n, m = gets.split.map(&:to_i)
# ruins = []
# n.times { ruins << gets.split.map(&:to_i) }
# covered = Array.new(m + 2, 0)
# ruins.each do |l, r, s|
#   covered[l] += s
#   covered[r + 1] -= s
# end
# (1..m + 1).each do |index|
#   covered[index] += covered[index - 1]
# end
# sum = ruins.map{ |i| i[2] }.inject(:+)
# puts sum - covered[1..m].min
