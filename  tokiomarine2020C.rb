n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
zeros = Array.new(n + 1, 0)
previous = nums
k.times do |i|
  after = Array.new(n + 1, 0)
  previous.each_with_index do |num, index|
    if num == n
      after[0] += 1
      after[n] -= 1
    else
      min = index - num
      min = 0 if min < 0
      max = index + num
      max = n - 1 if max > n - 1
      after[min] += 1
      after[max + 1] -= 1
    end
  end
  minimum = n
  prev = after[0]
  (1...n).each do |i|
    cur = after[i]
    next if cur == n
    cur += prev
    minimum = cur if minimum > cur
    cur = n if cur > n
    after[i] = cur
    prev = cur
  end
  after.delete_at(-1)
  previous = after
  break if minimum == n
end

previous[0] = n if previous.first > n
puts previous.join(' ')
