n, w = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

exist = false

(1..n).each do |i|
  # [1, 3, 5].combination(1) は [1], [3], [5] がselected_numsに渡る
  # [1, 3, 5].combination(2) は [1, 3], [1, 5], [3, 5] がselected_numsに渡る
  nums.each_cons(i) do |selected_nums|
    p selected_nums
    exist = true if selected_nums.sum == w
  end
end
puts exist
