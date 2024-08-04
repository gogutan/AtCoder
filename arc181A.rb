t = gets.to_i
t.times do
  n = gets.to_i
  nums = gets.split.map(&:to_i)
  max = 0
  zero = true
  one = false
  nums.each.with_index(1) do |num, i|
    zero = false if num != i
    one = true if num == i && max < num
    max = num if num > max
  end

  if zero
    puts 0
  elsif one
    puts 1
  elsif nums[0] != n || nums[-1] != 1
    puts 2
  else
    puts 3
  end
end
