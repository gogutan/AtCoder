n = gets.to_i
lrs = n.times.map { gets.split.map(&:to_i) }
l_sum = lrs.map { |l, _| l }.sum
margin_sum = lrs.map { |l, r| r - l }.sum
# pp l_sum
# pp margin_sum
if (l_sum..(l_sum + margin_sum)).include?(0)
  ans = []
  lrs.each do |l, r|
    if l_sum == 0
      ans << l
    else
      diff = [l_sum.abs, (r - l).abs].min
      ans << l + diff
      l_sum += diff
    end
  end
  puts 'Yes'
  puts ans.join(' ')
  # puts ans.sum
else
  puts 'No'
end
