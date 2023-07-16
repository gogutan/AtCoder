n = gets.chomp.to_i
k = gets.chomp.to_i
x = gets.chomp.to_i
y = gets.chomp.to_i

x_times = [n, k].min
y_times = [n - k, 0].max

sum = x * x_times + y * y_times

puts sum