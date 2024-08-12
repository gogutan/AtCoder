memo = Hash.new(0)
ans = 0
gets.to_i.times do
  q, n = gets.split.map(&:to_i)
  case q
  when 1
    memo[n] += 1
    ans += 1 if memo[n] == 1
  when 2
    memo[n] -= 1
    ans -= 1 if memo[n] == 0
  else
    puts ans
  end
end
