scores = Array.new
(1..3).each do |i|
  scores << [i, gets.chomp.to_i, 0]
end

scores.sort! {|a, b| a[1] <=> b[1]}.reverse!

scores.each_with_index do |score, i|
  score[2] = i + 1
end

scores.sort! {|a, b| a[0] <=> b[0]}

scores.each do |score|
  puts score[2]
end

scores.sort! {|a, b| a <=> b}