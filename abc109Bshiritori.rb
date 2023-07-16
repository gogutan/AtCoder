n = gets.chomp.to_i
words = []
n.times do
  words << gets.chomp.to_s
end

ans = "Yes"
if n != words.uniq.length
  ans = "No"
end

previous_last = words[0][0]
words.each do |word|
  unless word.start_with?(previous_last)
    ans = "No"
    break
  end
  previous_last = word[-1]
end

puts ans
