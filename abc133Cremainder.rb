L, R = gets.chomp.split(" ").map(&:to_i)
numbers = []
tmp = 0
(L..R).each do |num|
  numbers << num % 2019
  tmp += 1
  if tmp >= 2019
    break
  end
end

mods = []
numbers.each do |num1|
  numbers.each do |num2|
    if num1 == num2
      next
    end
    mods << (num1 * num2) % 2019
  end
end

puts mods.min