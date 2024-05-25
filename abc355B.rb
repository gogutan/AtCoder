INF = 1000
n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
bs = gets.split.map(&:to_i).sort

prev_a = false
ans = false
while !as.empty? || !bs.empty?
  if (as[0] || INF) < (bs[0] || INF)
    as.shift
    if prev_a
      ans = true
    else
      prev_a = true
    end
  else
    bs.shift
    prev_a = false
  end
end

puts ans ? 'Yes' : 'No'
