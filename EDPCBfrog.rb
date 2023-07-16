MAX_COST = 1000000000
NUM, MAX_STEP = gets.split(" ").map(&:to_i)
steps = gets.split(" ").map(&:to_i)
# 各足場に到達するためのコストを格納するdp用配列、初期値は0とする
dp = Array.new(NUM, 0)

# 足場2〜NUMまでの最小コストを順にdpに格納する
1.upto(NUM - 1) do |step_number|
  min = MAX_COST
  # 1〜MAX_STEP歩手前からのそれぞれのコストを確認する
  # ただし足場1より手前に行かないように、step_numberを最大回数とする
  1.upto([MAX_STEP, step_number].min) do |back|
    # back歩手前までのコストと、back歩手前からstep_numberまでのコストを足してminと比較する
    # minより小さければminに格納する
    if min > dp[step_number - back] + (steps[step_number - back] - steps[step_number]).abs
      min = dp[step_number - back] + (steps[step_number - back] - steps[step_number]).abs
    end
  end
  # minをdpに格納する
  dp[step_number] = min
end

puts dp.last

# 以下、メモ化再帰TLEバージョン
#
# def recursive_min(step_number)
#   if @memo[step_number]
#     return @memo[step_number]
#   else
#     min = 1000000000
#     # 1ステップ〜@kステップ手前からのそれぞれのコストを全てtmpに格納する
#     # ただし足場1より手前に行かないように、step_numberを最大回数とする
#     1.upto([@k, step_number].min) do |back|
#       if min > (@steps[step_number - back] - @steps[step_number]).abs + recursive_min(step_number - back)
#         min = (@steps[step_number - back] - @steps[step_number]).abs + recursive_min(step_number - back)
#       end
#     end
#     # 最も小さいコストを格納
#     @memo[step_number] = min
#     return min
#   end
# end

# (2..num - 1).each do |index|
#   recursive_min(index)
# end

# puts recursive_min(num - 1)
