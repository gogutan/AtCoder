h, w, n = gets.split(" ").map(&:to_i)
sr, sc = gets.split(" ").map(&:to_i)
takahashi = gets.split("").map(&:to_s)
aoki = gets.split("").map(&:to_s)
aoki.insert(0, "")


takahashi_l_sum = []
takahashi_r_sum = []
takahashi_u_sum = []
takahashi_d_sum = []

aoki_l_sum = []
aoki_r_sum = []
aoki_u_sum = []
aoki_d_sum = []

takahashi.each_with_index do |t, index|
  # puts "OK"
  if index == 0
    if t == "L"
      takahashi_l_sum.push(1)
      takahashi_r_sum.push(0)
      takahashi_u_sum.push(0)
      takahashi_d_sum.push(0)
    elsif t == "R"
      takahashi_l_sum.push(0)
      takahashi_r_sum.push(1)
      takahashi_u_sum.push(0)
      takahashi_d_sum.push(0)
    elsif t == "U"
      takahashi_l_sum.push(0)
      takahashi_r_sum.push(0)
      takahashi_u_sum.push(1)
      takahashi_d_sum.push(0)
    elsif t == "D"
      takahashi_l_sum.push(0)
      takahashi_r_sum.push(0)
      takahashi_u_sum.push(0)
      takahashi_d_sum.push(1)
    end
  else
    if t == "L"
      takahashi_l_sum.push(takahashi_l_sum[index - 1] + 1)
      takahashi_r_sum.push(takahashi_r_sum[index - 1])
      takahashi_u_sum.push(takahashi_u_sum[index - 1])
      takahashi_d_sum.push(takahashi_d_sum[index - 1])
    elsif t == "R"
      takahashi_l_sum.push(takahashi_l_sum[index - 1])
      takahashi_r_sum.push(takahashi_r_sum[index - 1] + 1)
      takahashi_u_sum.push(takahashi_u_sum[index - 1])
      takahashi_d_sum.push(takahashi_d_sum[index - 1])
    elsif t == "U"
      takahashi_l_sum.push(takahashi_l_sum[index - 1])
      takahashi_r_sum.push(takahashi_r_sum[index - 1])
      takahashi_u_sum.push(takahashi_u_sum[index - 1] + 1)
      takahashi_d_sum.push(takahashi_d_sum[index - 1])
    elsif t == "D"
      takahashi_l_sum.push(takahashi_l_sum[index - 1])
      takahashi_r_sum.push(takahashi_r_sum[index - 1])
      takahashi_u_sum.push(takahashi_u_sum[index - 1])
      takahashi_d_sum.push(takahashi_d_sum[index - 1] + 1)
    end
  end
end

aoki.each_with_index do |t, index|
  if index == 0
    aoki_l_sum.push(0)
    aoki_r_sum.push(0)
    aoki_u_sum.push(0)
    aoki_d_sum.push(0)
  else
    if t == "L"
      aoki_l_sum.push(aoki_l_sum[index - 1] + 1)
      aoki_r_sum.push(aoki_r_sum[index - 1])
      aoki_u_sum.push(aoki_u_sum[index - 1])
      aoki_d_sum.push(aoki_d_sum[index - 1])
    elsif t == "R"
      aoki_l_sum.push(aoki_l_sum[index - 1])
      aoki_r_sum.push(aoki_r_sum[index - 1] + 1)
      aoki_u_sum.push(aoki_u_sum[index - 1])
      aoki_d_sum.push(aoki_d_sum[index - 1])
    elsif t == "U"
      aoki_l_sum.push(aoki_l_sum[index - 1])
      aoki_r_sum.push(aoki_r_sum[index - 1])
      aoki_u_sum.push(aoki_u_sum[index - 1] + 1)
      aoki_d_sum.push(aoki_d_sum[index - 1])
    elsif t == "D"
      aoki_l_sum.push(aoki_l_sum[index - 1])
      aoki_r_sum.push(aoki_r_sum[index - 1])
      aoki_u_sum.push(aoki_u_sum[index - 1])
      aoki_d_sum.push(aoki_d_sum[index - 1] + 1)
    end
  end
end

l_sum = []
r_sum = []
u_sum = []
d_sum = []

takahashi_l_sum.length.times do |index|
  l_sum.push(takahashi_l_sum[index] - aoki_r_sum[index])
end

takahashi_r_sum.length.times do |index|
  r_sum.push(takahashi_r_sum[index] - aoki_l_sum[index])
end

takahashi_u_sum.length.times do |index|
  u_sum.push(takahashi_u_sum[index] - aoki_d_sum[index])
end

takahashi_d_sum.length.times do |index|
  d_sum.push(takahashi_d_sum[index] - aoki_u_sum[index])
end

l_must = sc
r_must = w - sc + 1
u_must = sr
d_must = h - sr + 1

puts l_sum
puts ""
puts r_sum
puts ""
puts u_sum
puts ""
puts d_sum
puts ""

l_sum.each do |lsum|
  if lsum >= l_must
    puts "NO"
    exit
  end
end

r_sum.each do |rsum|
  if rsum >= r_must
    puts "NO"
    exit
  end
end

u_sum.each do |usum|
  if usum >= u_must
    puts "NO"
    exit
  end
end

d_sum.each do |dsum|
  if dsum >= d_must
    puts "NO"
    exit
  end
end

puts "YES"