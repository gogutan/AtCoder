# 二次元累積和 全探索

n = gets.to_i
tako = []
n.times { tako << gets.split.map(&:to_i) }
# 前処理 上側、左側に 0 を足す
# 0 0 0 0
# 0 3 2 1
# 0 2 2 1
# 0 1 1 1
tako.unshift([0] * (n + 1))
tako.each { |row| row.unshift(0) }

# 横方向 累積和
(0..n).each do |h|
  (1..n).each do |w|
    tako[h][w] += tako[h][w - 1]
  end
end

# 二次元累積和
(0..n).each do |w|
  (1..n).each do |h|
    tako[h][w] += tako[h - 1][w]
  end
end

max_values = Array.new(n ** 2 + 1, 0)
(1..n).each do |from_h|
  (1..n).each do |from_w|
    (1..n).each do |to_h|
      (1..n).each do |to_w|
        next if from_h > to_h || from_w > to_w
        sum = tako[to_h][to_w] - tako[to_h][from_w - 1] - tako[from_h - 1][to_w] + tako[from_h - 1][from_w - 1]
        count = (to_h - from_h + 1) * (to_w - from_w + 1)
        max_values[count] = sum if max_values[count] < sum
      end
    end
  end
end

(1...n ** 2).each do |i|
  max_values[i] = max_values[i - 1] if max_values[i] < max_values[i - 1]
end

q = gets.to_i
queries = []
q.times { queries << gets.to_i }

queries.each do |query|
  puts max_values[query]
end
