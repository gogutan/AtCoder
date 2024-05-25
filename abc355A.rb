suspects = [1, 2, 3] - gets.split.map(&:to_i)
puts suspects.size == 1 ? suspects[0] : -1
