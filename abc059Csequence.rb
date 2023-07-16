n = gets.to_i
nums = gets.split.map(&:to_i)

def minimum_count(nums, next_minus)
  ans = 0
  cumulative = 0
  nums.each do |num|
    cumulative += num
    if next_minus
      if cumulative >= 0
        decrement = cumulative.abs + 1
        ans += decrement
        cumulative -= decrement
      end
    else
      if cumulative <= 0
        increment = cumulative.abs + 1
        ans += increment
        cumulative += increment
      end
    end
    next_minus = !next_minus
  end
  ans
end
puts [minimum_count(nums, false), minimum_count(nums, true)].min
