n = gets.to_i
votes = []
n.times { votes << gets.chomp.to_s }
puts votes.max_by { |item| votes.count(item) }
