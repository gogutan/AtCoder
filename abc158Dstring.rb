s = gets.chomp.split("").map(&:to_s)
q = gets.to_i
queries = []
q.times do
  tmp = gets.chomp.split
  if tmp.first == 1
    queries << tmp.first
  else
    queries << [tmp[0].to_i, tmp[1].to_i, tmp[2]]
  end
end
reversed = false
queries.each do |a, b, c|
  if a == 1
    reversed = !reversed
  else
    if b == 1
      if reversed
        s.push(c)
      else
        s.unshift(c)
      end
    else
      if reversed
        s.unshift(c)
      else
        s.push(c)
      end
    end
  end
end
s.reverse! if reversed
puts s.join
