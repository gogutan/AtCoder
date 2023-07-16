n = gets.to_i
array = []
n.times do
  t, k, *nums = gets.split.map(&:to_i)
  array << [t, k, nums]
end

memo = Hash.new(false)
queue = [n]

until queue.empty?
  pos = queue.pop
  memo[pos - 1] = true
  array[pos - 1][2].each do |next_pos|
    next if memo[next_pos - 1]

    queue << next_pos
  end
end

puts memo.keys.map { |key| array[key][0] }.sum
