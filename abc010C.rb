txa, tya, txb, tyb, t, v = gets.split.map(&:to_i)
n = gets.to_i
girls = []
n.times { girls << gets.split.map(&:to_i) }
ans = "NO"
girls.each do |g_x, g_y|
  dist_to_girl = Math.sqrt((txa - g_x).abs ** 2 + (tya - g_y).abs ** 2)
  dist_to_after = Math.sqrt((txb - g_x).abs ** 2 + (tyb - g_y).abs ** 2)
  dist_total = dist_to_girl + dist_to_after
  if dist_total <= t * v
    ans = "YES"
    break
  end
end
puts ans