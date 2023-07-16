n, x, m = gets.split.map(&:to_i)
memo = Array.new(10 ** 5 + 1, false)
tmp_nums = []
until memo[x]
  memo[x] = true
  tmp_nums << x
  x **= 2
  x %= m
end

tmp_nums_size = tmp_nums.size
first_x_index = tmp_nums.find_index(x)
not_loop_nums = tmp_nums[0, first_x_index]
not_loop_nums_size = not_loop_nums.size
loop_nums = tmp_nums[first_x_index..-1]
loop_nums_size = loop_nums.size

if n <= tmp_nums_size
  puts tmp_nums[0, n].sum
else
  ans = tmp_nums.sum
  rest = n - tmp_nums_size
  loop_count, mod = rest.divmod(loop_nums_size)
  ans += loop_nums.sum * loop_count
  ans += loop_nums[0, mod].sum
  puts ans
end
