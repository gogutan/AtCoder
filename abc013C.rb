n, h = gets.split.map(&:to_i)
a, b, c, d, e = gets.split.map(&:to_i)

# プラスに変換
neccesary = e * n - h + 1
b += e
d += e
ans = []
(0..n).each do |rich_count|
  rest = neccesary - b * rich_count
  cost = a * rich_count
  if rest <= 0
    ans << cost
    break
  end
  poor_count, mod = rest.divmod(d)
  poor_count += 1 if mod > 0
  cost += c * poor_count
  ans << cost if poor_count >= 0 && rich_count + poor_count <= n
end
puts ans.min


# n, h = gets.split.map(&:to_i)
# normal_ex, normal_up, cheap_ex, cheap_up, down = gets.split.map(&:to_i)

# min_cost = 10 ** 100
# n.times do |normal|
#   tentative_h = h
#   cost = 0
#   tentative_h += normal * normal_up
#   cost += normal * normal_ex
#   tentative_h += (n - normal) * cheap_up
#   cost += (n - normal) * cheap_ex
#   tentative_down = [(tentative_h - 1) / (down + cheap_up), (n - normal)].min
#   cost -= tentative_down * cheap_ex
#   min_cost = cost if min_cost > cost
# end
# puts min_cost
