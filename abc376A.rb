_, c = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)
ans = 1
elapsed_time = 0
ts.each_cons(2) do |t1, t2|
  elapsed_time += (t2 - t1)
  if elapsed_time >= c
    ans += 1
    elapsed_time = 0
  end
end
puts ans
