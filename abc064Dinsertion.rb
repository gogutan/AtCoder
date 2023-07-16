n = gets.to_i
s = gets.chomp.split("")

l_sum = 0
s.each do |c|
  if c == "("
    l_sum += 1
  else
    if l_sum > 0
      l_sum -= 1
    end
  end
end

r_sum = 0
s.reverse.each do |c|
  if c == ")"
    r_sum += 1
  else
    if r_sum > 0
      r_sum -= 1
    end
  end
end

l_sum.times do
  s.push(")")
end

r_sum.times do
  s.unshift("(")
end

puts s.join
