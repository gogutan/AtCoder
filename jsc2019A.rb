m, d = gets.split.map(&:to_i)
ans = 0
(1..m).each do |mon|
  (1..d).each do |day|
    day_s = day.to_s
    if day_s[0].to_i >= 2 && day_s[1].to_i >= 2 && day_s[0].to_i * day_s[1].to_i == mon
      ans += 1
    end
  end
end
puts ans
