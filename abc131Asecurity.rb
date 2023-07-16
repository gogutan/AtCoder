ss = gets.chomp.split("").map(&:to_i)
previous = ""
ans = "Good"
ss.each do |s|
  if previous == s
    ans = "Bad"
  end
  previous = s
end
puts ans