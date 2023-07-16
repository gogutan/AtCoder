n = gets.to_i
nums = gets.split.map(&:to_i)
previous = 0
successive = 0
memo = []
nums.reverse.each do |num|
  if num < previous
    successive += 1
  else
    successive = 1
  end
  memo << successive
  previous = num
end
puts memo.inject(:+)
