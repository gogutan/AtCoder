n = gets.to_i
cities = []
n.times { cities << gets.chomp.split.map.with_index { |e, index| index == 0 ? e : e.to_i } }
sum = cities.inject(0) { |sum, e| sum + e[1] }
selected_city = cities.find { |item| item[1] > sum / 2.0 }
if selected_city
  puts selected_city[0]
else
  puts "atcoder"
end
