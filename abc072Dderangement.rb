# 配列の要素入れ替え
class Array
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
  end
end

INF = 10 ** 6
n = gets.to_i
nums = gets.split.map(&:to_i)
nums << INF
ans = 0
n.times do |i|
  if nums[i] == i + 1
    nums.swap!(i, i + 1)
    ans += 1
  end
end
puts ans
