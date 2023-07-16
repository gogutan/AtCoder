q, h, s, d = gets.split.map(&:to_i)
n = gets.to_i
min_per_2l = [q * 8, h * 4, s * 2, d].min
div, mod = n.divmod(2)
price = min_per_2l * div
queue = [[price, mod]]
ans = []
until queue.empty?
  price, rest = queue.shift
  if rest <= 0
    ans << price if rest == 0
    next
  end
  queue << [price + q, rest - 0.25]
  queue << [price + h, rest - 0.5]
  queue << [price + s, rest - 1]
  queue << [price + d, rest - 2]
end
puts ans.min
