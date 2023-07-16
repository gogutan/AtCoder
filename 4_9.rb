def func(checked_index, rest, nums)
  if checked_index == 0
    return true if rest == 0

    return false
  end

  # nums[checked_index - 1] を選ばない場合
  return true if func(checked_index - 1, rest, nums)

  # nums[checked_index - 1] を選ばない場合
  return true if func(checked_index - 1, rest - nums[checked_index - 1], nums)

  return false
end

nums = [3, 2, 6, 5]
rest = 14
checked_index = nums.size # [3, 2, 6, 5] の1つ外側のindex

puts func(checked_index, rest, nums)
