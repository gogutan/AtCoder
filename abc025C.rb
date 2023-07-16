$b_1 = gets.split.map(&:to_i)
$b_2 = gets.split.map(&:to_i)
$c_1 = gets.split.map(&:to_i)
$c_2 = gets.split.map(&:to_i)
$c_3 = gets.split.map(&:to_i)

def dfs(turn, chokudai_put, rest)
  if turn == 9
    chokudai_score = 0
    chokudai_score += $b_1[0] if chokudai_put[0] == chokudai_put[3]
    chokudai_score += $b_1[1] if chokudai_put[1] == chokudai_put[4]
    chokudai_score += $b_1[2] if chokudai_put[2] == chokudai_put[5]
    chokudai_score += $b_2[0] if chokudai_put[3] == chokudai_put[6]
    chokudai_score += $b_2[1] if chokudai_put[4] == chokudai_put[7]
    chokudai_score += $b_2[2] if chokudai_put[5] == chokudai_put[8]
    chokudai_score += $c_1[0] if chokudai_put[0] == chokudai_put[1]
    chokudai_score += $c_1[1] if chokudai_put[1] == chokudai_put[2]
    chokudai_score += $c_2[0] if chokudai_put[3] == chokudai_put[4]
    chokudai_score += $c_2[1] if chokudai_put[4] == chokudai_put[5]
    chokudai_score += $c_3[0] if chokudai_put[6] == chokudai_put[7]
    chokudai_score += $c_3[1] if chokudai_put[7] == chokudai_put[8]
    return chokudai_score
  end
  tmp = []
  rest.each_with_index do |r, i|
    chokudai_dup = chokudai_put.dup
    chokudai_dup[r] = turn.even?
    rest_dup = rest.dup
    rest_dup.delete_at(i)
    tmp << dfs(turn + 1, chokudai_dup, rest_dup)
  end
  return turn.odd? ? tmp.min : tmp.max
end

sum = $b_1.inject(:+) + $b_2.inject(:+) + $c_1.inject(:+) + $c_2.inject(:+) + $c_3.inject(:+)
chokudai_score = dfs(0, Array.new(9), (0..8).to_a)
naoko_score = sum - chokudai_score
puts chokudai_score
puts naoko_score
