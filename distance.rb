T = %w(a l g o r i t h m)
S = %w(l o g i s t i c)
dp = Array.new(S.size + 1) { Array.new(T.size + 1) }

dp[0] = (0..T.size).to_a
(1..S.size).each do |i|
  dp[i][0] = i
end

pp dp

(1..S.size).each do |s_pos|
  (1..T.size).each do |t_pos|
    change_min = S[s_pos - 1] == T[t_pos - 1] ? dp[s_pos - 1][t_pos - 1] : dp[s_pos - 1][t_pos - 1] + 1
    delete_min = dp[s_pos - 1][t_pos] + 1
    insert_min = dp[s_pos][t_pos - 1] + 1

    dp[s_pos][t_pos] = [change_min, delete_min, insert_min].min
  end
end

pp dp

# (1..S.size).each do |s_pos|
#   (1..T.size).each do |t_pos|
#     # change_min
#     if S[s_pos] == T[t_pos]
#       dp[s_pos][t_pos] = [dp[s_pos][t_pos], dp[s_pos - 1][t_pos - 1]].min
#     else
#       dp[s_pos][t_pos] = [dp[s_pos][t_pos], dp[s_pos - 1][t_pos - 1] + 1].min
#     end

#     dp[s_pos][t_pos] = [dp[s_pos][t_pos], dp[s_pos - 1][t_pos] + 1, dp[s_pos][t_pos - 1] + 1].min
#     dp[s_pos][t_pos] = [dp[s_pos][t_pos], dp[s_pos][t_pos - 1] + 1].min
#   end
# end