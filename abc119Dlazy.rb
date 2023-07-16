INF = 10 ** 20
A, B, Q = gets.chomp.split(" ").map(&:to_i)

S_ARRAY = []
S_ARRAY << -INF
A.times do
  S_ARRAY << gets.to_i
end
S_ARRAY << INF

T_ARRAY = []
T_ARRAY << -INF
B.times do
  T_ARRAY << gets.to_i
end
T_ARRAY << INF

X_ARRAY = []
Q.times do
  X_ARRAY << gets.to_i
end

X_ARRAY.each do |x|
  east_s_index = S_ARRAY.bsearch_index {|pos| pos >= x}
  nearest_ss = [S_ARRAY[east_s_index - 1], S_ARRAY[east_s_index]]

  east_t_index = T_ARRAY.bsearch_index {|pos| pos >= x}
  nearest_ts = [T_ARRAY[east_t_index - 1], T_ARRAY[east_t_index]]

  distances = []

  nearest_ss.each do |s|
    nearest_ts.each do |t|
      distances << (x - s).abs + (s - t).abs
      distances << (x - t).abs + (t - s).abs
    end
  end

  puts distances.min
end