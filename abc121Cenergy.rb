n, m = gets.chomp.split(" ").map(&:to_i)
a_ary = []
n.times do
  a_ary.push(gets.chomp.split(" ").map(&:to_i))
end
sorted_a_ary = a_ary.sort {|a,b| a[0] <=> b[0]}
drink_sum = 0
money_sum = 0
last_shop = 0
sorted_a_ary.each_with_index do |sorted_a, index|
  drink_sum += sorted_a[1]
  if drink_sum >= m
    last_shop = index
    break
  end
end
drink_sum = 0
if last_shop > 0
  sorted_a_ary[0..last_shop - 1].each_with_index do |sorted_a, index|
    drink_sum += sorted_a[1]
    money_sum += sorted_a[0] * sorted_a[1]
  end
end
money_sum += (m - drink_sum) * (sorted_a_ary[last_shop][0])
puts money_sum