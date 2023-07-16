n, m = gets.split.map(&:to_i)
paths = Array.new
m.times do
  paths << gets.split.map(&:to_i)
end
paths.sort! { |a, b| (a[0] <=> b[0]).nonzero? || (a[1] <=> b[1]) }
shortests = Array.new(n)
shortests[0] = 0
paths.each do |l, r, c|
  if shortests[l - 1]
    cost = shortests[l - 1] + c
    (r - 1).downto(l) do |index|
      if !shortests[index] || shortests[index] > cost
        shortests[index] = cost
      else
        break
      end
    end
  end
end
if shortests.last
  puts shortests.last
else
  puts -1
end
