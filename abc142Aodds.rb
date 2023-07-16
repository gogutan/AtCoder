n = gets.to_i
odds = 0
evens = 0
1.upto(n) do |i|
  if i.odd?
    odds += 1
  else
    evens += 1
  end
end
puts odds.to_f / (odds + evens)
