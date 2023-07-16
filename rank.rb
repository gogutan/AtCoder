# O(N)
def rank(nums, target)
  $results[target] = nums.count { |num| num > target } + 1
end

# O(NlogN)
# nums = [1, 56, 3, 735, 23, 7, 34, 7, 342]
nums = (1..10000).to_a.shuffle
$results = {}
# O(N^2)
nums.each do |target|
  rank(nums, target)
end

pp $results
