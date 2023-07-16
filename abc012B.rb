n = gets.to_i
h, s = n.divmod(3600)
m, s = s.divmod(60)
ans = [h, m, s]
formatted_ans = ans.map { |item| "%02d" % item }
puts formatted_ans.join(":")
