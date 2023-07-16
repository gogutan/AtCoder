n = gets.to_i
irons = gets.split.map(&:to_i)
iron_sum = irons.inject(:+)
if iron_sum.even?
  half = iron_sum / 2
  tmp = 0
  mid = 0
  left = 0
  left_with_mid = 0
  right = 0
  right_with_mid = 0
  irons.each_with_index do |iron, index|
    tmp += iron
    if tmp >= half
      mid = iron
      left_with_mid = tmp
      left = left_with_mid - mid
      right = iron_sum - left_with_mid
      right_with_mid = right + mid
      break
    end
  end
  puts [left_with_mid - right, right_with_mid - left].min
else
  iron_sum += 1
  irons[0] += 1
  half = iron_sum / 2
  tmp = 0
  mid = 0
  left = 0
  left_with_mid = 0
  right = 0
  right_with_mid = 0
  irons.each_with_index do |iron, index|
    tmp += iron
    if tmp >= half
      mid = iron
      left_with_mid = tmp
      left = left_with_mid - mid
      right = iron_sum - left_with_mid
      right_with_mid = right + mid
      break
    end
  end
  option1 = [left_with_mid - right, right_with_mid - left].min + 1

  irons[0] -= 1
  irons[n - 1] += 1
  half = iron_sum / 2
  tmp = 0
  mid = 0
  left = 0
  left_with_mid = 0
  right = 0
  right_with_mid = 0
  irons.each_with_index do |iron, index|
    tmp += iron
    if tmp >= half
      mid = iron
      left_with_mid = tmp
      left = left_with_mid - mid
      right = iron_sum - left_with_mid
      right_with_mid = right + mid
      break
    end
  end
  option2 = [left_with_mid - right, right_with_mid - left].min + 1

  puts [option1, option2].min
end