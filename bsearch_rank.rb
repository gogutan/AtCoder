# O(logN)
def bsearch_rank(sorted_nums, target)
  $results[target] = sorted_nums.bsearch_index { |num| num <= target } + 1
end

# O(NlogN)
nums = (1..1000000).to_a.shuffle
# O(NlogN)
sorted_nums = nums.sort.reverse
$results = {}
# O(NlogN)
nums.each do |target|
  bsearch_rank(sorted_nums, target)
end

pp $results