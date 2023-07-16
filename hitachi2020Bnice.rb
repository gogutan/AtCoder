a, b, m = gets.split.map(&:to_i)
refs = gets.split.map(&:to_i)
micros = gets.split.map(&:to_i)
coupons = []
m.times { coupons << gets.split.map(&:to_i) }
mins = [refs.min + micros.min]

coupons.each do |a, b, minus|
  mins << refs[a - 1] + micros[b - 1] - minus
end

puts mins.min
