n = gets.to_i
chars = gets.split('')
whites = chars.count('W')
reds = chars.count('R')
left_reds = chars[0, reds].count('R')
puts reds - left_reds
