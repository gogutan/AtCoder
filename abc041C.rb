n = gets.to_i
heights = gets.split.map.with_index(1) { |height, index| [height.to_i, index] }
heights.sort! { |a, b| b[0] <=> a[0] }
heights.each { |height| puts height[1] }
