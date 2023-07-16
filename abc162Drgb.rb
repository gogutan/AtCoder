$n = gets.to_i
colors = gets.chomp.split("")
color_array = Array.new(3) { Array.new }
colors.each.with_index(1) do |color, index|
  case color
  when "R"
    color_array[0] << index
  when "G"
    color_array[1] << index
  when "B"
    color_array[2] << index
  end
end

$ngs = Array.new($n + 1, 0)

def count_ngs(a, b)
  gap = b - a
  $ngs[((a + b) / 2)] += 1 if gap.even?
  $ngs[a - gap] += 1 if (a - gap) > 0
  $ngs[b + gap] += 1 if (b + gap) <= $n
end

color_array[0].each do |i1|
  color_array[1].each do |i2|
    if i1 > i2
      count_ngs(i2, i1)
    else
      count_ngs(i1, i2)
    end
  end
end

ans = color_array[0].size * color_array[1].size * color_array[2].size

color_array[2].each do |i|
  ans -= $ngs[i]
end

puts ans
