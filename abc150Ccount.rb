n = gets.to_i
ps = gets.split.map(&:to_i)
qs = gets.split.map(&:to_i)

sorted = ps.permutation(n).to_a.sort
p_num = 0
q_num = 0

sorted.each_with_index do |s, i|
  if s == ps
    p_num = i
    break
  end
end

sorted.each_with_index do |s, i|
  if s == qs
    q_num = i
    break
  end
end

puts (p_num - q_num).abs
