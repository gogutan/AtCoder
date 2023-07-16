def edit_distance(str1, str2)
  m = str1.length
  n = str2.length
  dp = Array.new(m + 1) { Array.new(n + 1) }
  (0..m).each { |i| dp[i][0] = i }
  (0..n).each { |j| dp[0][j] = j }
  (1..m).each do |i|
    (1..n).each do |j|
      dp[i][j] = [dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]].min + 1
      dp[i][j] = dp[i - 1][j - 1] if str1[i - 1] == str2[j - 1]
    end
  end
  dp[m][n]
end

p edit_distance("algorithm", "logistic")