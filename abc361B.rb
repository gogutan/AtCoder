def ranges_overlap?(range1, range2)
  range1.begin < range2.end && range2.begin < range1.end
end

a, b, c, d, e, f = gets.split.map(&:to_i)
g, h, i, j, k, l = gets.split.map(&:to_i)
# puts ranges_overlap?(a...d, g...j)
# puts ranges_overlap?(b...e, h...k)
# puts ranges_overlap?(c...f, i...l)
if ranges_overlap?(a...d, g...j) && ranges_overlap?(b...e, h...k) && ranges_overlap?(c...f, i...l)
  puts 'Yes'
else
  puts 'No'
end
