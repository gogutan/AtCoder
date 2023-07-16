n = gets.to_i
votes = []
n.times { votes << gets.split.map(&:to_i) }
a, b = votes.shift
votes.each do |a_rate, b_rate|
  a_multiple, a_mod = a.divmod(a_rate)
  a_multiple += 1 if a_mod.nonzero?
  b_multiple, b_mod = b.divmod(b_rate)
  b_multiple += 1 if b_mod.nonzero?
  multiple = [a_multiple, b_multiple].max
  a = a_rate * multiple
  b = b_rate * multiple
end
puts a + b
