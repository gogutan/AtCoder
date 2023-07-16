n, m = gets.split.map(&:to_i)
prices = gets.split.map(&:to_i).sort
vouchers = []
ls = gets.split.map(&:to_i)
ds = gets.split.map(&:to_i)
m.times do |i|
  vouchers << [ls[i], ds[i]]
end
vouchers.sort_by! { |l, d| [-d, -l] }
ans = 0
vouchers.each do |l, d|
  i = prices.bsearch_index { |price| price >= l }
  if i
    ans += (prices[i] - d)
    prices.delete_at(i)
  end
end
puts ans + prices.sum
