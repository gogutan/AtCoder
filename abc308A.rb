nums = gets.split.map(&:to_i)
a = true

nums.each_cons(2) do |num1, num2|
  a = false if num1 > num2
end

b = true
b = false if nums.any? { |num| num < 100 || num > 675 }

c = true
c = false if nums.any? { |num| num % 25 != 0 }

if a && b && c
  puts "Yes"
else
  puts "No"
end
