n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
first = 0
(0..n - 2).each do |index|
  (index + 1..n - 1).each do |index2|
    first += 1 if nums[index] > nums[index2]
  end
end

second = 0
nums_2 = nums + nums

(0..n * 2 - 2).each do |index|
  (index + 1..n * 2 - 1).each do |index2|
    second += 1 if nums_2[index] > nums_2[index2]
  end
end

second -= (first * 2)

avg = (k - 1) / 2
count = (avg * k)
if (k - 1).odd?
  count += k / 2
end

ans = first * k + second * count

puts ans % (10 ** 9 + 7)
