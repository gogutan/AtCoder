human, leg = gets.split.map(&:to_i)
ans = [0, 0, 0]
if human * 4 < leg || human * 2 > leg
  ans = [-1, -1, -1]
else
  if leg.odd?
    ans[1] = 1
    human -= 1
    leg -= 3
  end
  leg_lack = leg - human * 2
  baby = leg_lack / 2
  adult = human - baby
  ans[0] = adult
  ans[2] = baby
end
puts ans.join(" ")
