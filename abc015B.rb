n = gets.to_i
bugs = gets.split.map(&:to_i)
softs_with_bugs = bugs.count { |item| item > 0 }
bugs_sum = bugs.inject(:+)
puts (bugs_sum / softs_with_bugs.to_f).ceil
