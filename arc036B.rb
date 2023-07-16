n = gets.to_i
mountains = []
n.times { mountains << gets.to_i }
answers = [[1, 1, 1]]
ascending = true
previous = mountains.shift
tmp = [1]
mountains.each.with_index(1) do |mountain, index|
  if ascending && mountain < previous
    tmp << index
    ascending = false
  elsif !ascending && mountain > previous
    tmp << index
    answers << tmp
    tmp = [index]
    ascending = true
  end
  previous = mountain
end
if tmp.size == 1
  answers << [*tmp, n, n]
elsif tmp.size == 2
  answers << [*tmp, n]
end
ans = answers.max_by { |a, b, c| c - a }
puts ans.last - ans.first + 1
