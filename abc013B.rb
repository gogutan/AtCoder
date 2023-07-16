a = gets.to_i
b = gets.to_i
option1 = (a - b).abs
option2 = 10 - option1
puts [option1, option2].min
