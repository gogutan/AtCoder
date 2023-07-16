n, d, a = gets.split.map(&:to_i)
monsters = []
n.times { monsters << gets.split.map(&:to_i) }
monsters.sort! { |a, b| a[0] <=> b[0] }
positions = monsters.map { |m| m[0] }
neccesary_attacks = monsters.map { |m| (m[1].to_f / a).ceil }
imos = Array.new(n, 0)
count = 0
positions.each_with_index do |pos, index|
  imos[index] += imos[index - 1]
  tmp_count = [neccesary_attacks[index] - imos[index], 0].max
  count += tmp_count
  imos[index] += tmp_count
  unreachable_index = positions.bsearch_index { |p| p > pos + d * 2 }
  imos[unreachable_index] -= tmp_count if unreachable_index
end
puts count
