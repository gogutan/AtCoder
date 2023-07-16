bingo = []
3.times { bingo += gets.split.map(&:to_i) }
n = gets.to_i
nums = []
n.times { nums << gets.to_i }
called = []
nums.each do |num|
  bingo.each_with_index { |b, i| called << i if num == b }
end

bingo_list = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
]

finished = bingo_list.any? do |list|
  list.all? { |c| called.include?(c) }
end

puts finished ? "Yes" : "No"  
