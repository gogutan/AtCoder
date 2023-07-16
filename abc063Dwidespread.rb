INF = 10 ** 9
n, $a, $b = gets.split.map(&:to_i)
$gap = $a - $b
$monsters = []
n.times { $monsters << gets.to_i }

def all_killed?(count)
  must_center_count = 0
  $monsters.each do |monster|
    rest = monster - $b * count
    next if rest <= 0
    div, mod = rest.divmod($gap)
    must_center_count += div
    must_center_count += 1 if mod > 0
  end
  must_center_count <= count
end

# 範囲オブジェクトにも #bsearch がある
puts (1..INF).bsearch { |count| all_killed?(count) }
