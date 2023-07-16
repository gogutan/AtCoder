# LCS 最長共通部分列
# reference: http://9871225.blog.fc2.com/blog-entry-304.html
# ただし最適化のため縦ではなく横に確認

s = gets.chomp.split("")
s_len = s.length
t = gets.chomp.split("")
t_len = t.length
dp = Array.new(s_len + 1) { Array.new(t_len + 1, 0) }

# dpテーブルを埋める
s_len.times do |s_index|
  dp_current = dp[s_index]
  dp_next = dp[s_index + 1]
  t_len.times do |t_index|
    if s[s_index] == t[t_index]
      dp_next[t_index + 1] = dp_current[t_index] + 1
    else
      up = dp_current[t_index + 1]
      left = dp_next[t_index]
      dp_next[t_index + 1] = up > left ? up : left
    end
  end
end

# dpテーブルを右下から左上に辿って文字列を復元
count = dp.last.last
current_s = s_len
current_t = t_len
restored = []
while count > 0
  loop do
    if dp[current_s - 1][current_t] == count
      current_s -= 1
    else
      break
    end
  end
  loop do
    if dp[current_s][current_t - 1] == count
      current_t -= 1
    else
      break
    end
  end
  restored.unshift(s[current_s - 1])
  current_s -= 1
  current_t -= 1
  count -= 1
end

puts restored.join("")

dp.each { |r| p r }
