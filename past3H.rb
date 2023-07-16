INF = 10 ** 5
n, l = gets.split.map(&:to_i)
hurdles = gets.split.map(&:to_i)
hurldes_bool = []
hurdles.each do |hurdle|
  hurldes_bool[hurdle] = true
end
times = gets.split.map(&:to_i)
dp = Array.new(INF + 4, INF * 1000)
dp[0] = 0
(0...INF).each do |from|
  current = dp[from]
  # one
  tmp_one = current + times[0]
  tmp_one += times[2] if hurldes_bool[from]
  dp[from + 1] = tmp_one if dp[from + 1] > tmp_one
  # two
  tmp_two = current + times[0]
  tmp_two += times[2] if hurldes_bool[from]
  tmp_two += times[1]
  dp[from + 2] = tmp_two if dp[from + 2] > tmp_two
  # three
  tmp_three = current + times[0]
  tmp_three += times[2] if hurldes_bool[from]
  tmp_three += times[1] * 3
  dp[from + 4] = tmp_three if dp[from + 4] > tmp_three
end

mins = [dp[l]]

op1 = dp[l - 1] + times[0] / 2 + times[1] / 2
op1 += times[2] if hurldes_bool[l - 1]
mins << op1

op2 = dp[l - 2] + times[0] / 2 + times[1] / 2 * 3
op2 += times[2] if hurldes_bool[l - 2]
mins << op2

if l > 2
  op3 = dp[l - 3] + times[0] / 2 + times[1] / 2 * 5
  op3 += times[2] if hurldes_bool[l - 3]
  mins << op3
end

puts mins.min
