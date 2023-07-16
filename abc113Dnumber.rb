MOD = 10 ** 9 + 7
h, w, k = gets.split.map(&:to_i)
# dp[行][列]の出現回数
dp = (h + 1).times.map { Array.new(w, 0) }
# 初期化
# dp[1行目][1列目]の出現回数は 1
dp[0][0] = 1

combination_memo = []
0.upto(4) do |selected_nums|
  (1...w).to_a.combination(selected_nums).each do |c|
    prev = -1
    selectable = true
    c.each do |num|
      if num - prev < 2
        selectable = false
        break
      end
      prev = num
    end
    combination_memo << c if selectable
  end
end

# h 行分ループする（current_h は遷移元の行）
h.times do |current_h|
  # 最適化のため、事前に 1 行分だけ参照渡しをする
  dp_current = dp[current_h]
  dp_next = dp[current_h + 1]
  # w 列分ループする（current_w は遷移元の列）
  w.times do |current_w|
    going_left = 0
    going_straight = 0
    going_right = 0
    combination_memo.each do |c|
      if c.include?(current_w)
        going_left += 1
      elsif c.include?(current_w + 1)
        going_right += 1
      else
        going_straight += 1
      end
    end
    current_count = dp_current[current_w]
    if going_left > 0
      dp_next[current_w - 1] += current_count * going_left
      dp_next[current_w - 1] %= MOD
    end
    if going_straight > 0
      dp_next[current_w] += current_count * going_straight
      dp_next[current_w] %= MOD
    end
    if going_right > 0
      dp_next[current_w + 1] += current_count * going_right
      dp_next[current_w + 1] %= MOD
    end
  end
end

puts dp[h][k - 1] % MOD
