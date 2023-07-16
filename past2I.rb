n = gets.to_i
nums = gets.split.map(&:to_i).map.with_index { |n, i| [n, i] }
count = 1
ans = []
until nums.empty?
  if nums.size == 2
    _, a_index = nums.shift
    _, b_index = nums.shift
    ans[a_index] = count
    ans[b_index] = count
  end
  tmp = []
  until nums.empty?
    a, a_index = nums.shift
    b, b_index = nums.shift
    if a > b
      ans[b_index] = count
      tmp << [a, a_index]
    else
      ans[a_index] = count
      tmp << [b, b_index]
    end
  end
  nums = tmp
  count += 1
end
puts ans
