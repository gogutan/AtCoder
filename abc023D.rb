# 全体でO(NlogN)
def can_score?(score, height_and_speeds)
  # O(N)
  left_times = height_and_speeds.map do |height, speed|
                 # 例えばscore(20点)を取りたい時、height（5m）なら、rest_height(15m上昇してもセーフ)となる
                 rest_height = score - height
                 # speed(6)の時、2秒後は17mなのでセーフ、3秒後は23mなのでアウト
                 # なので rest_height(15) / speed(6) = 2 を返す
                 rest_height / speed
               end

  # O(NlogN)、ここがボトルネックのオーダー数
  # scoreを獲得するためのleft_timeが少ない順（余裕がない順）にソート
  left_times.sort!
  puts "score: #{score} を取るためには、それぞれ何秒後までに風船を割れば良いか？↓"
  p left_times

  # O(N)
  # 実際に先頭から順に風船を割っていき、left_timeを超えてしまった風船が1つでもあればfalse
  can_score = true
  left_times.each_with_index do |left_time, order|
    can_score = false if left_time < order
  end

  puts "score: #{score} を取ることができるか？ #{can_score}"
  puts
  can_score
end

M = 1_000_000_000 * 100_000
n = gets.to_i
# 風船の高さと上昇するスピード
# [[5, 6], [12, 4], [14, 7], [21, 2]]
height_and_speeds = []
n.times { height_and_speeds << gets.split.map(&:to_i) }

# 二分探索はO(logM)
# 全体でO(NlogNlogM) 100_000 * 15 * 40 みたいなイメージ
least_score = (0..M).bsearch { |score| can_score?(score, height_and_speeds) }

puts least_score
