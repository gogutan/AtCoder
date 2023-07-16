h, w, m = gets.split.map(&:to_i)
bomb_memo = Array.new(h) { Array.new }
h_memo = Hash.new(0)
w_memo = Hash.new(0)
m.times do
  hi, wi = gets.split.map(&:to_i).map(&:pred)
  h_memo[hi] += 1
  w_memo[wi] += 1
  bomb_memo[hi] << wi
end

h_max = 0
h_memo.values.each do |v|
  h_max = v if h_max < v
end
h_maxes = []
h_memo.each do |k, v|
  next if v < h_max
  h_maxes << k
end

w_max = 0
w_memo.values.each do |v|
  w_max = v if w_max < v
end
w_maxes = []
w_memo.each do |k, v|
  next if v < w_max
  w_maxes << k
end

existing_empty = false
h_maxes.each do |h_m|
  if !(w_maxes - bomb_memo[h_m]).empty?
    existing_empty = true
    break
  end
end
ans = h_max + w_max
ans -= 1 unless existing_empty
puts ans
