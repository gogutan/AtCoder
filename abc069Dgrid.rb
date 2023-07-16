h, w = gets.split.map(&:to_i)
n = gets.to_i
nums = gets.split.map(&:to_i)
array = []
nums.each.with_index(1) { |num, i| num.times { array << i.to_s } }
sliced = array.each_slice(w).to_a
1.step(h - 1, 2) { |i| sliced[i].reverse! }
sliced.each { |row| puts row.join(" ") }
