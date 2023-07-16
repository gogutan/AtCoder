h = gets.to_i
w = gets.to_i
n = gets.to_i
longer = [h, w].max
puts (n.to_f / longer).ceil
