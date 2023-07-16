# 正規表現

n = gets.to_i
s_1 = gets.chomp
s_2 = gets.chomp

# 異なるアルファベットの組み合わせ(a, b)を発見したら、全ての a を b に置き換える
n.times do |i|
  a = s_1[i]
  b = s_2[i]
  if a.match?(/[A-Z]/) && b.match?(/[A-Z]/) && a != b
    s_1.gsub!(a, b)
    s_2.gsub!(a, b)
  end
end

# 数字とアルファベットの組み合わせ(a, num)(num, a)を発見したら、全ての a を num に置き換える
n.times do |i|
  a = s_1[i]
  b = s_2[i]
  if a.match?(/[0-9]/) && b.match?(/[A-Z]/)
    s_1.gsub!(b, a)
    s_2.gsub!(b, a)
  elsif a.match?(/[A-Z]/) && b.match?(/[0-9]/)
    s_1.gsub!(a, b)
    s_2.gsub!(a, b)
  end
end

ans = 1
# アルファベットの種類数だけ 10 をかける
# ただし先頭の場合は 9 をかける
s_1.chars.uniq.each_with_index do |c, i|
  if c.match?(/[A-Z]/)
    ans *= i == 0 ? 9 : 10
  end
end
puts ans
