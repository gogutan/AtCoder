
def memo_trib(num)
  return 0 if num == 0
  return 0 if num == 1
  return 1 if num == 2

  return $memo[num] if $memo[num]

  return $memo[num] = memo_trib(num - 1) + memo_trib(num - 2) + memo_trib(num - 3)
end

num = gets.to_i
$memo = Array.new(num + 1)
puts memo_trib(num)
