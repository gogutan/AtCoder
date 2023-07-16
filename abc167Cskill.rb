# n, m, x = gets.split.map(&:to_i)
# books = []
# n.times { books << gets.split.map(&:to_i) }
# tmp = []
# tmp << [0] * (m + 1)
# n.times do |i|
#   tmp_2 = []
#   tmp.each do |ary|
#     ary_1 = ary.dup
#     ary_2 = ary.dup
#     books[i].each_with_index do |b, b_i|
#       ary_1[b_i] += b
#     end
#     tmp_2 << ary_1
#     tmp_2 << ary_2
#   end
#   tmp = tmp_2
# end
# ans = -1
# tmp.each do |ary|
#   cost = ary.shift
#   next if ary.any? { |skill| skill < x }
#   ans = cost if ans == -1 || ans > cost
# end
# puts ans

# bit 全探索
INF = 10 ** 7
n, m, x = gets.split.map(&:to_i)
books = []
n.times { books << gets.split.map(&:to_i) }
ans = INF
(2 ** n).times do |num|
  skill = Array.new(m, 0)
  price = 0
  n.times do |i|
    next if num[i] == 0
    book = books[i]
    price += book.first
    book[1..-1].each_with_index do |up, alg|
      skill[alg] += up
    end
  end
  ans = price if ans > price && skill.min >= x
end
puts ans == INF ? -1 : ans
