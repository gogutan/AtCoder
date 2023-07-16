s = gets.chomp.chars
puts s.tally.each.max_by { |k, v| v }[0]
