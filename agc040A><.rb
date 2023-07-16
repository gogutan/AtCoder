s = gets.chomp.split("")

left_streak = [0]
current_left_streak = 0
s.each do |c|
  current_left_streak = c == "<" ? current_left_streak + 1 : 0
  left_streak << current_left_streak
end

right_streak = [0]
current_right_streak = 0
s.reverse.each do |c|
  current_right_streak = c == ">" ? current_right_streak + 1 : 0
  right_streak.unshift(current_right_streak)
end

nums = []
(s.size + 1).times { |i| nums << [left_streak[i], right_streak[i]].max }

puts nums.inject(:+)
