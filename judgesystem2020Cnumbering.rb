nums = gets.split.map(&:to_i)
sum = nums.sum
a1, a2, a3 = nums
blocks = Array.new(3) { Array.new(3, 10) }
ans = 0
(1..sum).to_a.permutation(sum).each do |perm|
  blocks_dup = blocks.dup
  a1.times do |i|
    blocks_dup[2 - i][0] = perm.shift
  end
  a2.times do |i|
    blocks_dup[2 - i][1] = perm.shift
  end
  a3.times do |i|
    blocks_dup[2 - i][2] = perm.shift
  end
  flag = true
  blocks_dup.each do |row|
    break unless flag
    flag = false if row != row.sort
  end
  blocks_rotated = blocks_dup.transpose.map(&:reverse)
  blocks_rotated.each do |row|
    break unless flag
    flag = false if row != row.sort
  end
  ans += 1 if flag
end
puts ans
