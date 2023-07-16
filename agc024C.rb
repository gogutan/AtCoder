n = gets.to_i
nums = []
n.times { nums << gets.to_i }
previous = 0
ans = 0
nums.reverse.each_with_index do |num, index|
  current = [previous - 1, 0].max
  if current > num
    puts -1
    exit
  elsif current != num
    ans += num
  end
  previous = num
end
puts previous != 0 ? -1 : ans
