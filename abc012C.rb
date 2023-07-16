n = gets.to_i
ans = []
1.upto(9).each do |former|
  1.upto(9).each do |latter|
    if former * latter + n == 2025
      ans << [former, latter]
    end
  end
end
ans.each do |a|
  puts a.join(" x ")
end
