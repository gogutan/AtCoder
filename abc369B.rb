n = gets.to_i
memo = { l: nil, r: nil }
ans = 0
n.times do
  pos, hand = gets.split
  pos = pos.to_i
  hand = hand.chomp.to_sym
  ans += (pos - memo[hand]).abs if memo[hand]
  memo[hand] = pos
end
puts ans
