n, k, m = gets.split.map(&:to_i)
tests = gets.split.map(&:to_i)
target = n * m
neccessary = target - tests.inject(:+)
if neccessary <= k
  puts [neccessary, 0].max
else
  puts -1
end
