rs = gets.split.map(&:to_i).sort
max = rs.inject(:+)
min = rs[0] + rs[1] >= rs[2] ? 0: rs[2] - (rs[0] + rs[1])
puts (max ** 2 - min ** 2) * Math::PI
