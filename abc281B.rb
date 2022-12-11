s = gets.chomp
ans = 'Yes'
ans = 'No' unless s.length == 8

s.each_char.with_index do |c, i|
  if i == 0
    ans = 'No' unless c.match?(/[A-Z]/)
  elsif i == 1
    ans = 'No' unless c.match?(/[1-9]/)
  elsif i < 7
    ans = 'No' unless c.match?(/[0-9]/)
  else
    ans = 'No' unless c.match?(/[A-Z]/)
  end
end

puts ans
