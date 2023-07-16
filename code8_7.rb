N = 10_000_000
K = 1_000_000
nums_array = Array.new(N) { rand(K) }
nums_array2 = Array.new(N) { rand(K) }

puts "Preparation Done"
nums_array2.sort!

answer = []
# O(N)
# 全体としてO(NlogN)
nums_array.each do |num_from_array|
  # O(logN)
  num_from_array2 = nums_array2.bsearch { |n| num_from_array + n >= K }
  next unless num_from_array2
  if (num_from_array + num_from_array2) == K
    answer << [num_from_array, num_from_array2]
  end
end

p answer.size

# N = 10_000_000
# K = 1_000_000
# nums_array = Array.new(N) { rand(K) }
# nums_hash = Array.new(N) { rand(K) }.each_with_object({}) { |num, hash| hash[num] = nil }

# puts "Preparation Done"

# answer = []
# # O(N)
# # 全体としてO(N)
# nums_array.each do |num|
#   rest = K - num
#   # O(1)
#   if nums_hash.key?(rest)
#     answer << [num, rest]
#   end
# end

# p answer.size
