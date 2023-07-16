h, w, n = gets.split.map(&:to_i)
sr, sc = gets.split.map(&:to_i)
takahashi = gets.chomp
aoki = gets.chomp

aoki_win_left = 1
aoki_win_right = w
(n - 1).downto(0) do |i|
  case aoki[i]
  when "R"
    aoki_win_left -= 1 if aoki_win_left > 1
  when "L"
    aoki_win_right += 1 if aoki_win_right < w
  end
  case takahashi[i]
  when "R"
    aoki_win_right -= 1
  when "L"
    aoki_win_left += 1
  end
  if aoki_win_right < aoki_win_left
    puts "NO"
    exit
  end
end

aoki_win_up = 1
aoki_win_down = h
(n - 1).downto(0) do |i|
  case aoki[i]
  when "D"
    aoki_win_up -= 1 if aoki_win_up > 1
  when "U"
    aoki_win_down += 1 if aoki_win_down < h
  end
  case takahashi[i]
  when "D"
    aoki_win_down -= 1
  when "U"
    aoki_win_up += 1
  end
  if aoki_win_down < aoki_win_up
    puts "NO"
    exit
  end
end

if sr.between?(aoki_win_up, aoki_win_down) && sc.between?(aoki_win_left, aoki_win_right)
  puts "YES"
else
  puts "NO"
end

# def gameover?(h, w, sr, sc, possible_l, possible_r, possible_u, possible_d)
#   if possible_l >= sc ||
#      possible_r > (w - sc) ||
#      possible_u >= sr ||
#      possible_d > (h - sr)
#     true
#   else
#     false
#   end
# end

# h, w, n = gets.split.map(&:to_i)
# sr, sc = gets.split.map(&:to_i)
# takahashi = gets.chomp
# aoki = gets.chomp
# memo = Hash.new(0)
# n.times do |i|
#   possible_l = memo[:takahashi_l] - memo[:aoki_r]
#   possible_r = memo[:takahashi_r] - memo[:aoki_l]
#   possible_u = memo[:takahashi_u] - memo[:aoki_d]
#   possible_d = memo[:takahashi_d] - memo[:aoki_u]

#   case takahashi[i]
#   when "L"
#     possible_l += 1
#     memo[:takahashi_l] += 1
#   when "R"
#     possible_r += 1
#     memo[:takahashi_r] += 1
#   when "U"
#     possible_u += 1
#     memo[:takahashi_u] += 1
#   when "D"
#     possible_d += 1
#     memo[:takahashi_d] += 1
#   end

#   case aoki[i]
#   when "L"
#     memo[:aoki_l] += 1
#   when "R"
#     memo[:aoki_r] += 1
#   when "U"
#     memo[:aoki_u] += 1
#   when "D"
#     memo[:aoki_d] += 1
#   end

#   if gameover?(h, w, sr, sc, possible_l, possible_r, possible_u, possible_d)
#     puts "NO"
#     exit
#   end
# end
# puts "YES"
