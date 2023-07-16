INF = 10 ** 5
n = gets.to_i
neccesary_people = []
(0...INF).each do |group_count|
  neccesary_people[group_count] = group_count * (group_count - 1)
end
if group_count = neccesary_people.find_index(n * 2)
  puts "Yes"
  puts group_count
  ans = Array.new(group_count) { Array.new }
  (0...group_count).to_a.combination(2).each.with_index(1) do |c, i|
    c.each do |group|
      ans[group] << i
    end
  end
  ans.each do |row|
    puts "#{group_count - 1} #{row.join(" ")}"
  end
else
  puts "No"
end
