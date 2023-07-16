t = gets.to_i
nums = []
squares = []
t.times do
  n = gets.to_i
  nums << n
  tmp = []
  n.times { tmp << gets.split.map(&:to_i) }
  squares << tmp
end

(0...t).each do |problem|
  num = nums[problem]
  square = squares[problem]
  k = num.times.inject(0) { |res, i| res + square[i][i] }
  r = (1..num).count { |i| square[i - 1] != square[i - 1].uniq }
  transposed = square.transpose
  c = (1..num).count { |i| transposed[i - 1] != transposed[i - 1].uniq } || 0
  puts "Case ##{problem + 1}: #{k} #{r} #{c}"
end
