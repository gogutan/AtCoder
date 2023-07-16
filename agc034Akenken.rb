n, a_start, b_start, a_goal, b_goal = gets.split(" ").map(&:to_i)
strings = gets.chomp.to_s
ans = "Yes"

# a_start・a_goal間に "##" があれば "No"
if strings[a_start - 1..a_goal - 1].include?("##")
  ans = "No"
# b_start・b_goal間に "##" があれば "No"
elsif strings[b_start - 1..b_goal - 1].include?("##")
  ans = "No"
# a_goal > b_goalの時、b_startの1歩手前・b_goalの1歩先の間に "..." がなければ "No"
# （a_goal > b_goalの場合、b_start・b_goal間でaがbを抜かす必要があるため）
elsif a_goal > b_goal && strings[b_start - 2..b_goal].include?("...") == false
  ans = "No"
end

puts ans