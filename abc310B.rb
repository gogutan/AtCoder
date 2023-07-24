n, m = gets.split.map(&:to_i)
things = n.times.map { gets.split.map(&:to_i) }
ans = false
things.permutation(2) do |(p1, c1, *fs1), (p2, c2, *fs2)|
  if fs1.all? { |f| fs2.include?(f) } && p2 <= p1 && (p2 < p1 || c2 > c1)
    ans = true
    break
  end
end
puts ans ? 'Yes' : 'No'
