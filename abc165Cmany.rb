n, m, q = gets.split.map(&:to_i)
nums = []
q.times { nums << gets.split.map(&:to_i) }
options = (1..m).to_a
ans = []
options.repeated_combination(n).each do |combi|
  array = combi.to_a
  tmp = 0
  nums.each do |a, b, c, d|
    if array[b - 1] - array[a - 1] == c
      tmp += d
    end
  end
  ans << tmp
end
puts ans.max
