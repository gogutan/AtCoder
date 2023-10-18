n, h, x = gets.split.map(&:to_i)
potions = gets.split.map(&:to_i)
ans = potions.find_index { |potion| potion + h >= x } + 1
puts ans
