n, m = gets.split.map(&:to_i)
submits = []
m.times { submits << gets.split }
problems = Array.new(n) { Array.new }
submits.each do |problem, judge|
  problems[problem.to_i - 1] << judge
end
ac = 0
wa = 0
problems.each do |problem|
  current_wa = 0
  problem.each do |judge|
    if judge == "AC"
      wa += current_wa
      ac += 1
      break
    else
      current_wa += 1
    end
  end
end
puts "#{ac} #{wa}"
