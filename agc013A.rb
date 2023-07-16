n = gets.to_i
nums = gets.split.map(&:to_i)

ans = 1
direction_fixed = false
ascending = nil

nums.each_cons(2) do |a, b|
  if !direction_fixed && a != b
    direction_fixed = true
    ascending = a < b ? true : false
  elsif direction_fixed && (ascending && a > b || !ascending && a < b)
    direction_fixed = false
    ascending = nil
    ans += 1
  end
end

puts ans
