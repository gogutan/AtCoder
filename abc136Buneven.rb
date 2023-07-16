n = gets.to_i
sum = 0
n.downto(1) do |num|
  if num.to_s.size.odd?
    sum += 1
  end
end
puts sum
