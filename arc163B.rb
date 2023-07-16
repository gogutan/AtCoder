n, m = gets.split.map(&:to_i)
a1, a2, *nums = gets.split.map(&:to_i)
nums.sort!

left = 0
right = (nums.bsearch_index { |num| num > a2 } || nums.size) - 1
ans = 1_000_000

while true
  if (right - left + 1) >= m
    a = nums[right] > a2 ? nums[right] : a2
    b = nums[left] < a1 ? nums[left] : a1
    tmp = a - b - a2 + a1
    # tmp = [nums[right], a2].max - [nums[left], a1].min - a2 + a1
    ans = tmp if tmp < ans
    break if nums[left] >= a1

    next_left = left + 1
    current = nums[next_left - 1]
    while nums[next_left] == current
      next_left += 1
    end
    left = next_left
  end

  if (right - left + 1) < m
    next_right = right + 1
    current = nums[next_right]
    while current == nums[next_right + 1]
      next_right += 1
    end
    right = next_right
  end
end

puts ans
