n, k = gets.split.map(&:to_i)

ans = 0
(1..n).each do |index|
  loop_count, mod = n.divmod(index)
  possible_count = [index - k, 0].max
  ans += loop_count * possible_count
  ans += k == 0 ? mod : [mod - k + 1, 0].max
end

puts ans
