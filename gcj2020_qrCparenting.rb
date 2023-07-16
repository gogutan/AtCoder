t = gets.to_i
nums = []
activities = []
t.times do
  n = gets.to_i
  nums << n
  activity = []
  n.times do |i|
    tmp = gets.split.map(&:to_i)
    tmp << i
    activity << tmp
  end
  activities << activity
end

(1..t).each do |problem|
  num = nums[problem - 1]
  activity = activities[problem - 1].sort
  c = 0
  j = 0
  ans = []
  activity.each do |from, to, i|
    if c <= from
      c = to
      ans[i] = "C"
    elsif j <= from
      j = to
      ans[i] = "J"
    else
      ans = %W(I M P O S S I B L E)
      break
    end
  end
  puts "Case ##{problem}: #{ans.join}"
end
