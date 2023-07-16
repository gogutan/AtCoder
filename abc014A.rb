a = gets.chomp.to_i
b = gets.chomp.to_i
mod = a % b
lack = mod == 0 ? 0 : b - mod
puts lack