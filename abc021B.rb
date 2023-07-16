n = gets.to_i
a, b = gets.split.map(&:to_i)
k = gets.to_i
routes = gets.split.map(&:to_i)
routes.push(a, b)
puts routes.uniq == routes ? "YES" : "NO"
