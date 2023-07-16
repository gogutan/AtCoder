MOD = 10 ** 9 + 7
ONE = '1'.freeze

def nCk(n, k)
  res = 1
  i = k
  j = 1
  while i > 0
    res = res * (n - i + 1)
    res %= MOD
    j *= i
    j %= MOD
    i -= 1
  end
  res *= inv(j)
  res %= MOD
  res
end

def repeated_nCk(n, k)
  # 仕切りのイメージで
  nCk(n + k - 1, n - 1) % MOD
end

def inv(x)
  res = 1
  beki = x
  (MOD - 2).to_s(2).reverse.chars do |digest|
    res = (beki * res) % MOD if digest == ONE
    beki = (beki * beki) % MOD
  end
  res
end

n, k = gets.split.map(&:to_i)
combinations = nCk(n - 1, 2)
ans = []
if k > combinations
  puts -1
else
  (2..n).each do |i|
    ans << [1, i]
  end
  deduction = combinations - k
  (2..n).to_a.combination(2).each do |a, b|
    break if deduction == 0
    ans << [a, b]
    deduction -= 1
  end
  puts ans.size
  ans.each { |a, b| puts "#{a} #{b}"}
end


# n, k = gets.split.map(&:to_i)

# # 初期化 全ての頂点を繋いだ状態（片方の頂点からのみ）とする
# graph = Array.new(n) { Array.new }
# (1...n).each do |i|
#   graph[i] += (1..i).to_a
# end

# # 辺を 1 つずつ外していく、外した頂点同士の距離が 2 となる
# # ただし、全ての頂点が 1 と繋がった状態を保つ
# graph.each do |r|
#   while r.size > 1 && k > 0
#     r.pop
#     k -= 1
#   end
#   break if k == 0
# end

# # 距離が 2 の組み合わせを全て作れた場合
# if k == 0
#   puts graph.flatten.size
#   graph.each_with_index do |r, from|
#     r.each do |to|
#       puts "#{from + 1} #{to}"
#     end
#   end
# # 作れなかった場合
# else
#   puts -1
# end
