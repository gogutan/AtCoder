MOD = 10 ** 9 + 7
n = gets.to_i
takahashi = gets.split.map(&:to_i)
aoki = gets.split.map(&:to_i)
fixed = Array.new(n)

takahashi_prev = 0
takahashi.each_with_index do |h, i|
  next if h <= takahashi_prev
  takahashi_prev = h
  fixed[i] = h
end

aoki_prev = 0
aoki.reverse.each_with_index do |h, i|
  if fixed[-i - 1] && fixed[-i - 1] > h
    puts 0
    exit
  end
  next if h <= aoki_prev
  aoki_prev = h
  fixed[-i - 1] = h
end

ans = 1
fixed.each_with_index do |h, i|
  ans *= [takahashi[i], aoki[i]].min unless h
  ans %= MOD
end

puts ans
