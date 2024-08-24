n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
former = nums[0, n - k]
latter = nums[n - k..]
puts (latter + former).join(' ')
