a, b = gets.split(" ").map(&:to_i)

display = (a <= 8 && b <= 8) ? "Yay!" : ":("

puts display